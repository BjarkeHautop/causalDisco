# Print method for knowledgeable_caugi objects

Print method for knowledgeable_caugi objects

## Usage

``` r
# S3 method for class 'knowledgeable_caugi'
print(x, compact = FALSE, ...)
```

## Arguments

- x:

  A `knowledgeable_caugi` object.

- compact:

  Logical; if `TRUE`, prints a more compact representation.

- ...:

  Additional arguments (not used).

## Examples

``` r
data(tpc_example)
kn <- knowledge(
  tpc_example,
  tier(
    child ~ starts_with("child"),
    youth ~ starts_with("youth"),
    old ~ starts_with("old")
  )
)
cd_tges <- tpc(engine = "causalDisco", test = "fisher_z")
disco_cd_tges <- disco(data = tpc_example, method = cd_tges, knowledge = kn)
print(disco_cd_tges)
#> 
#> ── caugi graph ─────────────────────────────────────────────────────────────────
#> Graph class: PDAG
#> 
#> ── Edges ──
#> 
#> # A tibble: 6 × 3
#>   from      edge  to       
#>   <chr>     <chr> <chr>    
#> 1 child_x1  -->   child_x2 
#> 2 child_x2  -->   oldage_x5
#> 3 child_x2  -->   youth_x4 
#> 4 oldage_x5 ---   oldage_x6
#> 5 youth_x3  -->   oldage_x5
#> 6 youth_x4  -->   oldage_x6
#> ── Nodes ──
#> 
#> # A tibble: 6 × 1
#>   name     
#>   <chr>    
#> 1 child_x2 
#> 2 child_x1 
#> 3 youth_x4 
#> 4 youth_x3 
#> 5 oldage_x6
#> 6 oldage_x5
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
print(disco_cd_tges, compact = TRUE)
#> ── caugi graph ─────────────────────────────────────────────────────────────────
#> Graph class: PDAG
#> 6 edges, 6 nodes
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
#> ... and 2 more rows
```
