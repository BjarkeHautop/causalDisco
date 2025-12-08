# Check Tetrad Installation

Check Tetrad Installation

## Usage

``` r
check_tetrad_install(version = getOption("causalDisco.tetrad.version"))
```

## Arguments

- version:

  Character. The version of Tetrad to check. Default is the value of
  `getOption("causalDisco.tetrad.version")`.

## Value

A list with elements:

- `installed`: Logical, whether Tetrad is installed.

- `version`: Character or NULL, the installed version if found.

- `java_ok`: Logical, whether Java \>= 21.

- `java_version`: Character, the installed Java version.

- `message`: Character, a message describing the status.

## Examples

``` r
check_tetrad_install()
#> $installed
#> [1] FALSE
#> 
#> $version
#> NULL
#> 
#> $java_ok
#> [1] NA
#> 
#> $java_version
#> NULL
#> 
#> $message
#> [1] "Tetrad directory not configured. Call install_tetrad() to install it."
#> 
```
