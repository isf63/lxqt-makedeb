#!/usr/bin/env bash

installed_version() {
	local ver=$(apt-cache policy $1 | grep "Installed" | awk '{print $2}' | sed 's/.*\.//')
	echo ${ver:1:${#ver}-3}
}

remote_version() {
	echo $(git ls-remote "https://github.com/lxqt/${1//-git/}" | head -1 | cut -f 1)
}

for pkg in pkgbuild/*; do
	case "$(remote_version $(basename $pkg))" in
		"$(installed_version $(basename $pkg))"*)
			echo -e "[UP-TO-DATE]\t$(basename $pkg)"
			;;
		*)
			echo -e "[UPDATING]\t$(basename $pkg)"
			./install.sh "$(basename $pkg)"
			;;
	esac
done
