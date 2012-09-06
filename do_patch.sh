#!/bin/sh

cd bionic
git checkout -f
git clean -d -f
git pull github jellybean
git apply ../local/bionic_libm_pow.patch
git apply ../local/bionic_linaro_str.patch
cd ..

