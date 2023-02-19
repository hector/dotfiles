# Instructions from: brew install emscripten
#export LLVM=/opt/homebrew/opt/emscripten/libexec/llvm/bin

if [ -d $HOME/.my_installs/emsdk ]; then
	export PATH=$PATH:$HOME/.my_installs/emsdk
    export PATH=$PATH:$HOME/.my_installs/emsdk/upstream/emscripten
    export PATH=$PATH:$HOME/.my_installs/emsdk/node/12.9.1_64bit/bin
    source $HOME/.my_installs/emsdk/emsdk_env.sh --build=Release > /dev/null
fi
