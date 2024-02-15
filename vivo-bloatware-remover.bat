@echo off
adb kill-server
adb start-server
cls

:menu
echo Choose an option:
echo.
echo 1 - Remove Android OS Common Bloatware
echo 2 - Remove BBK Bloatware
echo 3 - Remove Google Pre-installed Apps
echo 4 - Remove Vivo Pre-installed Apps
echo.
echo 5 - Remove Jovi Home
echo 6 - Remove Global Search
echo 7 - Remove Account
echo 8 - Remove Launchers
echo 9 - Remove Live Wallpapers
echo 10 - Remove System Update
echo.
echo 11 - Remove Facebook Apps Service
echo.
echo 0 - Exit
echo.
set /p option=Select your option: 
if %option%==1 goto remove_android_os_common_bloatware
if %option%==2 goto remove_bbk_bloatware
if %option%==3 goto remove_google_pre_installed_apps
if %option%==4 goto remove_vivo_pre_installed_apps
if %option%==5 goto remove_jovi_home
if %option%==6 goto remove_global_search
if %option%==7 goto remove_account
if %option%==8 goto remove_launchers
if %option%==9 goto remove_live_wallpapers
if %option%==10 goto remove_system_update
if %option%==11 goto remove_facebook_apps_service
if %option%==0 goto cmd_exit
echo.
echo Error: Please select the correct option
echo.
pause
cls
goto menu

:remove_android_os_common_bloatware
echo.
adb shell pm uninstall --user 0 com.android.browser
@REM adb shell pm uninstall --user 0 com.android.notes
adb shell pm uninstall --user 0 com.android.chrome
@REM adb shell pm uninstall --user 0 com.android.BBKClock
@REM adb shell pm uninstall --user 0 com.android.bbkcalculator
@REM adb shell pm uninstall --user 0 com.android.camera
@REM adb shell pm uninstall --user 0 com.android.contacts
@REM adb shell pm uninstall --user 0 com.android.bbkmusic
@REM adb shell pm uninstall --user 0 com.android.settings
@REM adb shell pm uninstall --user 0 com.android.filemanager
@REM adb shell pm uninstall --user 0 com.android.bbksoundrecorder
@REM adb shell pm uninstall --user 0 com.android.mms
@REM adb shell pm uninstall --user 0 com.android.mms.service
@REM adb shell pm uninstall --user 0 com.android.vending
@REM adb shell pm uninstall --user 0 com.android.dialer
@REM adb shell pm uninstall --user 0 com.android.VideoPlayer
echo.
echo Done.
echo.
pause
cls
goto :menu
exit

:remove_bbk_bloatware
echo.
@REM adb shell pm uninstall --user 0 com.bbk.calendar
adb shell pm uninstall --user 0 com.bbk.theme
adb shell pm uninstall --user 0 com.bbk.theme.resources
adb shell pm uninstall --user 0 com.bbk.cloud
adb shell pm uninstall --user 0 com.bbk.iqoo.logsystem
echo.
echo Done.
echo.
pause
cls
goto :menu
exit

:remove_google_pre_installed_apps
echo.
adb shell pm uninstall --user 0 com.google.android.apps.maps
adb shell pm uninstall --user 0 com.google.android.apps.magazines
adb shell pm uninstall --user 0 com.google.android.apps.docs
adb shell pm uninstall --user 0 com.google.android.apps.tachyon
adb shell pm uninstall --user 0 com.google.android.apps.photos
adb shell pm uninstall --user 0 com.google.android.apps.wellbeing
@REM adb shell pm uninstall --user 0 com.google.android.gm
adb shell pm uninstall --user 0 com.google.android.googlequicksearchbox
adb shell pm uninstall --user 0 com.google.android.youtube
adb shell pm uninstall --user 0 com.google.android.videos
adb shell pm uninstall --user 0 com.google.android.music
echo.
echo Done.
echo.
pause
cls
goto :menu
exit

:remove_vivo_pre_installed_apps
echo.
@REM adb shell pm uninstall --user 0 com.vivo.gallery
adb shell pm uninstall --user 0 com.vivo.browser
adb shell pm uninstall --user 0 com.vivo.weather
adb shell pm uninstall --user 0 com.vivo.weather.provider
adb shell pm uninstall --user 0 com.vivo.easyshare
adb shell pm uninstall --user 0 com.vivo.email
adb shell pm uninstall --user 0 com.vivo.game
@REM adb shell pm uninstall --user 0 com.vivo.compass
adb shell pm uninstall --user 0 com.vivo.FMRadio
adb shell pm uninstall --user 0 com.vivo.Tips
adb shell pm uninstall --user 0 com.vivo.appstore
adb shell pm uninstall --user 0 com.vivo.website
adb shell pm uninstall --user 0 com.vivo.childrenmode
echo.
echo Done.
echo.
pause
cls
goto :menu
exit

:remove_jovi_home
echo.
adb shell pm uninstall --user 0 com.vivo.hiboard
adb shell pm uninstall --user 0 com.vivo.assistant
echo.
echo Done.
echo.
pause
cls
goto :menu
exit

:remove_global_search
echo.
adb shell pm uninstall --user 0 com.vivo.globalsearch
echo.
echo Done.
echo.
pause
cls
goto :menu
exit

:remove_account
echo.
adb shell pm uninstall --user 0 com.bbk.account
echo.
echo Done.
echo.
pause
cls
goto :menu
exit

:remove_launchers
echo.
adb shell pm uninstall --user 0 com.bbk.launcher2
adb shell pm uninstall --user 0 com.bbk.scene.indoor
echo.
echo Done.
echo.
pause
cls
goto :menu
exit

:remove_live_wallpapers
echo.
adb shell pm uninstall --user 0 com.vivo.livewallpaper.coffeetime
adb shell pm uninstall --user 0 com.vivo.livewallpaper.floatingcloud
adb shell pm uninstall --user 0 com.vivo.livewallpaper.silk
adb shell pm uninstall --user 0 com.vivo.livewallpaper.coralsea
echo.
echo Done.
echo.
pause
cls
goto :menu
exit

:remove_system_update
echo.
adb shell pm uninstall --user 0 com.bbk.updater
echo.
echo Done.
echo.
pause
cls
goto :menu
exit

:remove_facebook_apps_service
echo.
adb shell pm uninstall --user 0 com.facebook.services
adb shell pm uninstall --user 0 com.facebook.system
adb shell pm uninstall --user 0 com.facebook.appmanager
echo.
echo Done.
echo.
pause
cls
goto :menu
exit

:cmd_exit
exit
