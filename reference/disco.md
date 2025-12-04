# Disco!!

Run a causal discovery method on a data frame.

## Usage

``` r
disco(data, method, knowledge = NULL)
```

## Arguments

- data:

  A data frame

- method:

  A `disco_method` object representing a causal discovery algorithm.

- knowledge:

  A `knowledge` object to be incorporated into the disco method. If
  `NULL` (default), the method is applied without additional knowledge.

## Value

A `caugi` and a `knowledge` (`knowledgeable_caugi`) object.

## Examples

``` r
### disco() example ###
if (FALSE) { # \dontrun{
data("tpcExample")

# define background knowledge
kn <- knowledge(
  tpcExample,
  tier(
    child ~ starts_with("child"),
    youth ~ starts_with("youth"),
    old ~ starts_with("old")
  )
)

# use PC (for example)
my_pc <- pc(engine = "tetrad", test = "fisher_z", alpha = 0.01)

disco(data = tpcExample, method = my_pc)
} # }
```
