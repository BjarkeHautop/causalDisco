# Convert graphNEL object to adjacency matrix

Convert graphNEL object to adjacency matrix

## Usage

``` r
graph2amat(graph, toFrom = TRUE, type = "pdag")
```

## Arguments

- graph:

  A graphNEL object.

- toFrom:

  Logical indicating whether the resulting adjacency matrix is "to-from"
  (default), or "from-to", see details.

- type:

  The type of adjacency matrix, must be one of `"pdag"` or `"ag"`.
  `"pdag"` should be used for directed graphs, namely DAG, CPDAG, MPDAG,
  TPDAG and PDAG adjacency matrices, i.e. adjacency matrices where
  A(i,j) = A(j,i) = 1 is interpreted as an undirected edge. `"ag"` may
  be used for ADMGs, MAGs, PAGs and TPAGs, where further possible
  arrowhead options are available (see
  [amat](https://bjarkehautop.github.io/causalDisco/reference/amat.md))

## Details

A "to-from" `pdag` adjacency matrix is encoded as follows: A(i,j) = 1
and A(j,i) = 0 means there is an edge i -\> j. A(j,i) = 1 and A(i,j) = 0
means there is an edge j -\> i. A(i,j) = 1 and A(j,i) = 1 means there is
an undirected edge between i and j, i - j. A(i,j) = 0 and A(j,i) = 0
means there is no edge between i and j.

A "from-to" adjacency matrix is the transpose of a "to-from" adjacency
matrix. A "from-to" `pdag` adjacency matrix is hence encoded as follows:
A(i,j) = 1 and A(j,i) = 0 means there is an edge j -\> i. A(j,i) = 1 and
A(i,j) = 0 means there is an edge i -\> j. A(i,j) = 1 and A(j,i) = 1
means there is an undirected edge between i and j, i - j. A(i,j) = 0 and
A(j,i) = 0 means there is no edge between i and j.

See [amat](https://bjarkehautop.github.io/causalDisco/reference/amat.md)
for details about how an `ag` adjacency matrix is encoded.
