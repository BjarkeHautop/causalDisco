# The Peter-Clark (PC) Algorithm for Causal Discovery

Run the PC algorithm for causal discovery using one of several engines.

## Usage

``` r
pc(engine = c("tetrad", "pcalg", "bnlearn"), test, alpha = 0.05, ...)
```

## Arguments

- engine:

  Character; which engine to use. Must be one of:

  `"tetrad"`

  :   Tetrad Java library.

  `"pcalg"`

  :   pcalg R package.

  `"bnlearn"`

  :   bnlearn R package.

- test:

  Character; name of the conditional‐independence test.

- alpha:

  Numeric; significance level for the CI tests.

- ...:

  Additional arguments passed to the chosen engine (e.g. test or
  algorithm parameters).

## Value

A function of class `"pc"` that takes a single argument `data` (a data
frame) and returns a `caugi` and a `knowledge` object.

## Details

For specific details on the supported scores, tests, and parameters for
each engine, see:

- [`TetradSearch`](https://bjarkehautop.github.io/causalDisco/reference/TetradSearch.md)
  for Tetrad,

- [`PcalgSearch`](https://bjarkehautop.github.io/causalDisco/reference/pcalgSearch.md)
  for pcalg,

- [`BnlearnSearch`](https://bjarkehautop.github.io/causalDisco/reference/bnlearnSearch.md)
  for bnlearn.

## Examples

``` r
### pc() example ###
if (FALSE) { # \dontrun{
data("tpc_example")

kn <- knowledge(
  tpc_example,
  tier(
    child ~ tidyselect::starts_with("child"),
    youth ~ tidyselect::starts_with("youth"),
    oldage ~ tidyselect::starts_with("oldage")
  )
)

# Recommended path using disco()
my_pc <- pc(engine = "tetrad", test = "fisher_z", alpha = 0.05)

disco(tpc_example, my_pc, knowledge = kn)

# or using my_pc directly
my_pc <- my_pc |> set_knowledge(kn)
my_pc(tpc_example)
} # }
```
