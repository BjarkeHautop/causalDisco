# Simulated mixed data example

A dataset combining continuous and categorical variables. The first
three variables are replaced with categorical versions from `cat_data`.

## Usage

``` r
mix_data
```

## Format

A data.frame with 1000 rows and 5 variables.

- X1:

  Categorical, from `cat_data$X1`.

- X2:

  Categorical, from `cat_data$X2`.

- X3:

  Categorical, from `cat_data$X3`.

- Z:

  Numeric, same as `num_data$Z`.

- Y:

  Numeric, same as `num_data$Y`.

## Details

The R code used to generate this dataset is as follows:

    data(num_data)
    data(cat_data)
    mix_data <- num_data
    mix_data$X1 <- cat_data$X1
    mix_data$X2 <- cat_data$X2
    mix_data$X3 <- cat_data$X3

## See also

[num_data](https://bjarkehautop.github.io/causalDisco/reference/num_data.md),
[cat_data](https://bjarkehautop.github.io/causalDisco/reference/cat_data.md)

## Examples

``` r
data(mix_data)
```
