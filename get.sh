#!/bin/sh

rm prebuilts/gcc/linux-x86/arm/arm-eabi-4.6
rm prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.6

repo sync -j16

cp gcc prebuilts/tools/gcc-sdk/
cp set.sh prebuilts/gcc/linux-x86/arm/

cd prebuilts/gcc/linux-x86/arm
./set.sh
cd ../../../../

cd bionic
git checkout -f
git clean -d -f
git pull github jellybean
git apply ../local/bionic_libm_pow.patch
git apply ../local/bionic_linaro_str.patch
cd ..

