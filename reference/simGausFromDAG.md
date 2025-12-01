# Simulate Gaussian data according to DAG

Simulates a jointly Gaussian dataset given a DAG adjacency matrix
("from-to" encoding, see
[amat](https://bjarkehautop.github.io/causalDisco/reference/amat.md) for
details). The data is simulated using linear structural equations and
the parameters (residual standard deviations and regression
coefficients) are sampled from chosen intervals.

## Usage

``` r
simGausFromDAG(
  amat,
  n,
  regparLim = c(0.5, 2),
  resSDLim = c(0.1, 1),
  pnegRegpar = 0.4,
  standardize = FALSE
)
```

## Arguments

- amat:

  An adjacency matrix.

- n:

  The number of observations that should be simulated.

- regparLim:

  The interval from which regression parameters are sampled.

- resSDLim:

  The interval from which residual standard deviations are sampled.

- pnegRegpar:

  The probability of sampling a negative regression parameter.

- standardize:

  If `FALSE` (the default), the raw data are returned. If `TRUE`, the
  data are first standardized, i.e., each variable will have its mean
  subtracted and be divided by its standard deviation.

## Value

A data.frame of identically distributed simulated observations from the
DAG.

## Details

A variable \\X\_{i}\\ is simulated as  
\\X\_{i} := \sum\_{Z \in pa(X\_{i})} \beta\_{Z} \* Z + e\_{i}\\  
where \\pa(X\_{i})\\ are the parents of \\X\_{i}\\ in the DAG. The
residual, \\e\_{i}\\, is drawn from a normal distribution.

## Examples

``` r
# Simulate DAG adjacency matrix with 6 nodes
ex_dag <- simDAG(6)

# Simulate Gaussian data (100 iid observations)
ex_data <- simGausFromDAG(ex_dag, n = 100)
```
