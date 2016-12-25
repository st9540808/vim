#!/bin/sh
#get fonts (consolas)
set -e
set -x
mkdir temp
cd temp
wget http://download.microsoft.com/download/E/6/7/E675FFFC-2A6D-4AB0-B3EB-27C9F8C8F696/PowerPointViewer.exe
cabextract -L -F ppviewer.cab PowerPointViewer.exe
cabextract ppviewer.cab
cd ..

#personal preference
cp .bashrc ~/
cp .vimrc ~/
cp -r .vim/ ~/

sudo apt-get install konsole
sudo apt-get install htop
sudo apt-get install software-center
sudo apt-get install imwheel
cp .imwheelrc ~/

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

#my projects
cd ~/Desktop
git clone https://github.com/st9540808/2016-Fall-Operating-Systems
git clone https://github.com/st9540808/Ten-Major-Construction-Projects
git clone https://github.com/st9540808/Data-Structures

sudo apt-get install astyle
cp .astylerc ~/

