# Copyright (C) 2019 Intel Corporation.  All rights reserved.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#!/bin/bash

docker run --name=wasm-toolchain-ctr \
                -it -v "$(pwd)":/mnt \
                --env=PROJ_PATH="$(pwd)" \
                wasm-toolchain:1.0  \
                /bin/bash -c "./build_wasm.sh $1"

docker stop wasm-toolchain-ctr>/dev/null
docker rm wasm-toolchain-ctr>/dev/null