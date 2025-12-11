# Regression-based information loss test

We test whether `x` and `y` are associated, given `S` using a
generalized linear model.

## Usage

``` r
reg_test(x, y, S, suffStat)
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

## Details

All included variables should be either numeric or binary. If `y` is
binary, a logistic regression model is fitted. If `y` is numeric, a
linear regression model is fitted. `x` and `S` are included as
explanatory variables. Any numeric variables among `x` and `S` are
modeled with spline expansions (natural splines, 3 df). This model is
tested against a numeric where `x` (including a possible spline
expansion) has been left out using a likelihood ratio test. The model is
fitted in both directions (interchanging the roles of `x` and `y`). The
final p-value is the maximum of the two obtained p-values.
