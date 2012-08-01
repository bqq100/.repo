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
git revert --no-edit fc78808c2b6af80fab7fe482f1a7aefc74e12df6  
cd ..

