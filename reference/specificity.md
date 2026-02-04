# Specificity

Computes specificity from two `caugi` objects. It converts the `caugi`
objects to adjacency matrices and computes specificity as
`TN/(TN + FP)`, where `TN` are true negatives and `FP` are false
positives. If `TN + FP = 0`, `1` is returned.

## Usage

``` r
specificity(truth, guess, type = c("adj", "dir"))
```

## Arguments

- truth:

  A `caugi` object representing the true graph.

- guess:

  A `caugi` object representing the estimated graph.

- type:

  Character string specifying the comparison type:

  - `"adj"`: adjacency comparison.

  - `"dir"`: orientation comparison conditional on shared adjacencies.

## Value

A numeric in \[0,1\].

## See also

Other metrics:
[`confusion()`](https://bjarkehautop.github.io/causalDisco/reference/confusion.md),
[`f1_score()`](https://bjarkehautop.github.io/causalDisco/reference/f1_score.md),
[`false_omission_rate()`](https://bjarkehautop.github.io/causalDisco/reference/false_omission_rate.md),
[`fdr()`](https://bjarkehautop.github.io/causalDisco/reference/fdr.md),
[`g1_score()`](https://bjarkehautop.github.io/causalDisco/reference/g1_score.md),
[`npv()`](https://bjarkehautop.github.io/causalDisco/reference/npv.md),
[`precision()`](https://bjarkehautop.github.io/causalDisco/reference/precision.md),
[`recall()`](https://bjarkehautop.github.io/causalDisco/reference/recall.md),
[`shd()`](https://bjarkehautop.github.io/causalDisco/reference/shd.md)

## Examples

``` r
cg1 <- caugi::caugi(A %-->% B + C)
cg2 <- caugi::caugi(B %-->% A + C)
specificity(cg1, cg2, type = "adj")
#> [1] 0
specificity(cg1, cg2, type = "dir")
#> [1] 0
```
