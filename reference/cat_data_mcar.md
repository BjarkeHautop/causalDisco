# Simulated categorical data with MCAR (missing completely at random)

A dataset based on `cat_data` where some values are randomly removed to
simulate MCAR.

## Usage

``` r
cat_data_mcar
```

## Format

A data.frame with 1000 rows and 5 variables.

- X1:

  Categorical, 100 values set to NA (MCAR).

- X2:

  Categorical, 50 values set to NA (MCAR).

- X3:

  Categorical, 200 values set to NA (MCAR).

- Z:

  Categorical, no missing values.

- Y:

  Categorical, no missing values.

## Details

The R code used to generate this dataset is as follows:

    data(cat_data)
    cat_data_mcar <- cat_data
    set.seed(1405)
    cat_data_mcar$X1[sample(1:n, 100)] <- NA
    cat_data_mcar$X2[sample(1:n, 50)] <- NA
    cat_data_mcar$X3[sample(1:n, 200)] <- NA

## See also

[cat_data](https://bjarkehautop.github.io/causalDisco/reference/cat_data.md)

## Examples

``` r
data(cat_data_mcar)
```
