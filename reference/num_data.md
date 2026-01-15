# Simulated numerical data example

Simulated numerical data example

## Usage

``` r
num_data
```

## Format

A data.frame with 1000 rows and 5 variables.

- X1:

  Structural equation: \\X_1 := \sqrt{Z} + \epsilon_1\\ with
  \\\epsilon_1 \sim \mathrm{Unif}\[0, 2\]\\

- X2:

  Structural equation: \\X_2 := 2 \cdot X_3 - \epsilon_2\\ with
  \\\epsilon_2 \sim N(5, 1)\\

- X3:

  Structural equation: \\X_3 := \epsilon_3\\ with \\\epsilon_3 \sim
  \mathrm{Unif}\[5, 10\]\\

- Z:

  Structural equation: \\Z := \|\epsilon_4\|\\ with \\\epsilon_4 \sim
  N(10, 1)\\

- Y:

  Structural equation: \\Y := X_1^2 + X_2 - X_3 - Z + \epsilon_5\\ with
  \\\epsilon_5 \sim N(10, 1)\\

## Details

The R code used to generate this dataset is as follows:

    set.seed(1405)
    n <- 1000
    Z <- abs(rnorm(n, mean = 10))
    X1 <- sqrt(Z) + runif(n, min = 0, max = 2)
    X3 <- runif(n, min = 5, max = 10)
    X2 <- 2 * X3 - rnorm(n, mean = 5)
    Y  <- X1^2 + X2 - X3 - Z + rnorm(n, mean = 10)
    num_data <- data.frame(X1, X2, X3, Z, Y)

## Examples

``` r
data(num_data)
```
