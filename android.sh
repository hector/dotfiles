# This is needed for:
# 1. Expo + Android Studio: https://docs.expo.io/versions/v30.0.0/workflow/android-studio-emulator.html
# 2. React Native + Android Studio: https://facebook.github.io/react-native/docs/getting-started
if [ -d $HOME/Library/Android/sdk ]; then
	export ANDROID_HOME=$HOME/Library/Android/sdk
	export ANDROID_SDK=$HOME/Library/Android/sdk
	export PATH=$PATH:$ANDROID_HOME/emulator
	export PATH=$PATH:$ANDROID_HOME/tools
	export PATH=$PATH:$ANDROID_HOME/tools/bin
	export PATH=$PATH:$ANDROID_HOME/platform-tools
fi
