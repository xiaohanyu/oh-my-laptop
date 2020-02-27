# http://stackoverflow.com/questions/7165108/in-osx-lion-lang-is-not-set-to-utf8-how-fix
# prefer utf-8 as locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# some homebrew package (like mtr) need to add `/usr/local/sbin` to `$PATH`
export PATH=$PATH:/usr/local/sbin

export EDITOR=vim

# some convenient alias
alias pyhttp="python -m SimpleHTTPServer"

if [ -f $HOME/.oh-my-laptop/go-init.sh ]; then
    source $HOME/.oh-my-laptop/go-init.sh
fi

if [ -f $HOME/.oh-my-laptop/pyenv-init.sh ]; then
    source $HOME/.oh-my-laptop/pyenv-init.sh
fi

if [ -f $HOME/.oh-my-laptop/rbenv-init.sh ]; then
    source $HOME/.oh-my-laptop/rbenv-init.sh
fi

if [ -f $HOME/.oh-my-laptop/nodenv-init.sh ]; then
    source $HOME/.oh-my-laptop/nodenv-init.sh
fi

if [ -f $HOME/.oh-my-laptop/autojump-init.sh ]; then
    source $HOME/.oh-my-laptop/autojump-init.sh
fi

if [ -f $HOME/.oh-my-laptop/docker-init.sh ]; then
    source $HOME/.oh-my-laptop/docker-init.sh
fi

if [ -f $HOME/.oh-my-laptop/jenv-init.sh ]; then
    source $HOME/.oh-my-laptop/jenv-init.sh
fi
