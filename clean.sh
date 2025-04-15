#/usr/bin/env bash

for make_dir in ./pkgbuild/*; do
	cd "$make_dir"
	find . ! -name "." ! -name "PKGBUILD" -exec rm -rf {} +
	cd ../..
done
