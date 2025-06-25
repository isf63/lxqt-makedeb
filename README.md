# lxqt-makedeb

#### Prerequisites

- `makedeb` - https://www.makedeb.org/

#### Installation

1. Clone this repo: `git clone https://github.com/isf63/lxqt-makedeb`.

2. Currently a manual bug fix is required for makedeb: remove "`--depth 1`" from lines 69 and 75 of `/usr/share/makedeb/source/git.sh`.

#### Usage

- Run `./install.sh all` to build and install all of LXQt git. To install only individual packages, run e.g. `./install.sh lximage-qt-git`.

  - **Note:** Installing individual packages may fail if LXQt -git dependencies are not met. Refer to the build order here https://github.com/lxqt/lxqt/wiki/Building-from-source#compiling

- Run `./update.sh` to fetch the latest git commits and update installed packages.

- Run `./clean.sh` to clean all build files except for PKGBUILD files.

- `apt autoremove` / `apt autopurge` can be run after install to remove unneeded makedepends.

#### Notes

- **Has only been tested on, and is recommended for, recent versions of Ubuntu and Debian.**

#### TODO

- Add remaining PKGBUILDs: `qps-git`, `lxqt-wayland-session-git`.

- Re-add `check()` to a few PKGBUILDs.

- Re-add PyQt6 bindings to QTermWidget.
