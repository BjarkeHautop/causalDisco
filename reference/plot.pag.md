# Plot partial ancestral graph (PAG)

Plot partial ancestral graph (PAG)

## Usage

``` r
# S3 method for class 'pag'
plot(x, ...)
```

## Arguments

- x:

  pag object to be plotted (as outputted from
  [`fci`](https://bjarkehautop.github.io/causalDisco/reference/fci.md)).

- ...:

  Currently not in use.

## Value

No return value, the function is called for its side-effects (plotting).

## Author

This code is a modification of the fciAlgo plotting method implemented
in the pcalg package.

## Examples

``` r
if (FALSE) { # \dontrun{
# simulate linear Gaussian data w unobserved variable L1
n <- 100
L1 <- rnorm(n)
X1 <- rnorm(n)
X2 <- L1 + X1 + rnorm(n)
X3 <- X1 + rnorm(n)
X4 <- X3 + L1 + rnorm(n)
d <- data.frame(
  p1_X1 = X1,
  p1_X2 = X2,
  p2_X3 = X3,
  p2_X4 = X4
)

# use FCI algorithm to recover PAG
res <- fci(d, test = corTest)

# plot
plot(res)
} # }
```
