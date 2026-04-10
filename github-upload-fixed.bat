@echo off
echo ========================================
echo Uploading Land Surveyor App to GitHub
echo ========================================
echo.

REM Delete old git if exists
if exist .git (
    echo Removing old git repository...
    rmdir .git /s /q
)

REM Create .gitignore
echo Creating .gitignore...
(
echo node_modules/
echo android/.gradle/
echo android/app/build/
echo android/build/
echo android/local.properties
echo android/captures/
echo .vscode/
echo .idea/
echo *.iml
echo .DS_Store
echo Thumbs.db
echo *.apk
echo *.aab
echo www/
echo capacitor-background-geolocation/
) > .gitignore

echo.
echo Initializing git...
git init

echo.
echo Adding files (excluding node_modules and build folders)...
git add .

echo.
echo Creating commit...
git commit -m "Initial commit: Land Surveyor Pro Android App"

echo.
echo Ask for GitHub details...
set /p username="Enter your GitHub username: "
set /p reponame="Enter repository name (default: LandSurveyor-App): "
if "%reponame%"=="" set reponame=LandSurveyor-App

echo.
echo Adding remote repository...
git remote add origin https://github.com/%username%/%reponame%.git

echo.
echo Pushing to GitHub...
git branch -M main
git push -u origin main

echo.
echo ========================================
echo Complete! Your app is on GitHub at:
echo https://github.com/%username%/%reponame%
echo ========================================
pause