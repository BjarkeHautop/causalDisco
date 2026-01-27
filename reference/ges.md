# GES Algorithm for Causal Discovery

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
frame) and returns a `caugi` and a `knowledge` (`knowledgeable_caugi`)
object.

## Details

For specific details on the supported scores, tests, and parameters for
each engine, see:

- [`TetradSearch`](https://bjarkehautop.github.io/causalDisco/reference/TetradSearch.md)
  for Tetrad (note, Tetrad refers to it as "FGES"),

- [`PcalgSearch`](https://bjarkehautop.github.io/causalDisco/reference/PcalgSearch.md)
  for pcalg.

## Examples

``` r
data(tpc_example)

#### Using pcalg engine ####
# Recommended path using disco()
ges_pcalg <- ges(engine = "pcalg", score = "sem_bic")
disco(tpc_example, ges_pcalg)
#> 
#> ── caugi graph ─────────────────────────────────────────────────────────────────
#> Graph class: PDAG
#> 
#> ── Edges ──
#> 
#>   from      edge  to       
#>   <chr>     <chr> <chr>    
#> 1 child_x1  ---   child_x2 
#> 2 child_x2  -->   oldage_x5
#> 3 child_x2  ---   youth_x4 
#> 4 oldage_x5 -->   oldage_x6
#> 5 youth_x3  -->   oldage_x5
#> 6 youth_x4  -->   oldage_x6
#> ── Nodes ──
#> 
#>   name     
#>   <chr>    
#> 1 child_x2 
#> 2 child_x1 
#> 3 youth_x4 
#> 4 youth_x3 
#> 5 oldage_x6
#> 6 oldage_x5
#> ── Knowledge object ────────────────────────────────────────────────────────────

# or using ges_pcalg directly
ges_pcalg(tpc_example)
#> 
#> ── caugi graph ─────────────────────────────────────────────────────────────────
#> Graph class: PDAG
#> 
#> ── Edges ──
#> 
#>   from      edge  to       
#>   <chr>     <chr> <chr>    
#> 1 child_x1  ---   child_x2 
#> 2 child_x2  -->   oldage_x5
#> 3 child_x2  ---   youth_x4 
#> 4 oldage_x5 -->   oldage_x6
#> 5 youth_x3  -->   oldage_x5
#> 6 youth_x4  -->   oldage_x6
#> ── Nodes ──
#> 
#>   name     
#>   <chr>    
#> 1 child_x2 
#> 2 child_x1 
#> 3 youth_x4 
#> 4 youth_x3 
#> 5 oldage_x6
#> 6 oldage_x5
#> ── Knowledge object ────────────────────────────────────────────────────────────

#### Using tetrad engine with tier knowledge ####
# Requires Tetrad to be installed
if (check_tetrad_install()$installed && check_tetrad_install()$java_ok) {
  kn <- knowledge(
    tpc_example,
    tier(
      child ~ tidyselect::starts_with("child"),
      youth ~ tidyselect::starts_with("youth"),
      oldage ~ tidyselect::starts_with("oldage")
    )
  )

  # Recommended path using disco()
  ges_tetrad <- ges(engine = "tetrad", score = "sem_bic")
  disco(tpc_example, ges_tetrad, knowledge = kn)

  # or using ges_tetrad directly
  ges_tetrad <- ges_tetrad |> set_knowledge(kn)
  ges_tetrad(tpc_example)
}
#> 
#> ── caugi graph ─────────────────────────────────────────────────────────────────
#> Graph class: UNKNOWN
#> 
#> ── Edges ──
#> 
#>   from      edge  to       
#>   <chr>     <chr> <chr>    
#> 1 child_x2  ---   child_x1 
#> 2 child_x2  -->   oldage_x5
#> 3 child_x2  -->   youth_x4 
#> 4 oldage_x5 -->   oldage_x6
#> 5 youth_x3  -->   oldage_x5
#> 6 youth_x4  -->   oldage_x6
#> ── Nodes ──
#> 
#>   name     
#>   <chr>    
#> 1 child_x2 
#> 2 child_x1 
#> 3 youth_x4 
#> 4 youth_x3 
#> 5 oldage_x6
#> 6 oldage_x5
#> ── Knowledge object ────────────────────────────────────────────────────────────
```
