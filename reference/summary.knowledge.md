# Summary method for knowledge objects

Summary method for knowledge objects

## Usage

``` r
# S3 method for class 'knowledge'
summary(object, ...)
```

## Arguments

- object:

  A `knowledge` object.

- ...:

  Additional arguments (not used).

## Examples

``` r
kn <- knowledge(
  tpc_example,
  tier(
    child ~ starts_with("child"),
    youth ~ starts_with("youth"),
    old ~ starts_with("old")
  )
)
summary(kn)
#> 
#> ── Knowledge summary ──
#> 
#> Tiers: 3
#> Variables: 6
#> Required edges: 0
#> Forbidden edges: 0
```
