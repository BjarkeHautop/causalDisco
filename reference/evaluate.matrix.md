# Evaluate adjacency matrix estimation

Applies several different metrics to evaluate difference between
estimated and true adjacency matrices. Intended to be used to evaluate
performance of causal discovery algorithms.

## Usage

``` r
# S3 method for class 'matrix'
evaluate(est, true, metrics, list_out = FALSE, ...)
```

## Arguments

- est:

  Estimated adjacency matrix/matrices.

- true:

  True adjacency matrix/matrices.

- metrics:

  List of metrics, see details.

- list_out:

  If `FALSE` (default), output is returned as a data.frame, otherwise it
  will be a list.

- ...:

  Further arguments that depend on input type. Currently only `list_out`
  is allowed, and only if the first argument is a matrix (see details
  under Value).

## Value

A data.frame with one column for each computed metric and one row per
evaluated matrix pair. Adjacency metrics are prefixed with "adj\_",
orientation metrics are prefixed with "dir\_", other metrics do not get
a prefix. If the first argument is a matrix, `list_out = TRUE` can be
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
[false_omission_rate](https://bjarkehautop.github.io/causalDisco/reference/false_omission_rate.md),
[fdr](https://bjarkehautop.github.io/causalDisco/reference/fdr.md),
[npv](https://bjarkehautop.github.io/causalDisco/reference/npv.md),
[f1_score](https://bjarkehautop.github.io/causalDisco/reference/f1_score.md)
and
[g1_score](https://bjarkehautop.github.io/causalDisco/reference/g1_score.md).
The user can supply custom metrics as well: They need to have the
confusion matrix as their first argument and should return a numeric.

Available metrics to be used as "other" is:
[shd](https://bjarkehautop.github.io/causalDisco/reference/shd.md). The
user can supply custom metrics as well: They need to have arguments
`est_amat` and `true_amat`, where the former is the estimated adjacency
matrix and the latter is the true adjacency matrix. The metrics should
return a numeric.
