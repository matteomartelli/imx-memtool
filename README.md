# memtool

This is the IMX memtool version extraced from
https://github.com/nxp-imx/imx-test.

## build

Just run `make` to build with default settings.

To reduce bin footprint one can enable only a subset of SOCs, e.g.:

```
SOCS="mx6sx mx6ul" make
```

and even disable registers and bit descriptions:

```
ENABLE_DESCRIPTIONS="no" SOCS="mx6sx mx6ul" make
```
