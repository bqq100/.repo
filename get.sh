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
git apply ../local/bionic_libm_pow.patch
cd ..

cd frameworks
git checkout -f
git apply ../local/frameworks-base_rotation.patch
cd ..

