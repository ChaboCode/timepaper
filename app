#!/bin/bash

function build {
	meson build --prefix=/usr
	cd build
	ninja
}

case $1 in
"build")
	build
	;;
"run")
	build && \
    ./com.github.ChaboCode.Timepaper
	;;
"only-run")
    ./build/com.github.ChaboCode.Timepaper
    ;;
esac
