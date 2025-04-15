# lxqt-makedeb

### Prerequisites

- `makedeb` - https://www.makedeb.org/

### Installation

1. Clone this repo: `git clone https://github.com/isf63/lxqt-makedeb; cd lxqt-makedeb`.
2. To install all of LXQt -git, run `./install.sh all`. This builds and installs all packages in the correct order.

   To install specific components only, run e.g. `./install.sh lxqt-panel-git lxqt-config-git`.

   NOTE: Some dependencies may not be satisfied installing individually. Refer to https://github.com/lxqt/lxqt/wiki/Building-from-source for build order.

- To clean all build files except for `PKGBUILD`s, run `./clean.sh`.

- `apt autoremove`/`auto autopurge` should be able to be safely run after installation. This will remove unneeded makedepends.

**Currently only tested on and recommended for recent (as of 2025) versions of Ubuntu.**

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

- Add remaining packages - `lxqt-sudo-git`, `lxqt-openssh-askpass-git`, `screengrab-git`.
- Double-check base `pkgver` and re-add proper `pkgver()` functions to append git hashes.
- Re-add `check()` to one or two packages. Re-add PyQt6 bindings to QTermWidget.
