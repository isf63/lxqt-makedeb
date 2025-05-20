#/usr/bin/env bash

for pkg in ./pkgbuild/*; do
	cd "$pkg"
	find . -maxdepth 1 ! -name "." ! -name "PKGBUILD" -exec sudo rm -rI {} +
	cd ../..
done
