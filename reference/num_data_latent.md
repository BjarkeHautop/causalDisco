# Simulated numerical data example with latent variable

A dataset similar to `num_data` but with the variable `Z` treated as a
latent variable and thus omitted.

## Usage

``` r
num_data_latent
```

## Format

A data.frame with 1000 rows and 4 variables.

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

    data(num_data)
    num_data_latent <- num_data[, c("X1", "X2", "X3", "Y")]

## See also

[num_data](https://bjarkehautop.github.io/causalDisco/reference/num_data.md)

## Examples

``` r
data(num_data_latent)
```
