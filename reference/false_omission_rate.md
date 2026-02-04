# False Omission Rate

Computes false omission rate from two `caugi` objects. It converts the
`caugi` objects to adjacency matrices and computes false omission rate
as `FN/(FN + TN)`, where `FN` are false negatives and `TN` are true
negatives. If `FN + TN = 0, 1` is returned.

## Usage

``` r
false_omission_rate(truth, guess, type = c("adj", "dir"))
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
[`fdr()`](https://bjarkehautop.github.io/causalDisco/reference/fdr.md),
[`g1_score()`](https://bjarkehautop.github.io/causalDisco/reference/g1_score.md),
[`npv()`](https://bjarkehautop.github.io/causalDisco/reference/npv.md),
[`precision()`](https://bjarkehautop.github.io/causalDisco/reference/precision.md),
[`recall()`](https://bjarkehautop.github.io/causalDisco/reference/recall.md),
[`shd()`](https://bjarkehautop.github.io/causalDisco/reference/shd.md),
[`specificity()`](https://bjarkehautop.github.io/causalDisco/reference/specificity.md)

## Examples

``` r
cg1 <- caugi::caugi(A %-->% B + C)
cg2 <- caugi::caugi(B %-->% A + C)
false_omission_rate(cg1, cg2, type = "adj")
#> [1] 1
false_omission_rate(cg1, cg2, type = "dir")
#> [1] 1
```
