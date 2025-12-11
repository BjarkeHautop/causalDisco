# Convert essential graph to adjacency matrix

Extracts the adjacency matrix from an
[`EssGraph-class`](https://rdrr.io/pkg/pcalg/man/EssGraph-class.html)
object. This object is returned by score-based causal discovery
algorithms in the pcalg package.

## Usage

``` r
essgraph_to_amat(essgraph, p = length(essgraph$field(".nodes")))
```

## Arguments

- essgraph:

  An `EssGraph` object

- p:

  The number of nodes in the graph

## Value

An adjacency matrix (square matrix with 0/1 entries).
