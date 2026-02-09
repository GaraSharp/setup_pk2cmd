echo "*** get files ! "
wget http://ww1.microchip.com/downloads/en/DeviceDoc/PICkit2_PK2CMD_WIN32_SourceV1-21_RC1.zip
#wget https://web.archive.org/web/20201128020840/http://www.microchip.com/forums/download.axd?file=0;749972
wget -O pk2_devicefile_osfile_paths.patch https://aur.archlinux.org/cgit/aur.git/plain/pk2_devicefile_osfile_paths.patch?h=pk2cmd-plus
wget -O 60-pickit2.rules https://aur.archlinux.org/cgit/aur.git/plain/60-pickit2.rules?h=pk2cmd-plus

echo "*** unzipping "
unzip PICkit2_PK2CMD_WIN32_SourceV1-21_RC1.zip 
unzip PK2DeviceFile.zip 

echo "*** make for linux"
cp pk2_devicefile_osfile_paths.patch ./pk2cmd/pk2cmd
cd ./pk2cmd/pk2cmd
patch < pk2_devicefile_osfile_paths.patch 
make linux
cd ../../

echo "*** now, set up pk2cmd ! "
echo "sudo mkdir -p /usr/share/pk2/"
echo "sudo cp PK2DeviceFile.dat /usr/share/pk2/"
echo "sudo cp pk2cmd/pk2cmd/pk2cmd /usr/local/bin/"
echo "sudo cp 60-pickit2.rules /etc/udev/rules.d/"

echo "*** FINISH : reboot system ***"

