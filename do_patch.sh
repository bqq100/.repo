#!/bin/sh

cd bionic
git checkout -f
git clean -d -f
git apply ../local/bionic_libm_pow.patch
git apply ../local/bionic_linaro_str.patch
cd ..

cd frameworks/av/
git checkout -f
git clean -d -f
git apply ../../local/frame_av_omap3.patch
cd ../..

