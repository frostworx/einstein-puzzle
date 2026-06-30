
emcc *.cpp -O2   -fexceptions   -s USE_SDL=2   -s USE_SDL_MIXER=2   -s USE_SDL_TTF=2   -s ASYNCIFY=1   -s ASYNCIFY_STACK_SIZE=65536   -s FORCE_FILESYSTEM=1   -lidbfs.js   -Wno-error=c++11-narrowing   --preload-file res   --preload-file einstein.res@/einstein.res   --preload-file einstein.cfg@/einstein.cfg   --shell-file shell.html   -o index.html
