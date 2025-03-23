# elox
[![Coverage Status](https://coveralls.io/repos/github/nightconcept/elox/badge.svg?branch=master)](https://coveralls.io/github/nightconcept/elox?branch=master)
[![License](https://img.shields.io/hexpm/l/elox.svg)](https://github.com/henrik/nightconcept/blob/master/LICENSE.md)
[![Last Updated](https://img.shields.io/github/last-commit/nightconcept/elox.svg)](https://github.com/nightconcept/elox/commits/master)

This is the Lox programming language interpreter from [Crafting Interpreters](https://craftinginterpreters.com/) impelmented in the Elixir programming language.

* [Requirements](#requirements)
* [Setup](#setup)
* [Build](#build)
* [Usage](#usage)

## Requirements
- Nix 2.x+
- direnv 2.x+

## Setup

```sh
git clone https://github.com/nightconcept/elox.git
cd elox
direnv allow
```

## Build

```sh
MIX_ENV=prod mix release
```

## Usage

```sh
elox my_first_lox_program.lox
```

## License

Released under [the MIT License](./LICENSE.md).