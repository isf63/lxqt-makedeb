# lxqt-makedeb

### Prerequisites

- `makedeb` - https://www.makedeb.org/

### Usage

1. Clone this repo: `git clone https://github.com/isf63/lxqt-makedeb`.
2. To build and install all of LXQt -git, simply run `./install.sh all`.

   To install specific packages only, run e.g. `./install.sh lximage-qt-git pcmanfm-qt-git`. *Note:* You may need to install some LXQt libraries, refer to the build order here: https://github.com/lxqt/lxqt/wiki/Building-from-source#compiling

### Post-installation

- Run `./update.sh` to fetch and build from the latest git commits.

- Run `./clean.sh` to clean all build files except for `PKGBUILD`s.

- `apt autoremove`/`apt autopurge` can safely be run after installation to remove unneeded makedepends.

### Notes

- This currently requires a manual bug fix to makedeb: remove "`--depth 1`" from lines 69 and 75 of `/usr/share/makedeb/source/git.sh`.

- **Currently only tested on, and recommended for, recent (as of 2025) releases of Ubuntu and Debian.**

### Current PKGBUILDs:

- `libdbusmenu-lxqt-git`
- `libfm-qt-git`
- `liblxqt-git`
- `libqtxdg-git`
- `libsysstat-git`
- `lximage-qt-git`
- `lxqt-about-git`
- `lxqt-admin-git`
- `lxqt-archiver-git`
- `lxqt-build-tools-git`
- `lxqt-config-git`
- `lxqt-globalkeys-git`
- `lxqt-menu-data-git`
- `lxqt-notificationd-git`
- `lxqt-panel-git`
- `lxqt-policykit-git`
- `lxqt-powermanagement-git`
- `lxqt-qtplugin-git`
- `lxqt-runner-git`
- `lxqt-session-git`
- `lxqt-themes-git`
- `pavucontrol-qt-git`
- `pcmanfm-qt-git`
- `qterminal-git`
- `qtermwidget-git`
- `qtxdg-tools-git`
- `xdg-desktop-portal-lxqt-git`

### TODO

- Add remaining packages: `lxqt-sudo-git`, `lxqt-openssh-askpass-git`, `screengrab-git`.
- Re-add `check()` to a few packages.
- Re-add PyQt6 bindings to QTermWidget.
