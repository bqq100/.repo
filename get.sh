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
git am ../local/0001-fix-linaro-gcc-build-powe_neon-broken.patch
git am ../local/0002-string-optimization-from-linaro.patch
cd ..

cd frameworks/av/
git checkout -f
git clean -d -f
git pull github jellybean
git am ../../local/0001-OMAP3_AV_ENHANCE-add-by-river.patch
cd ../..

