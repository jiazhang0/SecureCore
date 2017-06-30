#!/bin/bash

S="${BASH_SOURCE[0]}"
D=`dirname "$S"`
SECURE_CORE_ROOT="`cd "$D"/.. && pwd`"

for dir in poky meta-openembedded meta-secure-core; do
    (cd "$dir"; git pull)
done
