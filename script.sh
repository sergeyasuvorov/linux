ln -s $HOME/linux/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/linux/dotfiles/config/i3 $HOME/.config/i3
ln -s $HOME/linux/dotfiles/config/alacritty $HOME/.config/alacritty
ln -s $HOME/linux/dotfiles/config/dunst $HOME/.config/dunst
ln -s $HOME/linux/bin $HOME/.bin

chmod +x $HOME/.bin/lock_blur.sh
chmod +x $HOME/.bin/disable_startup_urgency.sh
chmod +x $HOME/.bin/dunst-urgent-notification.sh

