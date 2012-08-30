#!/bin/bash

if [ ! -d "bin" ]; then
    mkdir bin
fi
mxmlc src/main.as -static-link-runtime-shared-libraries=true -library-path+="libs/greensock.swc" -debug=true -o bin/main.swf
