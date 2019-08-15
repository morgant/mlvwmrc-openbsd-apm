# OpenBSD APM additions for MLVWM
by Morgan Aldridge <morgant@makkintosshu.com>

## OVERVIEW

A set of OpenBSD APM (Advanced Power Management) additions for MLVWM (specifically [`mlvwmrc`](https://github.com/morgant/mlvwmrc)), incl.:

* An 'APM' menu which allows the selection of CPU performance, plus sleep/suspend/hybernate
* MenuExtras for displaying CPU speed, temperature, etc. in the menu bar

## PREREQUISITES

* OpenBSD w/[`apmd`](https://man.openbsd.org/apmd.8) enabled
* [MLVWM](http://www2u.biglobe.ne.jp/~y-miyata/mlvwm.html)
* [`mlvwmrc`](https://github.com/morgant/mlvwmrc)
* `bash` (`pkg_add bash`)

## INSTALLATION

The following will install the `apmstats` utility in `~/bin` and the appropriate MenuExtras in `~/.mlvwm/MenuExtras`:

    make install

## USAGE

Edit your `~/.mlvwm/MenuBar` file to insert any of the following MenuExtras you'd like to use:

    Read .mlvwm/MenuExtras/apm
    Read .mlvwm/MenuExtras/apmstats-cpu

## LICENSE

_TBD_

(c) 2019 Morgan T. Aldridge
