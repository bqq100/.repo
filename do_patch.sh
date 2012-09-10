#!/bin/sh

#cd bionic
#git checkout -f
#git clean -d -f
#git pull github jellybean
#git am ../local/0001-fix-linaro-gcc-build-powe_neon-broken.patch
#git am ../local/0002-string-optimization-from-linaro.patch
#cd ..

cd frameworks/av/
git checkout -f
git clean -d -f
git pull github jellybean
git am ../../local/0001-OMAP3_AV_ENHANCE-add-by-river.patch
cd ../..

