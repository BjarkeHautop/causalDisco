# The FCI algorithm for causal discovery

Run the FCI algorithm for causal discovery using one of several engines.

## Usage

``` r
fci(engine = c("tetrad", "pcalg"), test, alpha = 0.05, ...)
```

## Arguments

- engine:

  Character; which engine to use. Must be one of:

  `"tetrad"`

  :   Tetrad Java library.

  `"pcalg"`

  :   pcalg R package.

- test:

  Character; name of the conditional‐independence test.

- alpha:

  Numeric; significance level for the CI tests.

- ...:

  Additional arguments passed to the chosen engine (e.g. test or
  algorithm parameters).

## Value

A function of class `"fci"` that takes a single argument `data` (a data
frame) and returns a `caugi` and a `knowledge` (`knowledgeable_caugi`)
object.

## Details

For specific details on the supported scores, tests, and parameters for
each engine, see:

- [`TetradSearch`](https://bjarkehautop.github.io/causalDisco/reference/TetradSearch.md)
  for Tetrad,

- [`PcalgSearch`](https://bjarkehautop.github.io/causalDisco/reference/pcalgSearch.md)
  for pcalg.

## Examples

``` r
### fci() example ###
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
my_fci <- fci(engine = "tetrad", test = "fisher_z", alpha = 0.05)

disco(tpc_example, my_fci, knowledge = kn)

# or using my_fci directly
my_fci <- my_fci |> set_knowledge(kn)
my_fci(tpc_example)
} # }
```
