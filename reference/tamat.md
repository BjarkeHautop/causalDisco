# Make a temporal adjacency matrix

Make a temporal adjacency matrix

## Usage

``` r
tamat(amat, order, type = NULL)
```

## Arguments

- amat:

  Adjacency matrix. Row names and column names should be identical and
  be the names of the variables/nodes. Variable names should be prefixed
  with their period, e.g. "child_x" for variable "x" at period "child"

- order:

  A character vector with the periods in their order.

- type:

  The type of adjacency matrix, must be one of `"pdag"` or `"ag"`. If
  `NULL` (default), the function first checks for a `tamat_type`
  attribute in the input object and makes sure the output matches that,
  and if no the input does not have this attribute, it is set to
  `"tpdag"`. Otherwise, the user can specify a type manually as follows:
  `"pdag"` should be used for directed graphs, namely DAG, CPDAG, MPDAG,
  TPDAG and PDAG adjacency matrices, i.e. adjacency matrices where
  A(i,j) = A(j,i) = 1 is interpreted as an undirected edge. `"ag"` may
  be used for ADMGs, MAGs, PAGs and TPAGs, where further possible
  arrowhead options are available (see
  [amat](https://bjarkehautop.github.io/causalDisco/reference/amat.md))

## Value

A `tamat` object, which is a matrix with a "order" attribute(a character
vector listing the temporal order of the variables in the adjacency
matrix).
