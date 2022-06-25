#!/bin/bash
# SCRIPT BY 'endercoder'

servername='7phish3r'

check(){
cd .clone/skripts
if [ -d yes_script ];then
	echo # Already installed!
else
cd $HOME/7phish3r/.clone/skripts/
mkdir no_script > /dev/null 2>&1
fi
}

banner(){
printf "


 +-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+-+-+-+
 |B|a|s|i|c| |i|n|s|t|a|l|l|a|t|i|o|n|
 +-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+-+-+-+
  Script by endercoder シ

"
}

GET_SCRIPTS(){
apt update
apt install wget
apt install tar
if [ -d .skripts ];then
	echo # Already installed!
else
	mkdir .skripts
fi

if [ -d .clone ];then
	echo # Already installed!
else
	mkdir .clone
fi

if [ -d .clone/skripts ];then
	echo # Already installed!
else
	mkdir .clone/skripts
fi

check
cd $HOME/7phish3r/
check_dir=`find .clone/skripts/*_script`
clone=`basename $check_dir`
if [[ $clone == *'no_script'* || $clone == *''* ]];then
	echo " Yazılım kurulu değil!"
	echo " 5 sn içerisinde kurulum başlıyor!"
	sleep 5
	cd .skripts/
        now_download https://github.com/7cod3r/documents/raw/main/docs.tar
	tar -xvf docs.tar
	cd $HOME/7phish3r/
	rm -rf setup.sh
        chmod ug=rwx,o=rx 7phish3r
	./$servername
elif [[ $clone == *'yes_script'* ]];then
        continue_program
else
	echo Please Restart
fi

}

continue_program(){
	rm -rf setup.sh
        chmod ug=rwx,o=rx 7phish3r
	./$servername
}

now_download(){
	url=$1
	wget $url
}

banner
GET_SCRIPTS
