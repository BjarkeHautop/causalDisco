# causalDiscoSearch – an R6 class frontend for **causalDisco**

This class implements the search algorithms from the causalDisco
package, which wraps and adds temporal order to pcalg algorithms. It
allows to set the data, sufficient statistics, test, score, and
algorithm.

## See also

[`knowledge`](https://bjarkehautop.github.io/causalDisco/reference/knowledge.md).

## Public fields

- `data`:

  A `data.frame` holding the data set currently attached to the search
  object. Can be set with `set_data()`.

- `score`:

  A function that will be used to build the score, when data is set. Can
  be set with `$set_score()`. Recognized values are:

  - `tbic` - Temporal BIC score for Gaussian data. See
    [`TemporalBIC`](https://bjarkehautop.github.io/causalDisco/reference/TemporalBIC-class.md)

  - `tbdeu` - Temporal BDeu score for discrete data. See
    [`TemporalBDeu`](https://bjarkehautop.github.io/causalDisco/reference/TemporalBDeu-class.md).

- `test`:

  A function that will be used to test independence. Can be set with
  `$set_test()`. Recognized values are:

  - `fisher_z` - Fisher Z test for Gaussian data. See
    [`corTest`](https://bjarkehautop.github.io/causalDisco/reference/corTest.md).

  - `reg` - Regression test for discrete or binary data. See
    [`regTest`](https://bjarkehautop.github.io/causalDisco/reference/regTest.md).

- `alg`:

  A function that will be used to run the search algorithm. Can be set
  with `$set_alg()`. Recognized values are:

  - `tpc` - TPC algorithm. See
    [`tpc`](https://bjarkehautop.github.io/causalDisco/reference/tpc.md).

  - `tfci` - TFCI algorithm. See
    [`tfci`](https://bjarkehautop.github.io/causalDisco/reference/tfci.md).

  - `tges` - TGES algorithm. See
    [`tges`](https://bjarkehautop.github.io/causalDisco/reference/tges.md).

- `params`:

  A list of parameters for the test and algorithm. Can be set with
  `$set_params()`. TODO: not secure yet in terms of distributing
  arguments. Use with caution.

- `suff_stat`:

  Sufficient statistic. The format and contents of the sufficient
  statistic depends on which test is being used.

- `knowledge`:

  A `knowledge` object holding background knowledge.

## Methods

### Public methods

- [`causalDiscoSearch$new()`](#method-causalDiscoSearch-new)

- [`causalDiscoSearch$set_params()`](#method-causalDiscoSearch-set_params)

- [`causalDiscoSearch$set_data()`](#method-causalDiscoSearch-set_data)

- [`causalDiscoSearch$set_suff_stat()`](#method-causalDiscoSearch-set_suff_stat)

- [`causalDiscoSearch$set_test()`](#method-causalDiscoSearch-set_test)

- [`causalDiscoSearch$set_score()`](#method-causalDiscoSearch-set_score)

- [`causalDiscoSearch$set_alg()`](#method-causalDiscoSearch-set_alg)

- [`causalDiscoSearch$set_knowledge()`](#method-causalDiscoSearch-set_knowledge)

- [`causalDiscoSearch$run_search()`](#method-causalDiscoSearch-run_search)

- [`causalDiscoSearch$clone()`](#method-causalDiscoSearch-clone)

------------------------------------------------------------------------

### Method `new()`

Constructor for the `causalDiscoSearch` class.

#### Usage

    causalDiscoSearch$new()

------------------------------------------------------------------------

### Method `set_params()`

Sets the parameters for the test and algorithm.

#### Usage

    causalDiscoSearch$set_params(params)

#### Arguments

- `params`:

  A list of parameters to set.

------------------------------------------------------------------------

### Method `set_data()`

Sets the data for the search algorithm.

#### Usage

    causalDiscoSearch$set_data(data, set_suff_stat = TRUE)

#### Arguments

- `data`:

  A `data.frame` or a `matrix` containing the data.

- `set_suff_stat`:

  Logical; whether to set the sufficient statistic.

------------------------------------------------------------------------

### Method `set_suff_stat()`

Sets the sufficient statistic for the data.

#### Usage

    causalDiscoSearch$set_suff_stat()

------------------------------------------------------------------------

### Method `set_test()`

Sets the test for the search algorithm.

#### Usage

    causalDiscoSearch$set_test(method, alpha = 0.05)

#### Arguments

- `method`:

  A string specifying the type of test to use.

- `alpha`:

  Significance level for the test.

------------------------------------------------------------------------

### Method `set_score()`

Sets the score for the search algorithm.

#### Usage

    causalDiscoSearch$set_score(method, params = list())

#### Arguments

- `method`:

  A string specifying the type of score to use.

- `params`:

  A list of parameters to pass to the score function.

------------------------------------------------------------------------

### Method `set_alg()`

Sets the algorithm for the search.

#### Usage

    causalDiscoSearch$set_alg(method)

#### Arguments

- `method`:

  A string specifying the type of algorithm to use.

------------------------------------------------------------------------

### Method [`set_knowledge()`](https://bjarkehautop.github.io/causalDisco/reference/set_knowledge.md)

Sets the background knowledge for the search with a `knowledge` object.

#### Usage

    causalDiscoSearch$set_knowledge(kn, directed_as_undirected = FALSE)

#### Arguments

- `kn`:

  A `knowledge` object.

- `directed_as_undirected`:

  Logical; whether to treat directed edges in the knowledge as
  undirected. Default is `FALSE`. This is due to the nature of how
  `pcalg` handles background knowledge when using
  [`skeleton`](https://rdrr.io/pkg/pcalg/man/skeleton.html) under the
  hood in
  [`tpc`](https://bjarkehautop.github.io/causalDisco/reference/tpc.md)
  and
  [`tfci`](https://bjarkehautop.github.io/causalDisco/reference/tfci.md).

------------------------------------------------------------------------

### Method `run_search()`

Runs the search algorithm on the data.

#### Usage

    causalDiscoSearch$run_search(data = NULL, set_suff_stat = TRUE)

#### Arguments

- `data`:

  A `data.frame` or a `matrix` containing the data.

- `set_suff_stat`:

  Logical; whether to set the sufficient statistic

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    causalDiscoSearch$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
### causalDisco_search R6 class example ###

# Generally, we do not recommend using the R6 classes directly, but rather
# use the disco() or any method function, for example pc(), instead.

data(tpcExample)

# small toy dataset
dat <- head(tpcExample, 50)

# background knowledge (tiers + one exogenous var)
kn <- knowledge(
  dat,
  tier(
    child ~ starts_with("child"),
    youth ~ starts_with("youth"),
    old ~ starts_with("oldage")
  )
)

# Recommended (TPC example):
my_tpc <- tpc(engine = "causalDisco", test = "fisher_z", alpha = 0.05)
result <- disco(data = dat, method = my_tpc, knowledge = kn)
plot(result)


# or
my_tpc <- my_tpc |>
  set_knowledge(kn)
result <- my_tpc(dat)
plot(result)

# Using R6 class:

# --- Constraint-based: TPC ----------------------------------------------------
s_tpc <- causalDiscoSearch$new()
s_tpc$set_params(list(verbose = FALSE))
s_tpc$set_test("fisher_z", alpha = 0.2)
s_tpc$set_alg("tpc")
s_tpc$set_knowledge(kn, directed_as_undirected = TRUE)
s_tpc$set_data(dat)
res_tpc <- s_tpc$run_search()
print(res_tpc)
#> 
#> ── Knowledge object ────────────────────────────────────────────────────────────
#> 
#> 
#> ── Tiers ──
#> 
#>   label
#> 1 child
#> 2 youth
#> 3 old  
#> 
#> ── Variables ──
#> 
#>   var       tier 
#> 1 child_x1  child
#> 2 child_x2  child
#> 3 youth_x3  youth
#> 4 youth_x4  youth
#> 5 oldage_x5 old  
#> 6 oldage_x6 old  
#> 

# Switch to TFCI on the same object (reuses suff_stat/test)
s_tpc$set_alg("tfci")
res_tfci <- s_tpc$run_search()
print(res_tfci)
#> ── Knowledge object ────────────────────────────────────────────────────────────
#> 
#> 
#> ── Tiers ──
#> 
#>   label
#> 1 child
#> 2 youth
#> 3 old  
#> 
#> ── Variables ──
#> 
#>   var       tier 
#> 1 child_x1  child
#> 2 child_x2  child
#> 3 youth_x3  youth
#> 4 youth_x4  youth
#> 5 oldage_x5 old  
#> 6 oldage_x6 old  
#> 

# --- Score-based: TGES --------------------------------------------------------
s_tges <- causalDiscoSearch$new()
s_tges$set_score("tbic") # Gaussian temporal score
s_tges$set_alg("tges")
s_tges$set_data(dat, set_suff_stat = FALSE) # suff stat not used for TGES
s_tges$set_knowledge(kn)
res_tges <- s_tges$run_search()
print(res_tges)
#> ── Knowledge object ────────────────────────────────────────────────────────────
#> 

# --- Intentional error demonstrations ----------------------------------------

# run_search() without setting an algorithm
try(causalDiscoSearch$new()$run_search(dat))
#> Error : Test must be set before sufficient statistic.

# set_suff_stat() requires data and test first
s_err <- causalDiscoSearch$new()
try(s_err$set_suff_stat()) # no data & no test
#> Error : Data must be set before sufficient statistic.
s_err$set_data(dat, set_suff_stat = FALSE)
try(s_err$set_suff_stat()) # no test
#> Error : Test must be set before sufficient statistic.

# unknown test / score / algorithm
try(causalDiscoSearch$new()$set_test("not_a_test"))
#> Error : Unknown method: not_a_test
try(causalDiscoSearch$new()$set_score("not_a_score"))
#> Error : Unknown score type using causalDisco engine: not_a_score
try(causalDiscoSearch$new()$set_alg("not_an_alg"))
#> Error : Unknown method type using causalDisco engine: not_an_alg

# set_knowledge() requires a `knowledge` object
try(causalDiscoSearch$new()$set_knowledge(list(not = "knowledge")))
#> Error : Input must be a knowledge instance.
```
