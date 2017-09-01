#!/bin/bash

S="${BASH_SOURCE[0]}"
D=`dirname "$S"`
SECURE_CORE_ROOT="`cd "$D"/.. && pwd`"

pushd 2>/dev/null
"${SECURE_CORE_ROOT}/scripts/sync-up-submodules.sh"
cd "${SECURE_CORE_ROOT}/build-secure-core"
rm -rf conf .configure
cd "${SECURE_CORE_ROOT}"
source sc-init-build-env
bitbake secure-core-image secure-core-minimal-image
popd 2>/dev/null
