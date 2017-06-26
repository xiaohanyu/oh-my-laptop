# http://stackoverflow.com/questions/7165108/in-osx-lion-lang-is-not-set-to-utf8-how-fix
# prefer utf-8 as locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR=vim

# some convenient alias
alias pyhttp="python -m SimpleHTTPServer"

# ruby bundler
alias b="bundle "
alias be="bundle exec "

if [ -f $HOME/.pyenv-init.sh ]; then
    source $HOME/.pyenv-init.sh
fi

if [ -f $HOME/.rbenv-init.sh ]; then
    source $HOME/.rbenv-init.sh
fi

if [ -f $HOME/.nodenv-init.sh ]; then
    source $HOME/.nodenv-init.sh
fi

if [ -f $HOME/.autojump-init.sh ]; then
    source $HOME/.autojump-init.sh
fi
