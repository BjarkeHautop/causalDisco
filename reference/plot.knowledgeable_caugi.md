# Plot a Knowledgeable Caugi Object

Visualize a causal graph stored within a `knowledgeable_caugi` object.
This function extends
[`plot.knowledge()`](https://bjarkehautop.github.io/causalDisco/reference/plot.knowledge.md)
by combining the causal graph from a `caugi` object with background
knowledge.

## Usage

``` r
# S3 method for class 'knowledgeable_caugi'
plot(x, required_col = "blue", ...)
```

## Arguments

- x:

  A `knowledgeable_caugi` object containing both the causal graph and
  the associated knowledge.

- required_col:

  Character(1). Color for edges marked as "required". Default `"blue"`.

- ...:

  Additional arguments passed to
  [`caugi::plot()`](https://caugi.org/reference/plot.html) and
  [`plot.knowledge()`](https://bjarkehautop.github.io/causalDisco/reference/plot.knowledge.md).

## Value

Invisibly returns the underlying `caugi` object. The main effect is the
plot.

## Details

- **Required edges** are drawn in **blue** by default (`required_col`),
  can be changed.

- **Forbidden edges** are not drawn by.

- If tiered knowledge is provided, nodes are arranged according to their
  tiers.

- Other edge styling (line width, arrow size, etc.) can be supplied via
  `edge_style`. To override the color of a specific edge, specify it in
  `edge_style$by_edge[[from]][[to]]$col`.

This function combines the causal graph and the knowledge object into a
single plotting structure. If the knowledge contains tiers, nodes are
laid out accordingly; otherwise, the default caugi layout is used. Edges
marked as required are automatically colored (or can be overridden per
edge using `edge_style$by_edge`).

## See also

[`caugi::plot()`](https://caugi.org/reference/plot.html)

## Examples

``` r
data(tpc_example)

# Define tiered knowledge
kn <- knowledge(
  tpc_example,
  tier(
    child ~ starts_with("child"),
    youth ~ starts_with("youth"),
    old ~ starts_with("old")
  )
)

# Fit a causal discovery model
cd_tges <- tges(engine = "causalDisco", score = "tbic")
disco_cd_tges <- disco(data = tpc_example, method = cd_tges, knowledge = kn)

# Plot with default column orientation
plot(disco_cd_tges)


# Plot with row orientation
plot(disco_cd_tges, orientation = "rows")


# Plot with custom node and edge styling
plot(
  disco_cd_tges,
  node_style = list(
    fill = "lightblue",
    col = "darkblue",
    lwd = 2,
    padding = 4,
    size = 1.2
  ),
  edge_style = list(
    lwd = 1.5,
    arrow_size = 4
  )
)


# Plot without tiers
data(num_data)
kn_untiered <- knowledge(
  num_data,
  X1 %-->% c(X2, X3),
  Z %!-->% Y
)

bnlearn_pc <- pc(engine = "bnlearn", test = "fisher_z")
res_untiered <- disco(data = num_data, method = bnlearn_pc, knowledge = kn_untiered)
plot(res_untiered)

```
