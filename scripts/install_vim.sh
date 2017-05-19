#!/bin/sh

set -ex

basepath=$(cd `dirname $0`; pwd)

mkdir -p /home/work/

if [[ -f "/home/work/.vimrc" ]]; then
	mv /home/work/.vimrc /home/work/.vimrc_bak
fi
if [[ -d "/home/work/.vim" ]]; then
	mv /home/work/.vim /home/work/.vim_bak
fi

cp $basepath/../vim_env/.vimrc /home/work/
cp -r $basepath/../vim_env/.vim /home/work/
cd /home/work/.vim && tar zxvf conf.tar.gz
