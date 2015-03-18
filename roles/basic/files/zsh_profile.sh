# http://stackoverflow.com/questions/7165108/in-osx-lion-lang-is-not-set-to-utf8-how-fix
# prefer utf-8 as locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR=vim

# some convenient alias
alias pyhttp="python -m SimpleHTTPServer"

# ruby bundler
if [[ -f $(which bundle) ]]; then
    alias b="bundle "
    alias be="bundle exec "
fi

# $ brew cask install mactex
# ==> Caveats
# To use mactex, zsh users may need to add the following line to their
# ~/.zprofile.  (Among other effects, /usr/texbin will be added to the
# PATH environment variable):

#   eval `/usr/libexec/path_helper -s`
if [[ -f /usr/libexec/path_helper ]]; then
    eval `/usr/libexec/path_helper -s`
fi
