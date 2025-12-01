# List of edges in adjacency matrix

Produces a list of edges from an adjacency matrix.

## Usage

``` r
edges(amat)
```

## Arguments

- amat:

  An adjacency matrix.

## Value

A list consisting of two lists: One for oriented edges (`$dir`), and one
for unoriented edges (`$undir`).
