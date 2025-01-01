# OpenBSD APM additions for MLVWM
by Morgan Aldridge <morgant@makkintosshu.com>

## OVERVIEW

A set of OpenBSD APM (Advanced Power Management) additions for MLVWM (specifically [`mlvwmrc`](https://github.com/morgant/mlvwmrc)), incl. MenuExtras which:

* Provide a menu which allows the selection of CPU performance mode (manual or automatic), plus sleep/suspend/hybernate
* Display statistics incl.: CPU speed, temperature, battery percentage, etc.

This is loosely based on an [OpenBSD-specific implementation](https://bpaste.net/show/RYRQ) of [`termbar`](https://github.com/vetelko/termbar).

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
    Read .mlvwm/MenuExtras/apmstats-cpustep
    Read .mlvwm/MenuExtras/apmstats-cpuload
    Read .mlvwm/MenuExtras/apmstats-cputemp
    Read .mlvwm/MenuExtras/apmstats-battery

Then restart `mlvwm`.

*Note*: While I suggest using Solène Rapenne's [`obsdfreqd`](https://dataswamp.org/~solene/2022-03-21-openbsd-cool-frequency.html) for customizing CPU performance, using `apmd`'s automatic mode should not be used at the same time. The "apm" MenuExtra included in this project does not include `obsdfreqd` support, though the other MenuExtras will continue to show accurate CPU frequency/temperature, battery level, etc.

## LICENSE

Released under the [MIT License](LICENSE).

Some icons by [Yusuke Kamiyamane](http://p.yusukekamiyamane.com/). Licensed under a [Creative Commons Attribution 3.0 License](http://creativecommons.org/licenses/by/3.0/).
