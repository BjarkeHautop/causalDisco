# Plot a Knowledge Object

Plot a knowledge object (tiers + required + forbidden)

## Usage

``` r
# S3 method for class 'knowledge'
plot(x, ...)
```

## Arguments

- x:

  A `knowledge` object.

- ...:

  Additional arguments passed to igraph `plot`.

## Value

A plot of the knowledge structure.

## Examples

``` r
data("tpcExample")

kn <- knowledge(
  tpcExample,
  tier(
    child ~ starts_with("child"),
    youth ~ starts_with("youth"),
    old ~ starts_with("old")
  )
)

plot(kn)

```
