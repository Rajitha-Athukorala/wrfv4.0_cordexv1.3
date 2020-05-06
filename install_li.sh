cd /root/WRF-CORDEX
mkdir ./LIBRARIES

cp ./.bash_aliases ~/
source ~/.bash_aliases

cd ./
#mkdir ~/LIBRARIES
cp ./.bash_aliases ~/
apt install make
source ~/.bash_aliases

set -x #echo on
cd /root/WRF-CORDEX/LIBRARIES/
mkdir ncl-6.6.2
cd ncl-6.6.2
wget https://www.earthsystemgrid.org/dataset/ncl.662_2.nodap/file/ncl_ncarg-6.6.2-Debian9.8_64bit_nodap_gnu630.tar.gz

tar xzvf ncl_ncarg-6.6.2-Debian9.8_64bit_nodap_gnu630.tar.gz

cd /root/WRF-CORDEX/LIBRARIES/
mkdir Gfortran
cd /root/WRF-CORDEX/LIBRARIES/Gfortran
wget http://gfortran.meteodat.ch/download/x86_64/releases/gcc-6.3.0.tar.xz
tar xf gcc-6.3.0.tar.xz
sudo apt install libfontconfig1 libxrender1

sudo apt-get update
sudo apt-get install build-essential csh gfortran m4
apt install make
apt install g++

source ~/.bash_aliases

cd /root/WRF-CORDEX/LIBRARIES/

wget https://sourceforge.net/projects/libpng/files/libpng12/older-releases/1.2.50/libpng-1.2.50.tar.gz
wget https://www.mpich.org/static/tarballs/3.0.4/mpich-3.0.4.tar.gz
wget http://repository.timesys.com/buildsources/j/jasper/jasper-1.900.1/jasper-1.900.1.tar.gz
wget https://www.zlib.net/fossils/zlib-1.2.7.tar.gz
wget https://src.fedoraproject.org/lookaside/pkgs/netcdf/netcdf-4.1.3.tar.gz/46a40e1405df19d8cc6ddac16704b05f/netcdf-4.1.3.tar.gz

source ~/.bash_aliases

tar xzvf netcdf-4.1.3.tar.gz
tar xzvf mpich-3.0.4.tar.gz
tar xzvf zlib-1.2.7.tar.gz
tar xzvf libpng-1.2.50.tar.gz
tar xzvf jasper-1.900.1.tar.gz

cd /root/WRF-CORDEX/LIBRARIES/netcdf-4.1.3
./configure --prefix=$DIR/netcdf --disable-dap --disable-netcdf-4 --disable-shared
make
make install


cd /root/LIBRARIES/netcdf-4.1.3
./configure --prefix=$DIR/netcdf --disable-dap --disable-netcdf-4 --disable-shared
make
make install


cd /root/WRF-CORDEX/LIBRARIES/zlib-1.2.7
./configure --prefix=$DIR/grib2
make
make install

cd /root/WRF-CORDEX/LIBRARIES/libpng-1.2.50
./configure --prefix=$DIR/grib2
make
make install

cd /root/WRF-CORDEX/LIBRARIES/jasper-1.900.1
./configure --prefix=$DIR/grib2
make
make install


cd /root/WRF-CORDEX/LIBRARIES/mpich-3.0.4
./configure --prefix=$DIR/mpich
make
make install

source ~/.bash_aliases

sudo ln -sf /root/WRF-CORDEX/LIBRARIES/grib2/lib/libpng12.so.0 /usr/lib/x86_64-linux-gnu/libpng12.so.0
