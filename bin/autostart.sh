#!/bin/bash
#flatpak run io.dbeaver.DBeaverCommunity &
skypeforlinux &
flatpak run org.telegram.desktop &
flatpak run com.slack.Slack &
evolution &
google-chrome &
remmina &
/home/darz/dev/ide/idea/bin/idea.sh &
sleep 5
wmctrl -x -r "Evolution" -t 1
wmctrl -x -r "Skype" -t 2
wmctrl -x -r "TelegramDesktop" -t 3
wmctrl -x -r "Slack" -t 3
wmctrl -x -r "org.remmina.Remmina" -t 4
wmctrl -x -r "jetbrains-idea" -t 5
#wmctrl -x -r "DBeaver" -t 5
wmctrl -x -r "Google-chrome" -t 0
