echo Updating and upgrading your System..
sleep 1
apt-get update
sleep 2
echo Installing desktop #(xrdp)
sleep 3
apt-get install xorg xrdp lxde -y
sleep 1
apt-get install zip -y
apt install unzip -y
apt-get install nano -y
sleep 5
sudo apt-get remove xrdp vnc4server tightvncserver -y
sudo apt-get install tightvncserver -y
apt-get install xrdp=0.6.1-2 -y
sleep 2

echo Removing Screensaver
apt-get remove xscreensaver -y

sleep 1
sudo apt install openjdk-8-jdk -y

sleep 1
apt-get install firefox -y
sleep 1

sleep 1
echo install chrome
sleep 1
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update -y
sudo apt-get install google-chrome-stable -y
sleep 1
sudo apt-get install flashplugin-installer -y
sleep 1
wget https://github.com/mazbron/x/raw/master/install_flash_player_11_linux.x86_64.tar.gz
tar -xvf install_flash_player_11_linux.x86_64.tar.gz
sudo cp libflashplayer.so /usr/lib/mozilla/plugins
sleep 2
cd /home
wget 82.163.73.24/profile-chrome.zip
#rm -rf Default
#unzip profile-chrome.zip
sleep 2
wget https://github.com/mazbron/x/raw/master/chrome.tar.gz
tar -xvf chrome.tar.gz
cd
mkdir Desktop
cd Desktop
wget https://raw.githubusercontent.com/mazbron/x/master/chr.sh
chmod +x chr.sh
wget https://github.com/mazbron/x/raw/master/SARAH2.sh
chmod +x SARAH2.sh

wget https://github.com/mazbron/x/raw/master/HW.sh
chmod +x HW.sh
wget https://github.com/mazbron/x/raw/master/CrossClicker.zip
unzip CrossClicker.zip
chmod +x CrossClicker.jar
echo ==================FAMOBI=============
sudo apt-get install actiona -y
wget https://github.com/mazbron/x/raw/master/fmb/PLAY.ascr
chmod +x PLAY.ascr
wget https://github.com/mazbron/x/raw/master/fmb/SARAH-ACTIONA.sh
chmod +x SARAH-ACTIONA.sh
cd /home/chrome
rm -rf Default
wget https://github.com/mazbron/x/raw/master/fmb/fmb-profile.tar.gz
tar -xvf fmb-profile.tar.gz

apt-get install proxychains -y
#sleep 1
#apt-get install sl -y
#sleep 1
#sl -l
cd /etc
#mv hosts hosts.bak
mv proxychains.conf proxychains.conf.bak
wget https://github.com/mazbron/x/raw/master/proxychains.conf
#wget https://github.com/mazbron/x/raw/master/hosts
echo "root:gl0d4kgl0d4k" | sudo chpasswd
sudo service xrdp restart
nano /etc/hosts

sleep 2
echo You have successfully Installed LXDE Desktop Environment.. Enjoy..!!
echo Ceeeers... MAZBRON.com _ BESTSEOTOOL.co
echo updated Famobi - 17-07-2019
