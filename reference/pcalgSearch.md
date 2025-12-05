# R6 Interface to pcalg Search Algorithms

This class implements the search algorithms from the pcalg package. It
allows to set the data, sufficient statistics, test, score, and
algorithm.

## Public fields

- `data`:

  A `data.frame` holding the data set currently attached to the search
  object. Can be set with `set_data()`.

- `score`:

  A function that will be used to build the score, when data is set. Can
  be set with `$set_score()`. Recognized values are:

  - `sem_bic` - BIC score for Gaussian observed data. See
    [`GaussL0penObsScore-class`](https://rdrr.io/pkg/pcalg/man/GaussL0penObsScore-class.html).

  - `sem_bic_int` - BIC score for Gaussian data from jointly
    interventional and observational Gaussian data. See
    [`GaussL0penIntScore-class`](https://rdrr.io/pkg/pcalg/man/GaussL0penIntScore-class.html).

- `test`:

  A function that will be used to test independence. Can be set with
  `$set_test()`. Recognized values are:

  - `fisher_z` - Fisher Z test for Gaussian data. See
    [`gaussCItest`](https://rdrr.io/pkg/pcalg/man/condIndFisherZ.html).

  - `g_square` - G square test for discrete data. See
    [`binCItest`](https://rdrr.io/pkg/pcalg/man/binCItest.html) and
    [`disCItest`](https://rdrr.io/pkg/pcalg/man/disCItest.html).

- `alg`:

  A function that will be used to run the search algorithm. Can be set
  with `$set_alg()`. Recognized values are:

  - `pc` - PC algorithm. See
    [`pc`](https://rdrr.io/pkg/pcalg/man/pc.html).

  - `fci` - FCI algorithm. See
    [`fci`](https://rdrr.io/pkg/pcalg/man/fci.html).

  - `ges` - GES algorithm. See
    [`ges`](https://rdrr.io/pkg/pcalg/man/ges.html).

- `params`:

  A list of parameters for the test and algorithm. Can be set with
  `$set_params()`. The parameters are passed to the test and algorithm
  functions.

- `suff_stat`:

  Sufficient statistic. The format and contents of the sufficient
  statistic depends on which test is being used.

- `continuous`:

  Logical; whether the sufficient statistic is for a continuous test. If
  both continuous and discrete are `TRUE`, the sufficient statistic is
  build for a mixed test.

- `discrete`:

  Logical; whether the sufficient statistic is for a discrete test. If
  both continuous and discrete are `TRUE`, the sufficient statistic is
  build for a mixed test.

- `knowledge`:

  A list of fixed constraints for the search algorithm.

- `adaptDF`:

  Logical; whether to adapt the degrees of freedom for discrete tests.

## Methods

### Public methods

- [`pcalgSearch$new()`](#method-pcalgSearch-new)

- [`pcalgSearch$set_params()`](#method-pcalgSearch-set_params)

- [`pcalgSearch$set_data()`](#method-pcalgSearch-set_data)

- [`pcalgSearch$set_suff_stat()`](#method-pcalgSearch-set_suff_stat)

- [`pcalgSearch$set_test()`](#method-pcalgSearch-set_test)

- [`pcalgSearch$set_score()`](#method-pcalgSearch-set_score)

- [`pcalgSearch$set_alg()`](#method-pcalgSearch-set_alg)

- [`pcalgSearch$set_knowledge()`](#method-pcalgSearch-set_knowledge)

- [`pcalgSearch$run_search()`](#method-pcalgSearch-run_search)

- [`pcalgSearch$clone()`](#method-pcalgSearch-clone)

------------------------------------------------------------------------

### Method `new()`

Constructor for the `pcalgSearch` class.

#### Usage

    pcalgSearch$new()

------------------------------------------------------------------------

### Method `set_params()`

Sets the parameters for the test and algorithm.

#### Usage

    pcalgSearch$set_params(params)

#### Arguments

- `params`:

  A list of parameters to set.

------------------------------------------------------------------------

### Method `set_data()`

Sets the data for the search algorithm.

#### Usage

    pcalgSearch$set_data(data, set_suff_stat = TRUE)

#### Arguments

- `data`:

  A `data.frame` or a `matrix` containing the data.

- `set_suff_stat`:

  Logical; whether to set the sufficient statistic. for the data.

------------------------------------------------------------------------

### Method `set_suff_stat()`

Sets the sufficient statistic for the data.

#### Usage

    pcalgSearch$set_suff_stat()

------------------------------------------------------------------------

### Method `set_test()`

Sets the test for the search algorithm.

#### Usage

    pcalgSearch$set_test(method, alpha = 0.05)

#### Arguments

- `method`:

  A string specifying the type of test to use.

- `alpha`:

  Significance level for the test.

------------------------------------------------------------------------

### Method `set_score()`

Sets the score for the search algorithm.

#### Usage

    pcalgSearch$set_score(method, params = list())

#### Arguments

- `method`:

  A string specifying the type of score to use.

- `params`:

  A list of parameters to pass to the score function.

------------------------------------------------------------------------

### Method `set_alg()`

Sets the algorithm for the search.

#### Usage

    pcalgSearch$set_alg(method)

#### Arguments

- `method`:

  A string specifying the type of algorithm to use.

------------------------------------------------------------------------

### Method [`set_knowledge()`](https://bjarkehautop.github.io/causalDisco/reference/set_knowledge.md)

Sets the knowledge for the search algorithm. Due to the nature of pcalg,
we cannot set knowledge before we run it on data. So we set the function
that will be used to build the fixed constraints, but it can first be
done when data is provided.

#### Usage

    pcalgSearch$set_knowledge(knowledge_obj, directed_as_undirected = FALSE)

#### Arguments

- `knowledge_obj`:

  A knowledge object that contains the fixed constraints.

- `directed_as_undirected`:

  Logical; whether to treat directed edges as undirected.

------------------------------------------------------------------------

### Method `run_search()`

Runs the search algorithm on the data.

#### Usage

    pcalgSearch$run_search(data = NULL, set_suff_stat = TRUE)

#### Arguments

- `data`:

  A `data.frame` or a `matrix` containing the data.

- `set_suff_stat`:

  Logical; whether to set the sufficient statistic

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    pcalgSearch$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
### pcalg_search R6 class examples ###

# Generally, we do not recommend using the R6 classes directly, but rather
# use the disco() or any method function, for example pc(), instead.

# Load data
data("tpcExample")

# Recommended:
pc(engine = "pcalg", test = "fisher_z")(tpcExample)
#> 
#> ── Knowledge object ────────────────────────────────────────────────────────────
#> 

# or
my_pc <- pc(engine = "pcalg", test = "fisher_z")
my_pc(tpcExample)
#> 
#> ── Knowledge object ────────────────────────────────────────────────────────────
#> 

# or
disco(data = tpcExample, method = my_pc)
#> 
#> ── Knowledge object ────────────────────────────────────────────────────────────
#> 

# Using R6 class:
s <- pcalgSearch$new()

s$set_test(method = "fisher_z", alpha = 0.05)
s$set_data(tpcExample)
s$set_alg("pc")

g <- s$run_search()

print(g)
#> 
#> ── Knowledge object ────────────────────────────────────────────────────────────
#> 
```
