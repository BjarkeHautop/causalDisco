# Knowledge Mini-DSL Constructor

Constructs a `knowledge` object optionally initialized with a data frame
and extended with variable relationships expressed via formulas,
selectors, or infix operators:

    tier(1 ~ V1 + V2, exposure ~ E)
    forbidden(V1 ~ V4, V2 ~ V4)
    required(V1 ~ V2)
    V1 %-->% V3    # infix syntax for required edges
    V2 %--x% V3    # infix syntax for forbidden edges
    exogenous(V1, V2)

## Usage

``` r
knowledge(...)
```

## Arguments

- ...:

  Arguments to define the knowledge object:

  - Optionally, a single data frame (first argument) whose column names
    initialize and freeze the variable set.

  - Zero or more mini-DSL calls: `tier()`, `forbidden()`, `required()`,
    `exogenous()`, `exo()`, `root()`, or infix operators `%-->%` and
    `%--x%`.

    - `tier()`: One or more two-sided formulas (`tier(1 ~ x + y)`), or a
      numeric vector.

    - `forbidden()` / `required()`: One or more two-sided formulas
      (`from ~ to`).

    - `exogenous()` / `exo()` / `root()`: Variable names or tidyselect
      selectors. Arguments are evaluated in order; only these calls are
      allowed.

## Value

A populated `knowledge` object.

## Details

Create a `knowledge` object using a concise mini-DSL with `tier()`,
`forbidden()`, `required()`, `exogenous()` and infix edge operators
`%-->%` and `%--x%`.

The first argument can be a data frame, which will be used to populate
the `knowledge` object with variable names. If you later add variables
with add\_\* verbs, this will throw a warning, since the knowledge
object will be *frozen*. You can unfreeze a knowledge object by using
the function `unfreeze(knowledge)`.

If no data frame is provided, the object is initially empty. Variables
can then be added via `tier()`, `forbidden()`, `required()`, infix
operators, or
[`add_vars()`](https://bjarkehautop.github.io/causalDisco/reference/add_vars.md).

- `tier()`: Assigns variables to tiers. Tiers may be numeric or string
  labels. The left-hand side (LHS) of the formula is the tier; the
  right-hand side (RHS) specifies variables. Variables can also be
  selected using **tidyselect** syntax: `tier(1 ~ starts_with("V"))`.

- `forbidden()` / `required()`: Add directed edges between variables.
  LHS is the source, RHS is the target. Both sides support tidyselect
  syntax.

- `%-->%` and `%--x%`: Infix alternatives for `required()` and
  `forbidden()`. Example: `V1 %-->% V3` is equivalent to
  `required(V1 ~ V3)`.

- `exogenous()` / `exo()` / `root()`: Mark variables as exogenous (root
  nodes).

- Numeric vector shortcut for `tier()`: `tier(c(1, 2, 1))` assigns tiers
  by index to all existing variables.

## See also

Other knowledge functions:
[`+.knowledge()`](https://bjarkehautop.github.io/causalDisco/reference/plus-.knowledge.md),
[`add_exogenous()`](https://bjarkehautop.github.io/causalDisco/reference/add_exogenous.md),
[`add_tier()`](https://bjarkehautop.github.io/causalDisco/reference/add_tier.md),
[`add_to_tier()`](https://bjarkehautop.github.io/causalDisco/reference/add_to_tier.md),
[`add_vars()`](https://bjarkehautop.github.io/causalDisco/reference/add_vars.md),
[`as_bnlearn_knowledge()`](https://bjarkehautop.github.io/causalDisco/reference/as_bnlearn_knowledge.md),
[`as_pcalg_constraints()`](https://bjarkehautop.github.io/causalDisco/reference/as_pcalg_constraints.md),
[`as_tetrad_knowledge()`](https://bjarkehautop.github.io/causalDisco/reference/as_tetrad_knowledge.md),
[`deparse_knowledge()`](https://bjarkehautop.github.io/causalDisco/reference/deparse_knowledge.md),
[`forbid_edge()`](https://bjarkehautop.github.io/causalDisco/reference/forbid_edge.md),
[`forbid_tier_violations()`](https://bjarkehautop.github.io/causalDisco/reference/forbid_tier_violations.md),
[`get_tiers()`](https://bjarkehautop.github.io/causalDisco/reference/get_tiers.md),
[`remove_edges()`](https://bjarkehautop.github.io/causalDisco/reference/remove_edges.md),
[`remove_tiers()`](https://bjarkehautop.github.io/causalDisco/reference/remove_tiers.md),
[`remove_vars()`](https://bjarkehautop.github.io/causalDisco/reference/remove_vars.md),
[`reorder_tiers()`](https://bjarkehautop.github.io/causalDisco/reference/reorder_tiers.md),
[`reposition_tier()`](https://bjarkehautop.github.io/causalDisco/reference/reposition_tier.md),
[`require_edge()`](https://bjarkehautop.github.io/causalDisco/reference/require_edge.md),
[`seq_tiers()`](https://bjarkehautop.github.io/causalDisco/reference/seq_tiers.md),
[`unfreeze()`](https://bjarkehautop.github.io/causalDisco/reference/unfreeze.md)

## Examples

``` r
### knowledge() example ###

# build knowledge from a data frame and a few DSL calls
data(tpc_example)
df <- head(tpc_example)

# knowledge objects are made with the knowledge() function
kn <- knowledge()


# knowledge objects contain tier information, forbidden and required edges
kn <- knowledge(
  tier(
    1 ~ V1 + V2,
    2 ~ V3
  ),
  V1 %-->% V2,
  V3 %--x% V1
)

# if a data frame is provided, variable names are checked against it
kn <- knowledge(
  df,
  tier(
    1 ~ child_x1 + child_x2,
    2 ~ youth_x3 + youth_x4,
    3 ~ oldage_x5 + oldage_x6
  )
)

# throws error
try(
  knowledge(
    df,
    tier(
      1 ~ child_x1 + child_x2,
      2 ~ youth_x3 + youth_x4,
      3 ~ oldage_x5 + woops
    ) # wrong name
  )
)
#> Error : Unknown variable(s): [woops]
#> They are not present in the data frame provided to this knowledge object.

# using tidyselect helpers
kn <- knowledge(
  df,
  tier(
    1 ~ starts_with("child"), # can use tidyselect helpers
    2 ~ youth_x3 + youth_x4, # do not need quotes for tiers or variables
    3 ~ starts_with("oldage")
  ) # doesn't have to match data naming
)

# custom tier naming
kn <- knowledge(
  df,
  tier(
    "child" ~ starts_with("child"), # can use tidyselect helpers
    youth ~ starts_with("youth"), # do not need quotes for tiers
    elderly ~ starts_with("oldage")
  ) # doesn't have to match data naming
)

# There is also required and forbidden edges, which are specified like so
kn <- knowledge(
  df,
  child_x1 %-->% youth_x3,
  oldage_x6 %--x% child_x1
)

# You can also add exogenous variables
kn <- knowledge(
  df,
  exogenous(child_x1),
  exo(child_x2), # shorthand
  root(youth_x3) # another shorthand
)

# You can also build knowledge with a verb pipeline
kn <-
  knowledge() |>
  add_vars(c("A", "B", "C", "D")) |> # knowledge now only takes these variables
  add_tier(One) |>
  add_to_tier("One" ~ A + B) |>
  add_tier(2, after = One) |>
  add_to_tier(2 ~ C + D) |>
  forbid_edge("A" ~ C) |>
  require_edge(A ~ B)

# Mix DSL start + verb refinement
kn <-
  knowledge(
    tier(1 ~ V5, 2 ~ V6),
    forbidden(V5 ~ V6)
  ) |>
  add_tier(3, after = "2") |>
  add_to_tier(3 ~ V7) |> # add third tier later
  add_root(V1) |> # three ways to add roots
  add_exo(V2) |>
  add_exogenous(V3)
#> Warning: `forbidden()` is deprecated and will be removed in a future version. Please use the infix operators `%--x%` (forbidden) and `%-->%` (required) instead.

# Using seq_tiers for larger datasets
df <- as.data.frame(
  matrix(runif(100), # 100 random numbers in (0,1)
    nrow = 1,
    ncol = 100,
    byrow = TRUE
  )
)

names(df) <- paste0("X_", 1:100) # label the columns X_1,..., X_100

kn <- knowledge(
  df,
  tier(
    seq_tiers(
      1:100,
      ends_with("_{i}")
    )
  ),
  X_1 %-->% X_2
)

df <- data.frame(
  X_1 = 1,
  X_2 = 2,
  tier3_A = 3,
  Y5_ok = 4,
  check.names = FALSE
)

kn_seq_tiers2 <- knowledge(
  df,
  tier(
    seq_tiers(1:2, ends_with("_{i}")), # X_1, X_2
    seq_tiers(3, starts_with("tier{i}")), # tier3_
    seq_tiers(5, matches("Y{i}_ok")) # exact match
  )
)
```
