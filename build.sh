#!/bin/bash

if [ ! -d "bin" ]; then
    mkdir bin
fi
mxmlc src/main.mxml -l "src/libs" -static-link-runtime-shared-libraries -debug=true -o bin/main.swf
