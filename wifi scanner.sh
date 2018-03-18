
#!/bin/bash

# Code Color
blue='\e[1;34m'
normal='\e[0;23m'
purple='\e[1;35m'
cyan='\e[1;36m'
red='\e[1;31m'
coklat='\e[0;33m'
ijo='\e[0;32m'
putih='\e[97m'
itam='\e[0;30m'
kuning='\e[1;33m'

# CONSTANT
LINE="--------------------------------------------"
SSID=`iwgetid -r`
WHOAMI='whoami'
APP="Պḓṽк💎"
#CPUSensor=`inxi -s | grep Temperatures | awk '{print $5,$6,$9,$10}' | cut -f1 -d,`
#MYIP1=`nmcli | grep servers | awk '{print $2}'`
#MYIP2=`nmcli | grep servers | awk '{print $3}'`
INTERFACE=`ifconfig | grep wl | awk '{print $1}' | cut -f1 -d:`
####
MYMAC=`cat /sys/class/net/$INTERFACE/address`
MYFREQ=`iwgetid -f  | awk '{print $2}' | cut -f2 -d:`
MYCH=`iwgetid -c | awk '{print $2}' | cut -f2 -d:`
####
FINSTALL=`ls -lact --full-time /etc |tail | grep services | awk '{print $6 }'`
KERVER=`uname -r`
UPTIME1=$(uptime | awk '{print $1}' | cut -f1 -d,)
UPTIME2=$(uptime | awk '{print $3}' | cut -f1 -d,)
# CEKJAV=`java -version`

java -version

### START
# clear

tampilkan(){
	sleep 0.1 && echo -e $putih	""
	sleep 0.1 && echo -e $putih	$LINE
	sleep 0.1 && echo -e $putih	" (◣_◢)	Պḓṽк $cyan💎	$putih$VERSI	|  $red Hi `$WHOAMI` !"
	sleep 0.1 && echo -e $putih	$LINE
	sleep 0.1 && echo -e $putih	"Networking		➡" $red$INTERFACE "➡" $blue$SSID "➡" $kuning$MYMAC
	sleep 0.1 && echo -e $putih	"System Uptime 		➡" $red$UPTIME1 "➡" $kuning$UPTIME2 Menit "➡$blue"  `$WHOAMI` #❤ "$APP" 
	sleep 0.1 && echo -e $putih	"First Install		➡"$kuning $FINSTALL "$purple (💎)"
	sleep 0.1 && echo -e $putih	"Java Version		➡"$blue $CEKJAV "$coklat (💎)"
	sleep 0.1 && echo -e $putih	$LINE
	sleep 0.1 && echo -e $red	"What is Your Linux ?"
	sleep 0.5 && echo -e $putih	""
	sleep 0.1 && echo -e $putih	"1.) apt-base (debian/ubuntu)"
	sleep 0.1 && echo -e $putih	"2.) arch-base (arch linux)"
	sleep 0.1 && echo -e $putih	$LINE

} 
tampilkan
read -p  " Input Number ➡  " prompt 

if [[ $prompt == "y" || $prompt == "Y" || $prompt == "1" || $prompt == "Yes" ]]
	then
		sudo apt install arp-scan openjdk-8-jdk openjdk-8-jre aircrack-ng
		git clone https://github.com/farrasrayhand/WIFI.git
		cd WIFI
		java -jar MDVK1.jar

		sleep 0.1 && echo -e $putih	$LINE
		sleep 0.1 && echo -e $putih	" Do you Wanna to run arp-scan?"
		sleep 0.1 && echo -e $putih	
		read -p  " Input Number ➡  " prompt2
		if [[ $prompt == "y" || $prompt == "Y" || $prompt == "1" || $prompt == "Yes" ]]
		then
			sudo arp-scan -l
		else
			sleep 0.1 && echo -e $putih	"ADITYA "
		fi
		break;
		

	else
		#sudo pacman -S arp-scan openjdk-8-jdk openjdk-8-jre aircrack-ng
		git clone https://github.com/farrasrayhand/WIFI.git
		cd WIFI
		

		sleep 0.1 && echo -e $putih	$LINE
		sleep 0.1 && echo -e $putih	" NEXT ➡ scanning mac   "
		sleep 0.1 && echo -e $putih " To scan mac , connect to $cyan @wifi.id $putih is require ."
		sleep 0.1 && echo -e $putih " "
		sleep 0.1 && echo -e $putih " ➡ open new terminal , and type "
		sleep 0.1 && echo -e $cyan	" sudo arp-scan -l "
		sleep 0.1 && echo -e $putih	
		

		# exec
		java -jar MDVK1.jar	
		break;
fi
