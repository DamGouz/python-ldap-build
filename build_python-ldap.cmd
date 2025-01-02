:: Download python-ldap
@echo on
setlocal

:: set PYTHONLDAP_VER=main

curl -L -o %PYTHONLDAP_VER%.tar.gz https://codeload.github.com/python-ldap/python-ldap/tar.gz/refs/heads/%PYTHONLDAP_VER%
if errorlevel 1 exit /B 1

tar -xf %PYTHONLDAP_VER%.tar.gz --strip-components=1
if errorlevel 1 exit /B 1

git apply python-ldap.diff
if errorlevel 1 exit /B 1

endlocal
