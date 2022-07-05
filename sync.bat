copy %USERPROFILE%\\.vimrc vimrc 
xcopy %USERPROFILE%\\.vim /e /i /Y vim
git clean -X -f vim\\bundle
