# Plot temporal graph via Latex

Generates a plot of a tamat, tpdag or tpag object by use of Latex tikz.
Note that a working Latex installation is required. Note also that this
function is slower than typical R graphics options and may take some
time to terminate.

## Usage

``` r
tplot(
  x,
  filename = "causaldisco_tplot_temp",
  keepfiles = FALSE,
  bend_edges = TRUE,
  ...
)
```

## Arguments

- x:

  A tamat, tpdag, or tpag object as obtained from
  [`tamat`](https://bjarkehautop.github.io/causalDisco/reference/tamat.md),
  [`tpc`](https://bjarkehautop.github.io/causalDisco/reference/tpc.md),
  or
  [`tfci`](https://bjarkehautop.github.io/causalDisco/reference/tfci.md),
  respectively.

- filename:

  Name of files that will be used internally during the function's
  runtime. This filename will be appended with both .rmd and .pdf. Note
  that unless `keepfiles = TRUE`, these files will automatically be
  deleted again.

- keepfiles:

  If `FALSE` (default), temporary files used for making the plot are
  deleted, otherwise they are kept and will be placed in the working
  directory.

- bend_edges:

  If `TRUE` (default), all edges are bent 10 degrees to the right,
  thereby avoiding edges placed exactly on top of eachother.

- ...:

  Additional argument passed to
  [`make_tikz`](https://bjarkehautop.github.io/causalDisco/reference/make_tikz.md).

## Details

The function renders Latex code using rmarkdown, which relies on a
working installation of Latex. Afterwards, the resulting pdf graphic is
loaded into R and displayed in a browser. If working in Rstudio it may
be opened in the built-in viewer, depending on Rstudio global settings.
