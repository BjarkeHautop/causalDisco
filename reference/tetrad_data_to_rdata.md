# Convert a Tetrad Java DataSet to an R data frame

Converts a Tetrad `DataSet` (Java) into a base R data frame, preserving
variable names and mapping variable kinds to matching R types.

## Usage

``` r
tetrad_data_to_rdata(data)
```

## Arguments

- data:

  A Java object of class `edu.cmu.tetrad.data.DataSet`.

## Value

A data frame with the same dimensions and names as `data`.

## Details

Continuous variables become `double`, discrete variables become
`integer`. Missing values (`null`, `Double.NaN`, or `Integer.MIN_VALUE`)
are converted to the corresponding typed `NA`. Unknown variable kinds
fall back to character with `NA_character_` for missing entries.

Note, that the factor levels get converted to integer codes when passing
to Tetrad and back to R. So if a factor had levels "a", "b", "c" then
converting to Tetrad and back to R, they will be represented as levels
1, 2, 3 in R.

The JVM must be initialized and Tetrad classes available on the class
path.

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
