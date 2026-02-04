# Structural Hamming Distance

Computes the Structural Hamming Distance (SHD) between two `caugi`
objects. SHD is the number of edge additions, deletions, or orientation
flips required to transform one graph into the other. Adjacency errors
are counted fully, while orientation errors on shared adjacencies are
counted as half an error, following the standard convention for
partially directed graphs.

## Usage

``` r
shd(truth, guess)
```

## Arguments

- truth:

  A `caugi` object representing the true graph.

- guess:

  A `caugi` object representing the estimated graph.

## Value

A numeric representing the SHD.

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
[`specificity()`](https://bjarkehautop.github.io/causalDisco/reference/specificity.md)

## Examples

``` r
cg1 <- caugi::caugi(A %-->% B + C)
cg2 <- caugi::caugi(B %-->% A + C)
shd(cg1, cg2)
#> [1] 3
```
