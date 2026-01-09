# Build a lightweight S3 wrapper around a Tetrad PAG string

Build a lightweight S3 wrapper around a Tetrad PAG string

## Usage

``` r
tetrad_graph(x)
```

## Arguments

- x:

  Character scalar in the form `"V1,V2,V3\n0,2,0\n3,0,1\n0,3,0\n"`

## Value

An object of class \<tetrad_graph\>

## Examples

``` r
# A tiny 3-node PAG in Tetrad’s CSV-like string form:
# rows/cols are A,B,C; entries use pcalg’s PAG codes (0,1,2,3)
pag_txt <- "A,B,C
0,2,0
3,0,1
0,3,0
"

g <- tetrad_graph(pag_txt)

# Inspect the parsed object
class(g)
#> [1] "tetrad_graph"
g$nodes
#> [1] "A" "B" "C"
g$amat
#>   A B C
#> A 0 2 0
#> B 3 0 1
#> C 0 3 0
```
