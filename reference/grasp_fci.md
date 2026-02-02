# GRaSP-FCI Algorithm for Causal Discovery

Run the GRaSP-FCI algorithm for causal discovery using one of several
engines.

## Usage

``` r
grasp_fci(engine = "tetrad", score, test, alpha = 0.05, ...)
```

## Arguments

- engine:

  Character; which engine to use. Must be one of:

  `"tetrad"`

  :   Tetrad Java library.

- score:

  Character; name of the scoring function to use.

- test:

  Character; name of the conditional‐independence test.

- alpha:

  Numeric; significance level for the CI tests.

- ...:

  Additional arguments passed to the chosen engine (e.g. score and
  algorithm parameters).

## Value

A function of class `"grasp_fci"` that takes a single argument `data` (a
data frame) and returns a `caugi` (of class "UNKNOWN") and a `knowledge`
(`knowledgeable_caugi`) object.

## Details

For specific details on the supported scores, and parameters for each
engine, see:

- [`TetradSearch`](https://bjarkehautop.github.io/causalDisco/reference/TetradSearch.md)
  for Tetrad.

## Examples

``` r
data(tpc_example)

# Requires Tetrad to be installed
if (check_tetrad_install()$installed && check_tetrad_install()$java_ok) {
  # Recommended path using disco()
  grasp_fci_tetrad <- grasp_fci(
    engine = "tetrad",
    test = "fisher_z",
    score = "sem_bic",
    alpha = 0.05
  )
  disco(tpc_example, grasp_fci_tetrad)

  # or using grasp_fci_tetrad directly
  grasp_fci_tetrad(tpc_example)
}
#> 
#> ── caugi graph ─────────────────────────────────────────────────────────────────
#> Graph class: UNKNOWN
#> 
#> ── Edges ──
#> 
#>   from      edge  to       
#>   <chr>     <chr> <chr>    
#> 1 child_x2  o-o   child_x1 
#> 2 child_x2  o->   oldage_x5
#> 3 child_x2  o-o   youth_x4 
#> 4 oldage_x5 -->   oldage_x6
#> 5 youth_x3  o->   oldage_x5
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

#### With tier knowledge ####
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
  grasp_fci_tetrad <- grasp_fci(
    engine = "tetrad",
    test = "fisher_z",
    score = "sem_bic",
    alpha = 0.05
  )
  disco(tpc_example, grasp_fci_tetrad, knowledge = kn)

  # or using grasp_fci_tetrad directly
  grasp_fci_tetrad <- grasp_fci_tetrad |> set_knowledge(kn)
  grasp_fci_tetrad(tpc_example)
}
#> 
#> ── caugi graph ─────────────────────────────────────────────────────────────────
#> Graph class: UNKNOWN
#> 
#> ── Edges ──
#> 
#>   from      edge  to       
#>   <chr>     <chr> <chr>    
#> 1 child_x2  o-o   child_x1 
#> 2 child_x2  o->   oldage_x5
#> 3 child_x2  o-o   youth_x4 
#> 4 oldage_x5 -->   oldage_x6
#> 5 youth_x3  o->   oldage_x5
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
