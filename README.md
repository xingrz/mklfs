mklfs [![build](https://github.com/xingrz/mklfs/actions/workflows/build.yml/badge.svg)](https://github.com/xingrz/mklfs/actions/workflows/build.yml)
==========

[![source][source-img]][source-url] [![license][license-img]][license-url] [![issues][issues-img]][issues-url] [![stars][stars-img]][stars-url] [![commits][commits-img]][commits-url]

A tool for make a LFS file system image. Based on the original version from
[Lua-RTOS-ESP32](https://github.com/whitecatboard/Lua-RTOS-ESP32/tree/master/components/mklfs).

## Usage

```
$ mklfs -h
Usage: mklfs [options] DIRECTORY IMAGE SIZE

Create a littlefs IMAGE from DIRECTORY with SIZE allocated.

Options:
  -r, --read-size=SIZE          minimum size of a block read (default: 16)
  -p, --prog-size=SIZE          minimum size of a block program (default: 16)
  -b, --block-size=SIZE         size of block in bytes (default: 4096)
  -c, --cache-size=SIZE         size of block caches in bytes (default: 64)
  -L, --lookahead-size=SIZE     size of lookahead buffer in bytes (default: 32)

Other options:
  -h, --help                    print this help
  -v, --version                 print program version
```

## Build

```sh
cmake -G Ninja -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build
```

## License

[BSD-3-Clause License](LICENSE)

[source-img]: https://img.shields.io/github/languages/top/xingrz/mklfs?style=flat-square
[source-url]: src
[license-img]: https://img.shields.io/github/license/xingrz/mklfs?style=flat-square
[license-url]: LICENSE
[issues-img]: https://img.shields.io/github/issues/xingrz/mklfs?style=flat-square
[issues-url]: https://github.com/xingrz/mklfs/issues
[stars-img]: https://img.shields.io/github/stars/xingrz/mklfs?style=flat-square
[stars-url]: https://github.com/xingrz/mklfs/stargazers
[commits-img]: https://img.shields.io/github/last-commit/xingrz/mklfs?style=flat-square
[commits-url]: https://github.com/xingrz/mklfs/commits/master
