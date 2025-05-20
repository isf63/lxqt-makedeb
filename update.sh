#!/usr/bin/env bash

installed_version() {
	local ver=$(apt-cache policy $1 | grep "Installed" | awk '{print $2}' | sed 's/.*\.//')
	echo ${ver:1:${#ver}-3}
}

remote_version() {
	echo $(git ls-remote "https://github.com/lxqt/${1//-git/}" | head -1 | cut -f 1)
}

for pkg in pkgbuild/*; do
	dpkg -l "$(basename $pkg)" 1>/dev/null 2>/dev/null
	if [ $? -ne 0 ]; then
		continue
	fi

	case "$(remote_version $(basename $pkg))" in

		"$(installed_version $(basename $pkg))"*)
			echo -e "[UP-TO-DATE]\t$(basename $pkg)"
			;;

		*)
			echo -e "[UPDATING]\t$(basename $pkg)"
			find "$pkg" -maxdepth 1 ! -wholename "$pkg" ! -name "PKGBUILD" -exec sudo rm -rf {} +
			./install.sh "$(basename $pkg)"
			;;
	esac
done
