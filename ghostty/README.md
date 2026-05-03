Ghostty
=============

```
cp config ~/.config/ghostty/

```

For Linux with systemd(CachyOS, Fedora), the systemd unit service 
app-com.mitchellh.ghostty.service
available and can set as following to make the ghostty start without a window popup(quick terminal window available with binded hotkey triggered)

```
systemctl --user enable app-com.mitchellh.ghostty.service
systemctl --user start app-com.mitchellh.ghostty.service

```
