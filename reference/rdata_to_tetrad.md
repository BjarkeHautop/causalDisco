# Tetrad R Data Utilities

`tetrad_rdata_utils` provides functions to convert between R data frames
and Tetrad Java objects.

## Usage

``` r
rdata_to_tetrad(df, int_cols_as_cont = TRUE)
```

## Arguments

- df:

  A data frame to be converted to a Tetrad Java object.

- int_cols_as_cont:

  Logical, if `TRUE`, integer columns are treated as continuous. Default
  is `TRUE`, meaning integer columns are treated as continuous
  variables, as Tetrad does not support ordinal variables. If set to
  `FALSE`, this means that integer columns are treated as unordered
  factors.

## Value

A Tetrad Java object representing the data frame.

## Details

This function is made to be used internally with the TetradSearch class.
The function will copy the data into the Java heap, so be careful with
larger data frames. This function was provided by Joseph Ramsey, and
slightly modified by Frederik Fabricius-Bjerre.

## Examples

``` r
# Requires tetrad to be installed
if (check_tetrad_install()$installed && check_tetrad_install()$java_ok) {
  set.seed(1405)
  my_df <- data.frame(
    cont = rnorm(6),
    disc = as.integer(sample(0:2, 6, replace = TRUE))
  )

  # R -> Tetrad (DataSet)
  jds <- rdata_to_tetrad(my_df, int_cols_as_cont = FALSE)
  rJava::.jinstanceof(jds, "edu/cmu/tetrad/data/DataSet") # should be TRUE

  # Tetrad (DataSet) -> R
  df_roundtrip <- tetrad_data_to_rdata(jds)
  str(df_roundtrip)

  # Check types are preserved: cont is numeric (double), disc is integer
  stopifnot(is.numeric(df_roundtrip$cont), is.integer(df_roundtrip$disc))

  # Values should match (up to numeric tolerance)
  stopifnot(all.equal(my_df$cont, df_roundtrip$cont))
  stopifnot(identical(my_df$disc, df_roundtrip$disc))
}
```
