ln -s $HOME/linux/dotfiles/config/alacritty $HOME/.config/alacritty
ln -s $HOME/linux/dotfiles/config/dunst $HOME/.config/dunst
ln -s $HOME/linux/dotfiles/config/rofi $HOME/.config/rofi
ln -s $HOME/linux/dotfiles/config/i3 $HOME/.config/i3
ln -s $HOME/linux/dotfiles/.zprofile $HOME/.zprofile
ln -s $HOME/linux/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/linux/dotfiles/config/environment.d $HOME/.config/environment.d
ln -s $HOME/linux/emacs/.emacs $HOME/.emacs
ln -s $HOME/linux/emacs/.emacs.d $HOME/.config/.emacs.d
ln -s $HOME/linux/dotfiles/.mbsyncrc $HOME/.mbsyncrc
ln -s $HOME/linux/dotfiles/.msmtprc $HOME/.msmtprc
ln -s $HOME/linux/dotfiles/config/neomutt $HOME/.config/neomutt
ln -s $HOME/linux/dotfiles/config/khard $HOME/.config/khard
ln -s $HOME/linux/dotfiles/config/calcurse/ $HOME/.config/calcurse
ln -s $HOME/linux/dotfiles/config/deluge/ $HOME/.config/deluge
ln -s $HOME/linux/dotfiles/.notmuch-config $HOME/.notmuch-config
ln -s $HOME/linux/bin $HOME/.bin

ln -s $HOME/linux/dotfiles/config/systemd/user/mbsync.service $HOME/.config/systemd/user/mbsync.service
ln -s $HOME/linux/dotfiles/config/systemd/user/mbsync.timer $HOME/.config/systemd/user/mbsync.timer
ln -s $HOME/linux/dotfiles/config/systemd/user/deluged.service $HOME/.config/systemd/user/deluged.service

chmod +x $HOME/.bin/lock_blur.sh
chmod +x $HOME/.bin/disable_startup_urgency.sh
chmod +x $HOME/.bin/dunst-urgent-notification.sh

mkdir ~/contacts
mkdir ~/contacts/firstline
mkdir ~/contacts/common
mkdir ~/mail
mkdir ~/mail/gmail
mkdir ~/mail/yandex
mkdir ~/mail/firstline
mkdir ~/mail/odysseus

#gpg --full-gen-key

# After command execution type password, enter, ctrl-d
# Check with gpg -d ~/.mutt/msmtp-gmail.gpg 
#gpg --encrypt -o ~/.mutt/msmtp-gmail.gpg -r sergeytn81@gmail.com
#gpg --encrypt -o ~/.mutt/msmtp-yandex.gpg -r sergeytn81@gmail.com
#gpg --encrypt -o ~/.mutt/msmtp-firstline.gpg -r sergeytn81@gmailcom
#gpg --encrypt -o ~/.mutt/msmtp-odysseus.gpg -r sergeytn81@gmail.com

# THIS MUST BE AT THE END
systemctl --user enable mbsync.timer
systemctl --user start mbsync.timer
systemctl enable --now atd                                                                              
systemctl --user enable deluged
systemctl --user start deluged
