# Evaluate adjacency matrix estimation

Applies several different metrics to evaluate difference between
estimated and true adjacency matrices. Intended to be used to evaluate
performance of causal discovery algorithms.

## Usage

``` r
# S3 method for class 'array'
evaluate(est, true, metrics, ...)
```

## Arguments

- est:

  Estimated adjacency matrix/matrices.

- true:

  True adjacency matrix/matrices.

- metrics:

  List of metrics, see details.

- ...:

  Further arguments that depend on input type. Currently only `list.out`
  is allowed, and only if the first argument is a matrix (see details
  under Value).

## Value

A data.frame with one column for each computed metric and one row per
evaluated matrix pair. Adjacency metrics are prefixed with "adj\_",
orientation metrics are prefixed with "dir\_", other metrics do not get
a prefix. If the first argument is a matrix, `list.out = TRUE` can be
used to change the return object to a list instead. This list will
contain three lists, where adjacency, orientation and other metrics are
reported, respectively.

## Details

Two options for input are available: Either `est` and `true` can be two
adjacency matrices, or they can be two arrays of adjacency matrices. The
arrays should have shape \\n \* p \* p\\ where n is the number of of
matrices, and p is the number of nodes/variables.

The metrics should be given as a list with slots `$adj`, `$dir` and
`$other`. Metrics under `$adj` are applied to the adjacency confusion
matrix, while metrics under `$dir` are applied to the conditional
orientation confusion matrix (see
[confusion](https://bjarkehautop.github.io/causalDisco/reference/confusion.md)).
Metrics under `$other` are applied without computing confusion matrices
first.

Available metrics to be used with confusion matrices are
[precision](https://bjarkehautop.github.io/causalDisco/reference/precision.md),
[recall](https://bjarkehautop.github.io/causalDisco/reference/recall.md),
[specificity](https://bjarkehautop.github.io/causalDisco/reference/specificity.md),
[FOR](https://bjarkehautop.github.io/causalDisco/reference/FOR.md),
[FDR](https://bjarkehautop.github.io/causalDisco/reference/FDR.md),
[NPV](https://bjarkehautop.github.io/causalDisco/reference/NPV.md),
[F1](https://bjarkehautop.github.io/causalDisco/reference/F1.md) and
[G1](https://bjarkehautop.github.io/causalDisco/reference/G1.md). The
user can supply custom metrics as well: They need to have the confusion
matrix as their first argument and should return a numeric.

Available metrics to be used as "other" is:
[shd](https://bjarkehautop.github.io/causalDisco/reference/shd.md). The
user can supply custom metrics as well: They need to have arguments
`est_amat` and `true_amat`, where the former is the estimated adjacency
matrix and the latter is the true adjacency matrix. The metrics should
return a numeric.
