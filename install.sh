#!/usr/bin/env bash

makedeb_and_install() {
	cd ./pkgbuild/"$1"
	yes | makedeb -si
	cd ../..
}

install_all() {
	makedeb_and_install lxqt-build-tools-git
	makedeb_and_install libdbusmenu-lxqt-git

	makedeb_and_install libqtxdg-git
	makedeb_and_install lxqt-menu-data-git

	makedeb_and_install liblxqt-git
	makedeb_and_install libsysstat-git
	makedeb_and_install qtxdg-tools-git
	makedeb_and_install libfm-qt-git

	makedeb_and_install lxqt-globalkeys-git
	makedeb_and_install lxqt-qtplugin-git
	makedeb_and_install qtermwidget-git

	makedeb_and_install lxqt-panel-git
	makedeb_and_install pcmanfm-qt-git
	makedeb_and_install qterminal-git
	makedeb_and_install lxqt-powermanagement-git
	makedeb_and_install lxqt-runner-git
	makedeb_and_install lxqt-themes-git
	makedeb_and_install lxqt-admin-git
	makedeb_and_install lxqt-notificationd-git
	makedeb_and_install lxqt-about-git
	makedeb_and_install lxqt-config-git
	makedeb_and_install lxqt-policykit-git
#	makedeb_and_install lxqt-sudo-git
#	makedeb_and_install lxqt-openssh-askpass-git
	makedeb_and_install lxqt-session-git
	makedeb_and_install pavucontrol-qt-git
	makedeb_and_install xdg-desktop-portal-lxqt-git
	makedeb_and_install lxqt-archiver-git
#	makedeb_and_install screengrab-git
	makedeb_and_install lximage-qt-git
}

case $1 in
	"all")
		install_all
		;;
	*)
		for arg in "$@"; do
			makedeb_and_install "$arg"
		done
		;;
esac
