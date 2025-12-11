# Test for vanishing partial correlations

This function simply calls the
[`gaussCItest`](https://rdrr.io/pkg/pcalg/man/condIndFisherZ.html)
function from the `pcalg` package.

## Usage

``` r
cor_test(x, y, S, suffStat)
```

## Arguments

- x:

  Index of x variable

- y:

  Index of y variable

- S:

  Index of S variable(s), possibly NULL

- suffStat:

  Sufficient statistic; list with data, binary variables and order.

## Value

A numeric, which is the p-value of the test.
