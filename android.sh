# Android SDK
export ANDROID_HOME=/usr/local/opt/android-sdk

# Expo + Android Studio
# https://docs.expo.io/versions/v30.0.0/workflow/android-studio-emulator.html
if [ -d ~/Library/Android/sdk ]; then
	export ANDROID_SDK=~/Library/Android/sdk
	export PATH=~/Library/Android/sdk/platform-tools:$PATH
fi
