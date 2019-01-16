#!/bin/bash
# Created by Yevgeniy Goncharov, https://sys-adm.in
# Install syntax highlight for nano editor
# If you want install highlighter globally, please use /usr/share/nano/ folder

# Envs
# ---------------------------------------------------\
PATH=$PATH:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
SCRIPT_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)

# Install synatx highlight
# ---------------------------------------------------\
cp -r $SCRIPT_PATH/.nano ~/
echo "include ~/.nano/syntax/ALL.nanorc" >> ~/.nanorc

# Install config highlight
# ---------------------------------------------------\
echo "include ~/.nano/config/conf.nanorc" >> ~/.nanorc