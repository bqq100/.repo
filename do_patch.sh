#!/bin/sh

cd bionic
git checkout -f
git clean -d -f
git pull github jellybean
git apply ../local/bionic_libm_pow.patch
git apply ../local/bionic_linaro_str.patch
cd ..

cd frameworks/av/
git checkout -f
git clean -d -f
git pull github jellybean
git am ../../local/0001-OMAP3_AV_ENHANCE-add-by-river.patch
cd ../..

