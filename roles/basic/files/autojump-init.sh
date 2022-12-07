# macOS

# for m1/m2 arm based mac
if [ -f /opt/homebrew/etc/profile.d/autojump.sh ]; then
    . /opt/homebrew/etc/profile.d/autojump.sh
fi

# for intel based mac
if [ -f /usr/local/etc/profile.d/autojump.sh ]; then
    . /usr/local/etc/profile.d/autojump.sh
fi