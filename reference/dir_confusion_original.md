# Compute confusion matrix for comparing two adjacency matrices

Two adjacency matrices are compared either in terms of adjacencies
(`type = "adj"`) or orientations (`type = "dir"`).

## Usage

``` r
dir_confusion_original(est_amat, true_amat)
```

## Arguments

- est_amat:

  The estimated adjacency matrix, or `tpdag`/`cpdag` object as obtained
  from
  [tpc](https://bjarkehautop.github.io/causalDisco/reference/tpc.md) or
  [pc](https://bjarkehautop.github.io/causalDisco/reference/pc.md)

- true_amat:

  The true adjacency matrix, or `tpdag`/`cpdag` object as obtained from
  [tpc](https://bjarkehautop.github.io/causalDisco/reference/tpc.md) or
  [pc](https://bjarkehautop.github.io/causalDisco/reference/pc.md)

## Value

A list with entries `$tp` (number of true positives), `$tn` (number of
true negatives), `$fp` (number of false positives), and `$tp` (number of
false negatives).

## Details

This is an old version of the function, included for possible backwards
compatibility. Edges are scored as follows: A correctly unoriented edge
counts as a true negative (TN). An undirected edge that should have been
directed counts as a false negative (FN). A directed edge that should
have been undirected counts as a false positive (FP). A directed edge
oriented in the correct direction counts as a true positive (TP). A
directed edge oriented in the incorrect direction counts as both a false
positive (FP) and a false negative (FN).

## Examples

``` r
if (FALSE) { # \dontrun{
#############################################################################
# Compare two adjacency matrices ############################################
#############################################################################
x1 <- matrix(c(
  0, 0, 0, 0,
  1, 0, 1, 0,
  1, 0, 0, 0,
  0, 0, 1, 0
), 4, 4, byrow = TRUE)
x2 <- matrix(c(
  0, 0, 1, 0,
  1, 0, 0, 0,
  0, 0, 0, 0,
  1, 0, 1, 0
), 4, 4, byrow = TRUE)

# confusion matrix for adjacencies
confusion(x2, x1)

# confusion matrix for conditional orientations
confusion(x2, x1, type = "dir")
} # }
```
