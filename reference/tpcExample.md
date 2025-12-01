# Simulated data example

A small simulated data example intended to showcase the TPC algorithm.
Note that the variable name prefixes defines with period they are
related to ("child", "youth" or "oldage").

## Usage

``` r
tpcExample
```

## Format

A data.frame with 200 rows and 6 variables.

- child_x1:

  Structural equation: \\X1 := \epsilon1\\ with \\\epsilon1 ~
  Unif{0,1}\\

- child_x2:

  Structural equation: \\X2 := 2 \* X1 + \epsilon2\\ with \\\epsilon2 ~
  N(0,1)\\

- youth_x3:

  Structural equation: \\X3 := \epsilon3\\ with \\\epsilon3 ~ Unif{0,
  1}\\

- youth_x4:

  Structural equation: \\X4 := X2 + \epsilon4\\ with \\\epsilon4 ~
  N(0,1)\\

- oldage_x5:

  Structural equation: \\X5 := X3^2 + X3 - 3 \* X2 + \epsilon5\\ with
  \\\epsilon5 ~ N(0,1)\\

- oldage_x6:

  Structural equation: \\X6 := X4^3 + X4^2 + 2 \* X5 + \epsilon6\\ with
  \\\epsilon6 ~ N(0,1)\\

## References

Petersen, AH; Osler, M and Ekstrøm, CT (2021): Data-Driven Model
Building for Life-Course Epidemiology, American Journal of Epidemiology.

## Examples

``` r
data(tpcExample)
```
