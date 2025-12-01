# Print Tetrad check result

Print method for tetrad_check objects.

## Usage

``` r
# S3 method for class 'tetrad_check'
print(x, ...)
```

## Arguments

- x:

  A tetrad_check object.

- ...:

  Additional arguments (not used).

## Examples

``` r
causalDisco:::create_output(TRUE, "7.6.8", "Tetrad is installed.") |> print()
#> Installed: TRUE 
#> Version: 7.6.8 
#> Message: Tetrad is installed. 
```
