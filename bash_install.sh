echo "Installing MkOsh About Page..."
cd ~/Downloads
git clone "https://github.com/arghyagod-coder/MkAbout"
cd MkAbout
echo "Adding MkOsh About to PATH..."

mkdir -p ~/.mko

chmod u+x ./dist/main

cp -r ./dist/* ~/.mko/

mv ~/.mko/main ~/.mko/mko
echo "export PATH=$PATH:~/.mko" >> ~/.bashrc
cd ~/Desktop
echo "
[Desktop Entry]
Name=About This Mac
Exec=bash -c 'mko' 
Comment=System Information about MkOsh
Terminal=false
Icon=~/.mko/icon.png
Type=Application" > About_This_Mac.desktop
cp About_This_Mac.desktop ~/.local/share/applications/
echo "installation is completed!"
echo "installation is completed!"