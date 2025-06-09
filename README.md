# lxqt-makedeb

#### Prerequisites

- `makedeb` - https://www.makedeb.org/

#### Usage

1. Clone this repo: `git clone https://github.com/isf63/lxqt-makedeb`.

2. To build and install all of LXQt -git, simply run `./install.sh all`.

   To install only individual packages, run, e.g. `./install.sh lximage-qt-git pcmanfm-qt-git`.

   - **Note:** This is not entirely recommended as its needed to install LXQt dependencies in a specific order.

   - Refer to the build order here https://github.com/lxqt/lxqt/wiki/Building-from-source#compiling

#### Post-installation

- Run `./clean.sh` to clean all build files except for PKGBUILDs.

- Run `./update.sh` to fetch and build from the latest git commits.

- `apt autoremove` / `apt autopurge` can safely be run after installation to remove unneeded makedepends.

#### Notes

- This currently requires a manual bug fix to makedeb: remove "`--depth 1`" from lines 69 and 75 of `/usr/share/makedeb/source/git.sh`.

- **Has only been tested on and is recommended for recent versions of Ubuntu and Debian.**

#### PKGBUILDs

See `./pkgbuild/`

#### TODO

- Add remaining PKGBUILDs: `qps-git`, `lxqt-wayland-session-git`.

- Re-add `check()` to several PKGBUILDs.

- Re-add PyQt6 bindings to QTermWidget.
