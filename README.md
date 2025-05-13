# lxqt-makedeb

### Prerequisites

- `makedeb` - https://www.makedeb.org/

### Usage

1. Clone this repo: `git clone https://github.com/isf63/lxqt-makedeb;  cd lxqt-makedeb`.
2. To install all of LXQt -git, run `./install.sh all`. This builds and installs all packages in the proper order.

   To install specific packages only, run e.g. `./install.sh lxqt-panel-git lxqt-config-git`. *Note:* some LXQt dependencies may not be satisfied when installed individually, refer to https://github.com/lxqt/lxqt/wiki/Building-from-source.

3. Run `./update.sh` to stay up-to-date.

- To clean all build files except for `PKGBUILD`s, run `./clean.sh`.

- `apt autoremove`/`auto autopurge` can safely be run after installation to remove unneeded makedepends.

### Notes

- This currently requires a manual fix to `makedeb`: remove "`--depth 1`" from lines 69 and 75 of `/usr/share/makedeb/source/git.sh`.

- **Currently only tested on and recommended for recent (as of 2025) versions of Ubuntu.**

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
- Re-add `check()` to a few packages; re-add PyQt6 bindings to QTermWidget.
