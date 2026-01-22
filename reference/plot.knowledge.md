# Plot a Knowledge Object

Visualize a `knowledge` object as a directed graph using
[`caugi::plot()`](https://caugi.org/reference/plot.html).

## Usage

``` r
# S3 method for class 'knowledge'
plot(
  x,
  orientation = c("columns", "rows"),
  required_col = "blue",
  forbidden_col = "red",
  ...
)
```

## Arguments

- x:

  A `knowledge` object, created using
  [`knowledge()`](https://bjarkehautop.github.io/causalDisco/reference/knowledge.md).

- orientation:

  Character(1). Orientation of the tiers in the plot. Either `"columns"`
  (default) or `"rows"`. Only used if tiered knowledge is provided.

- required_col:

  Character(1). Color for edges marked as "required". Default `"blue"`.

- forbidden_col:

  Character(1). Color for edges marked as "forbidden". Default `"red"`.

- ...:

  Additional arguments passed to
  [`caugi::plot()`](https://caugi.org/reference/plot.html), e.g.,
  `node_style`, `edge_style`.

## Value

Invisibly returns the caugi object used for plotting. The main effect is
the plot.

## Details

- **Required edges** are drawn in **blue** by default (can be changed
  via `required_col`).

- **Forbidden edges** are drawn in **red** by default (can be changed
  via `forbidden_col`).

- If tiered knowledge is provided, nodes are arranged according to their
  tiers.

- Users can override other edge styling (e.g., line width, arrow size)
  via the `edge_style` argument. To override the color of a specific
  edge, use `edge_style$by_edge[[from]][[to]]$col`.

- Nodes are arranged by tiers if tier information is provided in the
  knowledge object.

- If some nodes are missing tier assignments, a warning is issued and
  the plot falls back to untiered plotting.

- The function automatically handles edges marked as "required" or
  "forbidden" in the knowledge object.

- Other edge styling (line width, arrow size, etc.) can be supplied via
  `edge_style`. The only way to override edge colors for specific edges
  is to specify them directly in `edge_style$by_edge[[from]][[to]]$col`.

## Examples

``` r
data(tpc_example)

# Define a knowledge object with tiers
kn_tiered <- knowledge(
  tpc_example,
  tier(
    child ~ starts_with("child"),
    youth ~ starts_with("youth"),
    old ~ starts_with("old")
  )
)

# Simple plot (default column orientation)
plot(kn_tiered)


# Plot with row orientation
plot(kn_tiered, orientation = "rows")


# Plot with custom node styling and edge width/arrow size
plot(
  kn_tiered,
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


# Define a knowledge object without tiers
kn_untiered <- knowledge(
  tpc_example,
  child_x1 %-->% c(child_x2, youth_x3),
  youth_x4 %!-->% oldage_x5
)
plot(kn_untiered)

```
