# Structural hamming distance between adjacency matrices

Computes the structural hamming distance between two adjacency matrices.
This implementation is a modification of the
[`pcalg::shd()`](https://rdrr.io/pkg/pcalg/man/shd.html) function from
the pcalg package, but here we avoid working on the heavy `graphNEL`
objects for representing graphs that are used in the pcalg package.

## Usage

``` r
shd(est_amat, true_amat)
```

## Arguments

- est_amat:

  Estimated adjacency matrix

- true_amat:

  True adjacency matrix

## Value

A numeric (a non-negative integer).

## Details

Note that the function is symmetric in the two inputted adjacency
matrices.
