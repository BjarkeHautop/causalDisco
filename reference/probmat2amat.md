# Convert a matrix of probabilities into an adjacency matrix

Convert a matrix of probabilities into an adjacency matrix

## Usage

``` r
probmat2amat(
  probmat,
  threshold,
  method = "cutoff",
  keep_vnames = TRUE,
  graph_criterion = "pdag",
  deletesym = FALSE
)
```

## Arguments

- probmat:

  Square matrix of probabilities.

- threshold:

  Value between 0 and 1. Any probabilities lower than this value will be
  set to 0 (no arrowhead).

- method:

  Either `"cutoff"` or `"bpco"`, see details.

- keep_vnames:

  If `TRUE`, variable names (provided as rownames in the input probmat)
  will be preserved in the output.

- graph_criterion:

  Which criterion to check if the output graph fulfills for the bpco
  method. Should be one of `"dag"`, `"pdag"` or `"cpdag"` or `NULL`.
  Choosing `NULL` (the default) puts no further restrictions on the
  output. See
  [`isValidGraph`](https://rdrr.io/pkg/pcalg/man/isValidGraph.html) for
  definitions.

- deletesym:

  If `TRUE`, edges are deleted symmetrically in the bcpo method. This
  means that instead of removing arrowheads (setting singular elements
  to 0), the procedure removes full edges (setting both potential
  arrowheads for the given edge to zero). This only makes a difference
  if the graph may include undirected edges, which should be encoded as
  bidirected edges.

## Value

A square matrix of probabilities (all entries in \[0,1\]).

## Details

Two methods for converting the probability matrix into an adjacency
matrix are implemented. First, the cutoff-method (`method = "cutoff"`)
simply uses a threshold value and sets all values below that to zero in
the outputted adjacency matrix. No checks are performed to ensure that
the resulting matrix is a proper dag/pdag/cpdag adjacency matrix.
Second, the backwards PC orientation method (`method = "bpco"`) first
uses a cutoff, and then sets further elements to zero until the
resulting matrix can be converted into a proper adjacency matrix (using
the graph criterion specified in the `graph_criterion` argument) by
applying the PC algorithm orientation rules. See Petersen et al. 2022
for further details.

## References

Petersen, Anne Helby, et al. "Causal discovery for observational
sciences using supervised machine learning." arXiv preprint
arXiv:2202.12813 (2022).

## Examples

``` r
# Make random probability matrix that can be
# converted into adjacency matrix
pmat <- matrix(runif(25, 0, 1), 5, 5)
diag(pmat) <- 0

# Convert to adjacency matrix using cutoff-method (threshold = 0.5)
probmat2amat(pmat, threshold = 0.5)
#>      [,1] [,2] [,3] [,4] [,5]
#> [1,]    0    1    1    0    0
#> [2,]    1    0    1    1    0
#> [3,]    0    0    0    1    0
#> [4,]    1    1    0    0    1
#> [5,]    0    1    0    1    0

# Convert to adjacency matrix using BPCO-method (threshold = 0.5)
probmat2amat(pmat, threshold = 0.5, method = "bpco")
#>      [,1] [,2] [,3] [,4] [,5]
#> [1,]    0    1    1    1    0
#> [2,]    1    0    0    1    1
#> [3,]    1    0    0    1    0
#> [4,]    1    1    1    0    1
#> [5,]    0    1    0    1    0
```
