#!/usr/bin/env bash
# Tests for `git stack sync`'s in-memory (checkout-free) branch replay.
#
# Builds a scratch repo, links commits to branches, runs sync, and asserts:
#   - linked branches are rebuilt from upstream without moving HEAD or the
#     working tree (no checkout / no stash side effects),
#   - a commit that can't be replayed cleanly leaves its branch untouched and
#     makes sync exit non-zero.
set -u

GIT_STACK="$(cd "$(dirname "$0")/.." && pwd)/bin/git-stack"
fail=0
check() { # check <description> <condition-exit-status>
  if [ "$2" -eq 0 ]; then echo "ok   - $1"; else echo "FAIL - $1"; fail=1; fi
}

run_sync() { printf 'Y\n' | "$GIT_STACK" sync; }  # answers the Y/N prompt

setup_repo() {
  T="$(mktemp -d)"; cd "$T"
  git init -q
  git config user.email t@test; git config user.name test
  git config commit.gpgsign false
  echo base > base.txt; git add base.txt; git commit -qm base
  git branch -m master
  git checkout -qb work --track master   # @{u}=master, the upstream sync rebases onto
}

# --- clean replay --------------------------------------------------------
setup_repo
echo a1 > a.txt; git add a.txt; git commit -qm c1   # c1
echo a2 >> a.txt; git commit -qam c2                 # c2 (depends on c1)
echo b1 > b.txt; git add b.txt; git commit -qm c3    # c3 (independent)
C1=$(git rev-parse HEAD~2); C2=$(git rev-parse HEAD~1); C3=$(git rev-parse HEAD)

"$GIT_STACK" link feature-a "$C1" "$C2" >/dev/null
"$GIT_STACK" link feature-b "$C3" >/dev/null

HEAD_BEFORE=$(git rev-parse HEAD)
run_sync >/dev/null 2>&1; sync_status=$?
check "clean sync exits 0" "$sync_status"

[ "$(git rev-parse HEAD)" = "$HEAD_BEFORE" ]; check "HEAD did not move" $?
[ -z "$(git status --porcelain)" ]; check "working tree untouched" $?
[ "$(git stash list)" = "" ]; check "no stash left behind" $?

# feature-a = master + c1 + c2 (2 commits ahead), files present.
[ "$(git rev-list --count master..feature-a)" = "2" ]; check "feature-a has 2 commits" $?
git cat-file -e feature-a:a.txt 2>/dev/null; check "feature-a contains a.txt" $?
[ "$(git show feature-a:a.txt)" = "$(printf 'a1\na2')" ]; check "feature-a has both edits" $?
# feature-b = master + c3.
[ "$(git rev-list --count master..feature-b)" = "1" ]; check "feature-b has 1 commit" $?
git cat-file -e feature-b:b.txt 2>/dev/null; check "feature-b contains b.txt" $?
# author preserved, committer is the replayer (same here, but commit is fresh).
[ "$(git log -1 --format=%an feature-a)" = "test" ]; check "author preserved" $?
cd /; rm -rf "$T"

# --- conflict path -------------------------------------------------------
# Link ONLY c2 (which depends on c1) to feature-c. Replaying c2 onto bare
# master is a modify/delete conflict on a.txt, so the branch must be skipped.
setup_repo
echo a1 > a.txt; git add a.txt; git commit -qm c1
echo a2 >> a.txt; git commit -qam c2
C2=$(git rev-parse HEAD)
"$GIT_STACK" link feature-c "$C2" >/dev/null

run_sync >out.txt 2>err.txt; sync_status=$?
[ "$sync_status" -ne 0 ]; check "conflicting sync exits non-zero" $?
git rev-parse --verify -q feature-c >/dev/null 2>&1; created=$?
[ "$created" -ne 0 ]; check "skipped branch was not created" $?
grep -q feature-c err.txt; check "conflict reported for feature-c" $?
cd /; rm -rf "$T"

echo
if [ "$fail" -eq 0 ]; then echo "All tests passed."; else echo "Some tests FAILED."; fi
exit "$fail"
