# lxqt-makedeb


#### Prerequisites

- Makedeb - https://www.makedeb.org/

#### Installation

1. Clone this repo: `git clone https://github.com/isf63/lxqt-makedeb`.

2. Currently a manual bug fix is required for makedeb. Remove "`--depth 1`" from lines 69 and 75 of `/usr/share/makedeb/source/git.sh`.

#### Usage

1. `./install.sh all` builds and installs all of LXQt git. To install only individual packages, run e.g. `./install.sh lximage-qt-git`.

   - **Note:** Installing individual packages may fail if other LXQt -git packages are not installed. Refer to the build order here https://github.com/lxqt/lxqt/wiki/Building-from-source#compiling

2. `./update.sh` to fetch the latest git commits and update installed packages.

3. `./clean.sh` to clean all build files except for PKGBUILDs.

   - `apt autoremove` / `apt autopurge` can be run to remove unneeded makedepends.

### Has only been tested on, and is recommended for, recent releases of Ubuntu and Debian.

#### TODO

- Add remaining PKGBUILDs: `qps-git`, `lxqt-wayland-session-git`
- Re-add `check()` to a few PKGBUILDs
- Re-add PyQt6 bindings to QTermWidget
