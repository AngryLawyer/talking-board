#!/bin/bash

if [ ! -d "bin" ]; then
    mkdir bin
fi
mxmlc src/TalkingBoard.as -static-link-runtime-shared-libraries=true -library-path+="libs/greensock.swc" -debug=true -o bin/main.swf
