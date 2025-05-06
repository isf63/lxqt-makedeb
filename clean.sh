#/usr/bin/env bash

for make_dir in ./pkgbuild/*; do
	cd "$make_dir"
	find . -maxdepth 1 ! -name "." ! -name "PKGBUILD" -exec gio trash {} +
	cd ../..
done
