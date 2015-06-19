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
