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

- `message`: Character, a message describing the status.

## Examples

``` r
check_tetrad_install()
#> Installed: FALSE 
#> Version: NULL 
#> Message: Tetrad directory not configured. Call install_tetrad()
#>                        to install it. 
```
