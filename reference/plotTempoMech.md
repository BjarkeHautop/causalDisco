# Plot temporal data generating mechanism

Plots tpdag, tskeleton and tamat objects.

## Usage

``` r
plotTempoMech(
  x,
  addTimeAxis = TRUE,
  addPsi = TRUE,
  varLabels = NULL,
  periodLabels = NULL,
  colors = NULL,
  ...
)
```

## Arguments

- x:

  The tpdag/tskeleton or tamat to plot.

- addTimeAxis:

  Logical indicating whether a time axis should be added to the plot.

- addPsi:

  Logical indicating whether the sparsity level should be added to the
  plot.

- varLabels:

  A named list of variable labels.

- periodLabels:

  A character vector with labels for periods.

- colors:

  A character vector with colors to use for marking periods. Should have
  at least as many elements as the numbers of periods.

- ...:

  Additional arguments passed to
  [`plot.igraph`](https://r.igraph.org/reference/plot.igraph.html).

## Value

No return value, the function is called for its side-effects (plotting).
