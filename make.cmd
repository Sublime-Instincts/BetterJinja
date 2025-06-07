@echo off
setlocal
chcp 65001 >nul
pushd %~dp0

if /i "%1" == "release" goto RELEASE
goto :usage

:RELEASE
    if "%2"== "" goto :usage
    set version=%2

    for %%d in ("%~dp0.") do set package=%%~nxd

    echo Creating assets for "%package%"...

    :: create tag and download asset for ST4152+
    set build=4152
    set branch=st%build%
    set tag=%build%-%version%
    set archive=%package%-%version%-st%build%.sublime-package
    set assets="%archive%#%archive%"
    call git push origin %branch%
    call git tag -f %tag% %branch%
    call git push --force origin %tag%
    call git archive --format zip -o "%archive%" %branch%

    :: create tag and download asset for ST4200+ (master branch)
    set build=4200
    set branch=master
    set tag=%build%-%version%
    set archive=%package%-%version%-st%build%.sublime-package
    set assets=%assets% "%archive%#%archive%"
    call git push origin %branch%
    call git archive --format zip -o "%archive%" %branch%

    :: create the release
    gh release create --target %branch% -t "Release %version%" "%tag%" %assets%
    del /f /q *.sublime-package
    git fetch
    goto :eof

:USAGE
    echo USAGE:
    echo.
    echo   all ^[release^]
    echo   prefs ^[release^]
    echo   make ^[release^]
    echo.
    echo   release ^<semver^> -- create and publish a release (e.g. 1.2.3)
    goto :eof
