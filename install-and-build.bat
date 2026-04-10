@echo off
echo Installing Capacitor Plugins for Land Surveyor App...

REM Install all required plugins
call npm install @capacitor/geolocation
call npm install @capacitor/filesystem
call npm install @capacitor/preferences
call npm install @capacitor/share
call npm install @capacitor/device
call npm install @capacitor/app
call npm install @capacitor/haptics

REM Sync plugins to Android project
call npx cap sync

echo.
echo ========================================
echo All plugins installed successfully!
echo ========================================
echo.
echo Next steps:
echo 1. Update your app code to use Capacitor plugins
echo 2. Run: npx cap copy
echo 3. Run: npx cap open android
echo 4. Build APK in Android Studio
echo.
pause