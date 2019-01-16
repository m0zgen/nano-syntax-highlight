#!/bin/bash
# Created by Yevgeniy Goncharov, https://sys-adm.in
# Install syntax highlight for nano editor

# Envs
# ---------------------------------------------------\
PATH=$PATH:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
SCRIPT_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)

# Install config highlight
# ---------------------------------------------------\
cp $SCRIPT_PATH/conf.nanorc /usr/share/nano/
echo "include /usr/share/nano/conf.nanorc" >> ~/.nanorc

# Install synatx highlight
# ---------------------------------------------------\
cp -r $SCRIPT_PATH/.nano ~/
echo "include ~/.nano/syntax/ALL.nanorc" >> ~/.nanorc