alias ls='ls -G'
alias mp='mpv'
alias youtube-dl='youtube-dl -l'
alias py="ipython"
alias getdate='date -j +%y_%m_%d'
alias getdatetime='date -j +%y_%m_%d_%H_%M_%S'
alias vi=vim

source ~/.git-completion.bash


export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig:/usr/lib/pkgconfig:/usr/X11/lib/pkgconfig"
export LIBTOOLIZE=glibtoolize
export LIBTOOL=glibtool
eval home=~
export PATH="/usr/local/bin:$PATH:$home/bin"

### Add path for Homebrew's /usr/local/sbin
export PATH="$PATH:/usr/local/sbin"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### To use hombrew installed mono
export MONO_GAC_PREFIX="/usr/local"

### Docker host address
export DOCKER_HOST=tcp://10.40.42.42:4243
