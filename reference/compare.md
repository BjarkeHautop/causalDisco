# Compare two tpdag or tskeleton objects

Compare edges in two tpdag objects or two tskeleton objects. Note that
they should be based on the same variables. Only edge absence/presence
is compared, not edge orientation.

## Usage

``` r
compare(x, y = NULL)
```

## Arguments

- x:

  First object

- y:

  Second object (optional)

## Value

A list with entries: `$n_edges1` (the number of edges in the first
object), `$n_edges2` (the number of edges in the second object), `$psi1`
(the test significance level of the first object), `$psi2` (the test
significance level of the second object), `$nadded` (the number of
additional edges in object 2, relative to object 1), and `nremoved` (the
number of absent edges in object 2, relative to object 1).
