#!/bin/bash
TEST=emulate_syscall
make clean
make TESTS="$TEST" TEST_DEPS="" BENCHES=""
export OCCLUM_LOG_LEVEL=debug
export RUST_BACKTRACE=1
cd ../build/test/ && occlum run /bin/$TEST