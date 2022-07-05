copy %USERPROFILE%\\.vimrc vimrc 
xcopy %USERPROFILE%\\.vim /e /i /Y vim
xcopy %USERPROFILE%\\.config /e /i /Y config
git clean -X -f vim\\bundle
