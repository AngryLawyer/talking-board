#!/bin/bash

if [ ! -d "bin" ]; then
    mkdir bin
fi
mxmlc src/main.as -l "libs" -static-link-runtime-shared-libraries -debug=true -o bin/main.swf
