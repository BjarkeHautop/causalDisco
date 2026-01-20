# Print a `knowledge` object

Print a `knowledge` object

## Usage

``` r
# S3 method for class 'knowledge'
print(x, compact = FALSE, ...)
```

## Arguments

- x:

  A `knowledge` object.

- compact:

  Logical. If `TRUE`, prints a more compact summary,

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
print(kn)
#> 
#> ── Knowledge object ────────────────────────────────────────────────────────────
#> 
#> ── Tiers ──
#> 
#>   <chr>
#> 1 child
#> 2 youth
#> 3 old  
#> ── Variables ──
#> 
#>   <chr>     <chr>
#> 1 child_x1  child
#> 2 child_x2  child
#> 3 youth_x3  youth
#> 4 youth_x4  youth
#> 5 oldage_x5 old  
#> 6 oldage_x6 old  
print(kn, compact = TRUE)
#> ── Knowledge object ────────────────────────────────────────────────────────────
#> 
#> ── Tiers ──
#> 
#>   <chr>
#> 1 child
#> 2 youth
#> 3 old  
#> ── Variables ──
#> 
#>   <chr>     <chr>
#> 1 child_x1  child
#> 2 child_x2  child
#> 3 youth_x3  youth
#> 4 youth_x4  youth
#> ... and 2 more rows
```
