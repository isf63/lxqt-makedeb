# lxqt-makedeb


#### Prerequisites

- Makedeb: https://www.makedeb.org/
  - Currently a manual bug fix is required: remove `--depth 1` from lines 69 and 75 of `/usr/share/makedeb/source/git.sh`.

#### Installation

`git clone https://github.com/isf63/lxqt-makedeb`

#### Usage

- To build and install all LXQt git packages, run `./install.sh all`.
- To build and install only individual packages run, for example, `./install.sh lximage-qt-git`.
  - **Note:** Installing individual packages may fail as the packages depend on one another. Refer to the build order here: https://github.com/lxqt/lxqt/wiki/Building-from-source#compiling .

- To fetch the latest git commits and update packages, run`./update.sh`.

- To clean all build files (except for PKGBUILDs), run `./clean.sh`.
  - To remove unneeded make dependencies, run `apt autopurge`.

### Has only been tested on and is recommended for recent releases of Ubuntu and Debian.

#### TODO
- Add remaining PKGBUILDs: `qps-git`, `lxqt-wayland-session-git`
- Re-add PyQt6 bindings to QTermWidget
