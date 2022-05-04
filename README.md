# Foreword

The algorithm is slow :/. This project was just about training in haskell language and the discovery of Procedural Content Generation.

# Prerequisites

You must have a working haskell development environment. Please use [ghcup](https://www.haskell.org/ghcup/) utility to setup cabal and the ghc compiler.

# How to build

    cabal build

# Groland cities - Hall Of Fame :)

French generated cities :

- quenaud-mérolière
- peypin-monjaulzy
- tabrezac
- rigneval
- fay-le-médard-notre-de-philbertran
- pettoncourcourdon

# How to use

## First : build a distribution with a given order

```bash
# You will find sample data to work with in resources/ folder.
# - communes.txt
# - prenoms.txt
# The higher the order, the more precise are the words but less creative they are.

cabal run word-generator -- genDist data order

# This command generates a .dist file in resources/ folder.(e.g communes.txt.dist)
```

### Example

    cabal run word-generator -- genDist resources/communes.txt 2

## Second : use the generated distribution to generate a word

```bash
cabal run word-generator -- genWord distFile
```

### Example 

    cabal run word-generator -- genWord resources/prenoms.txt.dist

