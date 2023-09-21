#!/bin/bash
# ldc2 -i=. --d-version=CarelessAlocation
../../ldc2-1.32.0-linux-x86_64/bin/ldmd2 -i=std -Iarsd-webassembly/ -L-mwasm64 -L-allow-undefined -ofserver/omg.wasm -mtriple=wasm64-unknown-unknown-wasm arsd-webassembly/core/arsd/aa arsd-webassembly/core/arsd/objectutils arsd-webassembly/core/internal/utf arsd-webassembly/core/arsd/utf_decoding hello arsd-webassembly/object.d
