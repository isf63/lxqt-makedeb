#!/usr/bin/env bash

local_version() {
	apt-cache policy $1 | grep "Installed" | awk '{print $2}'
}

remote_hash() {
	git ls-remote "https://github.com/lxqt/${1//-git/}" | head -1 | cut -f 1
}

for pkg in pkgbuild/*; do
	_pkgname="$(basename $pkg)"

	dpkg -l "$_pkgname" 1>/dev/null 2>/dev/null
	if [[ $? != 0 ]]; then
		continue
	fi

	_local_ver="$(local_version $_pkgname)"
	_remote_hash="$(remote_hash $_pkgname)"
	_local_hash="$(echo $_local_ver | sed 's/.*\.//; s/^.//; s/..$//')"

	if [[ "$_remote_hash" == "$_local_hash"* ]]; then
		echo -e "[UP-TO-DATE]\t$_pkgname"
	else
		echo -e "[UPDATING]\t$_pkgname\t($_local_ver -> ${_remote_ver:0:8})"

		find "$pkg" -maxdepth 1 ! -wholename "$pkg" ! -name "PKGBUILD" -exec sudo rm -rf {} +
		./install.sh "$_pkgname"
	fi
done
