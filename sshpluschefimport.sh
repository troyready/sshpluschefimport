#!/bin/bash
cat $HOME/.sshplus_static > $HOME/.sshplus
echo "# List below is automatically generated from Chef by sshpluschefimport" >> $HOME/.sshplus
echo "folder: Chef Linux Systems" >> $HOME/.sshplus
echo " " >> $HOME/.sshplus
knife search node "os:linux" -i | grep -v -e "items found" -e "^$" | sort | while read servername; do echo "$servername|gnome-terminal|-x ssh $servername" >> $HOME/.sshplus; done
echo " " >> $HOME/.sshplus
echo "folder: " >> $HOME/.sshplus
echo "sep" >> $HOME/.sshplus

