# Plot temporal data generating mechanism

Plots tpdag, tskeleton and tamat objects.

## Usage

``` r
plot_tempo_mech(
  x,
  add_time_axis = TRUE,
  add_psi = TRUE,
  var_labels = NULL,
  period_labels = NULL,
  colors = NULL,
  ...
)
```

## Arguments

- x:

  The tpdag/tskeleton or tamat to plot.

- add_time_axis:

  Logical indicating whether a time axis should be added to the plot.

- add_psi:

  Logical indicating whether the sparsity level should be added to the
  plot.

- var_labels:

  A named list of variable labels.

- period_labels:

  A character vector with labels for periods.

- colors:

  A character vector with colors to use for marking periods. Should have
  at least as many elements as the numbers of periods.

- ...:

  Additional arguments passed to
  [`plot.igraph`](https://r.igraph.org/reference/plot.igraph.html).

## Value

No return value, the function is called for its side-effects (plotting).
