echo run this with sudo
echo if running commands manually also need to add sudo before most of them

sudo apt-get install libxrandr-dev libxinerama-dev libxcursor-dev libfreeimage-dev libglew-dev libxi-dev

sudo apt-get install unzip

wget http://downloads.sourceforge.net/project/anttweakbar/AntTweakBar_116.z
ip?r=http%3A%2F%2Fanttweakbar.sourceforge.net%2Fdoc%2Ftools%3Aanttweakbar%3Adownload&ts=1455839125&use_mirror=ne
tassist

mv AntTweakBar_116.zip\?r\=http\:%2F%2Fanttweakbar.sourcefo
rge.net%2Fdoc%2Ftools\:anttweakbar\:download Ant.zip

unzip Ant.zip -d .

cd AntTweakBar/src

make

sudo cp ../include/* /usr/local/include
sudo cp ../lib/libAntTweakBar.* /usr/local/lib

cd ../../

echo install cmake
wget https://cmake.org/files/v3.4/cmake-3.4.3-Linux-x86_64.sh
sudo mkdir /opt/cmake
sudo sh cmake-3.4.3-Linux-x86_64.sh --prefix=/opt/cmake
sudo ln -s -f /opt/cmake/bin/cmake /usr/bin/cmake

echo now time for GLFW3
git clone --depth=1 --branch=master https://github.com/glfw/glfw.git glfw
rm -rf !$/.git

echo build glfw
cd glfw
mkdir build
cd build
cmake ..
make
sudo make install

sudo npm install node-gyp -g
npm install --save bindings nan
node-gyp rebuild

sudo apt-get install libxxf86vm-dev

npm install node-webgl