#!/bin/bash

#sudo apt-get install libusb-1.0-0-dev libftdi-dev autoconf bison flex bc libtool libelf-dev

source=avrdude-6.3
target=avrdude-6.3.1-build



tgz=${target}.tar.gz
patch1=patches/90-avrdude-linuxspi-V1.patch
patch2=patches/100-linuxspi-Add-reset-pulse-according-to-AVR-programmin.patch
patch3=patches/101-linuxspi-close-only-when-necessary.patch
patch4=patches/102-linuxspi-Report-GPIO_GET_LINEHANDLE_IOCTL-errors.patch
patch5=patches/103-linuxspi-Support-inverted-GPIO-pin.patch
patch6=patches/104-linuxspi-Support-GPIO-uAPI-v2.patch


cp -r ${source} ${target}

patch -d ${target} < ${patch1}
patch -d ${target} < ${patch2}
patch -d ${target} < ${patch3}
patch -d ${target} < ${patch4}
patch -d ${target} < ${patch5}
patch -d ${target} < ${patch6}

# bootstrap, compile, install
cd ${target}
./bootstrap
./configure --enable-linuxgpio --enable-linuxspi --prefix=/usr --sysconfdir=/etc
make
cd ..
