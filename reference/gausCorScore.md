# Gaussian L0 score computed on correlation matrix

The score is intended to be used with score-based causal discovery
algorithms from the pcalg package. It is identical to the
[`GaussL0penObsScore-class`](https://rdrr.io/pkg/pcalg/man/GaussL0penObsScore-class.html),
except that it takes in a correlation matrix instead of the full data
set.
[`GaussL0penObsScore-class`](https://rdrr.io/pkg/pcalg/man/GaussL0penObsScore-class.html).

## Usage

``` r
gausCorScore(cormat, n, p = NULL, lambda = NULL, ...)
```

## Arguments

- cormat:

  A correlation matrix. Needs to be symmetric.

- n:

  The number of observations in the dataset that the correlation matrix
  was computed from.

- p:

  The number of variables. This is inferred from the cormat if not
  supplied.

- lambda:

  Penalty to use for the score. If `NULL` (default), the BIC score
  penalty is used. See
  [`GaussL0penObsScore-class`](https://rdrr.io/pkg/pcalg/man/GaussL0penObsScore-class.html)
  for further details.

- ...:

  Other arguments passed along to
  [`GaussL0penObsScore-class`](https://rdrr.io/pkg/pcalg/man/GaussL0penObsScore-class.html).

## Value

A `Score` object (S4), see
[`Score-class`](https://rdrr.io/pkg/pcalg/man/Score-class.html).

## Examples

``` r
# Simulate data and compute correlation matrix
x1 <- rnorm(100)
x2 <- rnorm(100)
x3 <- x1 + x2 + rnorm(100)
d <- data.frame(x1, x2, x3)
cmat <- cor(d)

# Use gausCorScore with pcalg::ges()
pcalg::ges(gausCorScore(cmat, n = 100))
#> $essgraph
#> Reference class object of class "EssGraph"
#> Field ".nodes":
#> [1] "x1" "x2" "x3"
#> Field ".in.edges":
#> $x1
#> integer(0)
#> 
#> $x2
#> integer(0)
#> 
#> $x3
#> [1] 1 2
#> 
#> Field ".targets":
#> [[1]]
#> integer(0)
#> 
#> Field ".score":
#> Reference class object of class "GaussL0penObsScore"
#> Field ".nodes":
#> [1] "x1" "x2" "x3"
#> Field "decomp":
#> [1] TRUE
#> Field "c.fcn":
#> [1] "gauss.l0pen.scatter"
#> Field "pp.dat":
#> $targets
#> $targets[[1]]
#> integer(0)
#> 
#> 
#> $vertex.count
#> [1] 3
#> 
#> $data.count
#> [1] 100 100 100
#> 
#> $total.data.count
#> [1] 100
#> 
#> $local.score
#> function (vertex, parents) 
#> local.score(vertex, parents)
#> <environment: 0x555d750e7bf0>
#> 
#> $global.score
#> function (edges) 
#> global.score(vertex, parents)
#> <environment: 0x555d750e7bf0>
#> 
#> $local.fit
#> function (vertex, parents) 
#> local.fit(vertex, parents)
#> <environment: 0x555d750e7bf0>
#> 
#> $global.fit
#> function (edges) 
#> global.fit(vertex, parents)
#> <environment: 0x555d750e7bf0>
#> 
#> $lambda
#> [1] 2.302585
#> 
#> $intercept
#> [1] FALSE
#> 
#> $scatter.index
#> [1] 1 1 1
#> 
#> $scatter
#> $scatter[[1]]
#>          x1       x2       x3   
#> x1 99.00000 17.02839 69.87932  0
#> x2 17.02839 99.00000 59.03313  0
#> x3 69.87932 59.03313 99.00000  0
#>     0.00000  0.00000  0.00000 99
#> 
#> 
#> Field ".pardag.class":
#> [1] "GaussParDAG"
#> Field ".format":
#> [1] "scatter"
#> 
#> $repr
#> Reference class object of class "GaussParDAG"
#> Field ".nodes":
#> [1] "x1" "x2" "x3"
#> Field ".in.edges":
#> [[1]]
#> integer(0)
#> 
#> [[2]]
#> integer(0)
#> 
#> [[3]]
#> [1] 1 2
#> 
#> Field ".params":
#> [[1]]
#> [1] 0.99 0.00
#> 
#> [[2]]
#> [1] 0.99 0.00
#> 
#> [[3]]
#> [1] 0.2666884 0.0000000 0.6216794 0.4893629
#> 
#> 
```
