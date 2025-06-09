#/usr/bin/env bash

if [[ "$(basename $PWD)" != "lxqt-makedeb" ]]; then
	exit 1
fi

for pkg in ./pkgbuild/*; do
	find "$pkg" -maxdepth 1 ! -wholename "$pkg" ! -name "PKGBUILD" -exec sudo rm -rf {} +
	sed -i '/^pkgver=/ s/\.r.*$//' "$pkg"/PKGBUILD
done
