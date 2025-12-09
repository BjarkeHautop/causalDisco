# Install Temurin JDK 25

This function installs the Eclipse Temurin JDK 25 on the user's system.
It works on Windows and macOS operating systems. For Linux we assume the
user can install Java via their package manager. The JDK is installed in
the user's home directory.

## Usage

``` r
install_java(force = FALSE)
```

## Arguments

- force:

  Logical; if TRUE, forces re-installation even if JDK is already
  installed.

## Examples

``` r
if (FALSE) { # \dontrun{
install_java()
} # }
```
