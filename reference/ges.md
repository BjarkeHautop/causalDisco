# The GES algorithm for causal discovery

Run the GES algorithm for causal discovery using one of several engines.

## Usage

``` r
ges(engine = c("tetrad", "pcalg"), score, ...)
```

## Arguments

- engine:

  Character; which engine to use. Must be one of:

  `"tetrad"`

  :   Tetrad Java library.

  `"pcalg"`

  :   pcalg R package.

- score:

  Character; name of the scoring function to use.

- ...:

  Additional arguments passed to the chosen engine (e.g. test or
  algorithm parameters).

## Value

A function of class `"ges"` that takes a single argument `data` (a data
frame) and returns an `caugi` and a `knowledge` (`knowledgeable_caugi`)
object.

## Examples

``` r
### ges() example ###
if (FALSE) { # \dontrun{
data("tpcExample")

kn <- knowledge(
  tpcExample,
  tier(
    child ~ tidyselect::starts_with("child"),
    youth ~ tidyselect::starts_with("youth"),
    oldage ~ tidyselect::starts_with("oldage")
  )
)

# Recommended path using disco()
my_ges <- ges(engine = "tetrad", score = "sem_bic")

disco(tpcExample, my_ges, knowledge = kn)

# or using my_ges directly
my_ges <- my_ges |> set_knowledge(kn)
my_ges(tpcExample)
} # }
```
