# Confusion Matrix

Compute confusion matrix for two `caugi` graphs.

## Usage

``` r
confusion(truth, guess, type = c("adj", "dir"))
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

A list with entries `tp` (true positives), `tn` (true negatives), `fp`
(false positives), and `fn` (false negatives).

## Details

Adjacency comparison: The confusion matrix is a cross-tabulation of
adjacencies. Hence, a true positive means that the two inputs agree on
the presence of an adjacency. A true negative means that the two inputs
agree on no adjacency. A false positive means that the estimated graph
places an adjacency where there should be none. A false negative means
that the estimated graph does not place an adjacency where there should
have been one.

Orientation comparison: The orientation confusion matrix is conditional
on agreement on adjacency. This means that only adjacencies that are
shared in both input matrices are considered, and agreement wrt.
orientation is then computed only among these edges that occur in both
matrices. A true positive is a correctly placed arrowhead (1), a false
positive marks placement of arrowhead (1) where there should have been a
tail (0), a false negative marks placement of tail (0) where there
should have been an arrowhead (1), and a true negative marks correct
placement of a tail (0).

## See also

Other metrics:
[`f1_score()`](https://bjarkehautop.github.io/causalDisco/reference/f1_score.md),
[`false_omission_rate()`](https://bjarkehautop.github.io/causalDisco/reference/false_omission_rate.md),
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
confusion(cg1, cg2)
#> $tp
#> [1] 1
#> 
#> $tn
#> [1] 0
#> 
#> $fp
#> [1] 1
#> 
#> $fn
#> [1] 1
#> 
confusion(cg1, cg2, type = "dir")
#> $tp
#> [1] 0
#> 
#> $tn
#> [1] 0
#> 
#> $fp
#> [1] 1
#> 
#> $fn
#> [1] 1
#> 
```
