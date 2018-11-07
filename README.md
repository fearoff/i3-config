# i3

## Prerequisites

install Consolas font
```bash
apt-get install fonts-inconsolata
```

install
[xkblayout-state](https://github.com/nonpop/xkblayout-state)

## Install

clone repo

```git
git clone https://github.com/fearoff/i3.git
```

replace files in your home dir

```bash
find ./i3 -print | sed -e "s/^\.\/i3/./g" | cpio -pvdmB ~
```
