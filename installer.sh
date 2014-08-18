#!/bin/bash
#
# The installer file
#
# (c) AJ Salkeld 2014
#

echo "Do you have a Bukkit install already? (y/n)"
read bukkitinstallyn

if test $bukkitinstallyn == "y" || test $bukkitinstallyn == "Y" 
then
  echo "Where is the start.sh/launch.sh for your Bukkit install?"
  read bukkitDir
  echo "Setting up..."
  sed -i "12i bukkitDir=$bukkitDir" bkstart.sh
fi
if test $bukkitinstallyn == "n" || test $bukkitinstallyn == "N" 
then
  echo "Where would you like Bukkit to be installed?"
  read bukkitInstallDir
  echo "Installing latest recommended build..."
  mkdir $bukkitInstallDir
  wget -P $bukkitInstallDir https://dl.bukkit.org/latest-rb/craftbukkit.jar
  echo "#!/bin/bash" >> $bukkitInstallDir/start.sh
  echo "java -Xmx2048M -Xms1024M -jar craftbukkit.jar nogui" >> $bukkitInstallDir/start.sh
  bukkitDir=$bukkitInstallDir/start.sh
  echo "Bukkit done, start it afterwards with mcstart to let it set itself up."
  echo "Server will be all at defaults. For help, look on the FAQs or Google it!"
  echo "Setting up commands..."
  sed -i "12i bukkitDir=$bukkitDir" bkstart
fi

mv bkstart /usr/bin
mv bkstop /usr/bin
mv bkview /usr/bin

echo "All done! Start the Bukkit server with bkstart, stop it with bkstop and view the Bukkit shell with bkview. Have fun!"

exit