#!/bin/bash
# Coded by CaelestisZ @IrisCoreKernel
clear
IC_VERSION=E1
IC_DATE=$(date +%Y%m%d)
IC_TOOLCHAIN=/home/niranjan/Toolchains/bin/arm-eabi-
echo "------------------------------------------"
echo "IrisCore $IC_VERSION build script"
echo "Coded by CaelestisZ"
echo "------------------------------------------"
echo " "
IC_VARIANT=fortuna3g
export ARCH=arm
export CROSS_COMPILE=$IC_TOOLCHAIN
export LOCALVERSION=-Iris_Core-$IC_VERSION-$IC_VARIANT-$IC_DATE
make -j5 clean
rm -r -f output
mkdir output
make -j5 -C $(pwd) O=output VARIANT_DEFCONFIG=iris_msm8916_fortuna3g_defconfig iris_msm8916_defconfig SELINUX_DEFCONFIG=iris_selinux_defconfig
make -j5 -C $(pwd) O=output
echo "------------------------------------------"
echo " "
