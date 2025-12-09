# Package index

## Main User Function

High-level interface for running causal discovery.

- [`disco()`](https://bjarkehautop.github.io/causalDisco/reference/disco.md)
  : Disco!!

- [`knowledge()`](https://bjarkehautop.github.io/causalDisco/reference/knowledge.md)
  :

  Knowledge Mini-DSL constructor (`tier()`, `forbidden()`, `required()`)

## Causal Discovery Algorithms

Core search algorithms implemented or wrapped by causalDisco.

- [`fci()`](https://bjarkehautop.github.io/causalDisco/reference/fci.md)
  : The FCI algorithm for causal discovery
- [`ges()`](https://bjarkehautop.github.io/causalDisco/reference/ges.md)
  : The GES algorithm for causal discovery
- [`pc()`](https://bjarkehautop.github.io/causalDisco/reference/pc.md) :
  The Peter-Clark (PC) Algorithm for Causal Discovery
- [`tfci()`](https://bjarkehautop.github.io/causalDisco/reference/tfci.md)
  : The Temporal Fast Causal Inference (FCI) algorithm for causal
  discovery
- [`tges()`](https://bjarkehautop.github.io/causalDisco/reference/tges.md)
  : The Temporal GES algorithm for causal discovery
- [`tpc()`](https://bjarkehautop.github.io/causalDisco/reference/tpc.md)
  : The Temporal Peter-Clark (PC) algorithm for causal discovery

## Setup for Tetrad Engines

Functions for installing and verifying the Tetrad Java backend.

- [`install_java()`](https://bjarkehautop.github.io/causalDisco/reference/install_java.md)
  : Install Temurin JDK 25
- [`install_tetrad()`](https://bjarkehautop.github.io/causalDisco/reference/install_tetrad.md)
  : Install Tetrad GUI
- [`check_tetrad_install()`](https://bjarkehautop.github.io/causalDisco/reference/check_tetrad_install.md)
  : Check Tetrad Installation

## R6 Classes

- [`TetradSearch`](https://bjarkehautop.github.io/causalDisco/reference/TetradSearch.md)
  : R6 Interface to Tetrad Search Algorithms
- [`bnlearnSearch`](https://bjarkehautop.github.io/causalDisco/reference/bnlearnSearch.md)
  : R6 Interface to bnlearn Search Algorithms
- [`causalDiscoSearch`](https://bjarkehautop.github.io/causalDisco/reference/causalDiscoSearch.md)
  : R6 Interface to causalDisco Search Algorithms
- [`pcalgSearch`](https://bjarkehautop.github.io/causalDisco/reference/pcalgSearch.md)
  : R6 Interface to pcalg Search Algorithms

## Algorithm Engines

Low-level functions that execute search algorithms.

- [`tfci_run()`](https://bjarkehautop.github.io/causalDisco/reference/tfci_run.md)
  : Causal Discovery Using the Temporal FCI (TFCI) Algorithm Use a
  modification of the FCI algorithm that makes use of background
  knowledge in the format of a partial ordering. This may, for instance,
  come about when variables can be assigned to distinct tiers or periods
  (i.e., a temporal ordering).
- [`tges_run()`](https://bjarkehautop.github.io/causalDisco/reference/tges_run.md)
  : Restricted Markov Equivalence Class Estimation Using Temporal Greedy
  Equivalence Search
- [`tpc_run()`](https://bjarkehautop.github.io/causalDisco/reference/tpc_run.md)
  : Causal Discovery Using the Temporal PC Algorithm (TPC)

## Score Functions

- [`TemporalBIC-class`](https://bjarkehautop.github.io/causalDisco/reference/TemporalBIC-class.md)
  [`TemporalBIC`](https://bjarkehautop.github.io/causalDisco/reference/TemporalBIC-class.md)
  : Temporal Bayesian Information Criterion (Score criterion)
- [`TemporalBDeu-class`](https://bjarkehautop.github.io/causalDisco/reference/TemporalBDeu-class.md)
  [`TemporalBDeu`](https://bjarkehautop.github.io/causalDisco/reference/TemporalBDeu-class.md)
  : Temporal Bayesian Dirichlet equivalent uniform (Score criterion)
- [`gausCorScore()`](https://bjarkehautop.github.io/causalDisco/reference/gausCorScore.md)
  : Gaussian L0 score computed on correlation matrix

## Graph Operations

- [`graph2amat()`](https://bjarkehautop.github.io/causalDisco/reference/graph2amat.md)
  : Convert graphNEL object to adjacency matrix
- [`amat()`](https://bjarkehautop.github.io/causalDisco/reference/amat.md)
  : Extract adjacency matrix from tpdag, cpdag, tpag or pag object
- [`essgraph2amat()`](https://bjarkehautop.github.io/causalDisco/reference/essgraph2amat.md)
  : Convert essential graph to adjacency matrix
- [`tamat()`](https://bjarkehautop.github.io/causalDisco/reference/tamat.md)
  : Make a temporal adjacency matrix
- [`edges()`](https://bjarkehautop.github.io/causalDisco/reference/edges.md)
  : List of edges in adjacency matrix
- [`nedges()`](https://bjarkehautop.github.io/causalDisco/reference/nedges.md)
  : Number of edges in adjacency matrix
- [`maxnedges()`](https://bjarkehautop.github.io/causalDisco/reference/maxnedges.md)
  : Compute maximal number of edges for graph
- [`is_cpdag()`](https://bjarkehautop.github.io/causalDisco/reference/is_cpdag.md)
  : Check for CPDAG
- [`is_pdag()`](https://bjarkehautop.github.io/causalDisco/reference/is_pdag.md)
  : Check for PDAG
- [`shd()`](https://bjarkehautop.github.io/causalDisco/reference/shd.md)
  : Structural hamming distance between adjacency matrices
- [`nDAGs()`](https://bjarkehautop.github.io/causalDisco/reference/nDAGs.md)
  : Number of different DAGs

## Simulation

- [`simDAG()`](https://bjarkehautop.github.io/causalDisco/reference/simDAG.md)
  : Simulate a random DAG
- [`simGausFromDAG()`](https://bjarkehautop.github.io/causalDisco/reference/simGausFromDAG.md)
  : Simulate Gaussian data according to DAG

## Plotting

- [`plot(`*`<knowledge>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/plot.knowledge.md)
  : Plot a Knowledge Object

- [`plot(`*`<knowledgeable_caugi>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/plot.knowledgeable_caugi.md)
  :

  Plot a Causal Graph from a `knowledgeable_caugi` Object

- [`plot(`*`<pag>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/plot.pag.md)
  : Plot partial ancestral graph (PAG)

- [`plot(`*`<tamat>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/plot.tamat.md)
  : Plot adjacency matrix with order information

- [`plot(`*`<tpag>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/plot.tpag.md)
  : Plot temporal partial ancestral graph (TPAG)

- [`plot(`*`<tpdag>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/plot.tpdag.md)
  : Plot temporal partially directed acyclic graph (TPDAG)

- [`plot(`*`<tskeleton>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/plot.tskeleton.md)
  : Plot temporal skeleton

- [`plotTempoMech()`](https://bjarkehautop.github.io/causalDisco/reference/plotTempoMech.md)
  : Plot temporal data generating mechanism

- [`tplot()`](https://bjarkehautop.github.io/causalDisco/reference/tplot.md)
  : Plot temporal graph via Latex

- [`maketikz()`](https://bjarkehautop.github.io/causalDisco/reference/maketikz.md)
  : Generate Latex tikz code for plotting a temporal DAG, PDAG or PAG.

## Printing

- [`print(`*`<knowledge>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/print.knowledge.md)
  :

  Print a `knowledge` object

- [`print(`*`<tetrad_check>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/print.tetrad_check.md)
  : Print Tetrad check result

## Tiers / Knowledge helpers

- [`add_exogenous()`](https://bjarkehautop.github.io/causalDisco/reference/add_exogenous.md)
  [`add_exo()`](https://bjarkehautop.github.io/causalDisco/reference/add_exogenous.md)
  [`add_root()`](https://bjarkehautop.github.io/causalDisco/reference/add_exogenous.md)
  : Add exogenous variables

- [`add_tier()`](https://bjarkehautop.github.io/causalDisco/reference/add_tier.md)
  : Add (and position) a tier

- [`add_to_tier()`](https://bjarkehautop.github.io/causalDisco/reference/add_to_tier.md)
  : Add variables to an existing tier

- [`add_vars()`](https://bjarkehautop.github.io/causalDisco/reference/add_vars.md)
  :

  Add variables to `knowledge` object

- [`remove_edges()`](https://bjarkehautop.github.io/causalDisco/reference/remove_edges.md)
  : Remove edges from a knowledge object

- [`remove_tiers()`](https://bjarkehautop.github.io/causalDisco/reference/remove_tiers.md)
  : Remove entire tiers from a knowledge object

- [`remove_vars()`](https://bjarkehautop.github.io/causalDisco/reference/remove_vars.md)
  : Remove variables (and their edges) from a knowledge object

- [`require_edge()`](https://bjarkehautop.github.io/causalDisco/reference/require_edge.md)
  : Add required edges

- [`forbid_edge()`](https://bjarkehautop.github.io/causalDisco/reference/forbid_edge.md)
  : Add forbidden edges

- [`forbid_tier_violations()`](https://bjarkehautop.github.io/causalDisco/reference/forbid_tier_violations.md)
  : Forbid all tier violations

- [`get_tiers()`](https://bjarkehautop.github.io/causalDisco/reference/get_tiers.md)
  : Get tiers

- [`reorder_tiers()`](https://bjarkehautop.github.io/causalDisco/reference/reorder_tiers.md)
  : Reorder all tiers at once

- [`seq_tiers()`](https://bjarkehautop.github.io/causalDisco/reference/seq_tiers.md)
  : Generate a Bundle of Tier–Variable Formulas

- [`reposition_tier()`](https://bjarkehautop.github.io/causalDisco/reference/reposition_tier.md)
  : Move one tier before / after another

- [`set_knowledge()`](https://bjarkehautop.github.io/causalDisco/reference/set_knowledge.md)
  : Set background knowledge into a disco_method

- [`as_tetrad_knowledge()`](https://bjarkehautop.github.io/causalDisco/reference/as_tetrad_knowledge.md)
  :

  Convert to Tetrad `edu.cmu.tetrad.data.Knowledge`

- [`as_bnlearn_knowledge()`](https://bjarkehautop.github.io/causalDisco/reference/as_bnlearn_knowledge.md)
  : Convert background knowledge to bnlearns white- and blacklists

- [`as_pcalg_constraints()`](https://bjarkehautop.github.io/causalDisco/reference/as_pcalg_constraints.md)
  : Convert background knowledge to pcalg constraint matrices

- [`knowledgeable_caugi()`](https://bjarkehautop.github.io/causalDisco/reference/knowledgeable_caugi.md)
  :

  A `caugi` with an attached `knowledge` object

- [`new_knowledgeable_caugi()`](https://bjarkehautop.github.io/causalDisco/reference/new_knowledgeable_caugi.md)
  :

  Create a new `knowledgeable_caugi` object

- [`is_knowledgeable_caugi()`](https://bjarkehautop.github.io/causalDisco/reference/is_knowledgeable_caugi.md)
  :

  Is it a `knowledgeable_caugi`?

- [`knowledge.knowledgeable_caugi()`](https://bjarkehautop.github.io/causalDisco/reference/knowledge.knowledgeable_caugi.md)
  : Extract the knowledge from a knowledgeable_caugi

- [`deparse_knowledge()`](https://bjarkehautop.github.io/causalDisco/reference/deparse_knowledge.md)
  : Deparse a knowledge object to knowledge() mini-DSL code

- [`unfreeze()`](https://bjarkehautop.github.io/causalDisco/reference/unfreeze.md)
  :

  Unfreeze a `knowledge` object.

- [`` `+`( ``*`<knowledge>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/plus-.knowledge.md)
  :

  Merge two `knowledge` objects

## Conversions

- [`rdata_to_tetrad()`](https://bjarkehautop.github.io/causalDisco/reference/rdata_to_tetrad.md)
  : Tetrad R Data Utilities
- [`tetrad_data_to_rdata()`](https://bjarkehautop.github.io/causalDisco/reference/tetrad_data_to_rdata.md)
  : Convert a Tetrad Java DataSet to an R data frame
- [`as.graphNEL()`](https://bjarkehautop.github.io/causalDisco/reference/as.graphNEL.md)
  : Convert adjacency matrix to graphNEL object
- [`probmat2amat()`](https://bjarkehautop.github.io/causalDisco/reference/probmat2amat.md)
  : Convert a matrix of probabilities into an adjacency matrix
- [`TEssGraph-class`](https://bjarkehautop.github.io/causalDisco/reference/TEssGraph-class.md)
  [`TEssGraph`](https://bjarkehautop.github.io/causalDisco/reference/TEssGraph-class.md)
  : Temporal EssGraph class with greedy steps
- [`tplot()`](https://bjarkehautop.github.io/causalDisco/reference/tplot.md)
  : Plot temporal graph via Latex

## Evaluation & Confusion Metrics

- [`evaluate()`](https://bjarkehautop.github.io/causalDisco/reference/evaluate.md)
  : Evaluate adjacency matrix estimation
- [`evaluate(`*`<array>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/evaluate.array.md)
  : Evaluate adjacency matrix estimation
- [`evaluate(`*`<matrix>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/evaluate.matrix.md)
  : Evaluate adjacency matrix estimation
- [`evaluate(`*`<tamat>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/evaluate.tamat.md)
  : Evaluate adjacency matrix estimation
- [`confusion()`](https://bjarkehautop.github.io/causalDisco/reference/confusion.md)
  : Compute confusion matrix for comparing two adjacency matrices
- [`dir_confusion()`](https://bjarkehautop.github.io/causalDisco/reference/dir_confusion.md)
  : Compute confusion matrix for comparing two adjacency matrices
- [`dir_confusion_original()`](https://bjarkehautop.github.io/causalDisco/reference/dir_confusion_original.md)
  : Compute confusion matrix for comparing two adjacency matrices
- [`adj_confusion()`](https://bjarkehautop.github.io/causalDisco/reference/adj_confusion.md)
  : Compute confusion matrix for comparing two adjacency matrices
- [`compare()`](https://bjarkehautop.github.io/causalDisco/reference/compare.md)
  : Compare two tpdag or tskeleton objects
- [`precision()`](https://bjarkehautop.github.io/causalDisco/reference/precision.md)
  : Precision
- [`recall()`](https://bjarkehautop.github.io/causalDisco/reference/recall.md)
  : Recall
- [`specificity()`](https://bjarkehautop.github.io/causalDisco/reference/specificity.md)
  : Specificity
- [`F1()`](https://bjarkehautop.github.io/causalDisco/reference/F1.md) :
  F1 score
- [`G1()`](https://bjarkehautop.github.io/causalDisco/reference/G1.md) :
  G1 score
- [`FDR()`](https://bjarkehautop.github.io/causalDisco/reference/FDR.md)
  : False Discovery Rate
- [`NPV()`](https://bjarkehautop.github.io/causalDisco/reference/NPV.md)
  : Negative predictive value
- [`FOR()`](https://bjarkehautop.github.io/causalDisco/reference/FOR.md)
  : False Omission Rate

## Miscellaneous

- [`causalDisco`](https://bjarkehautop.github.io/causalDisco/reference/causalDisco-package.md)
  [`causalDisco-package`](https://bjarkehautop.github.io/causalDisco/reference/causalDisco-package.md)
  : Causal Disco package
- [`engine_registry`](https://bjarkehautop.github.io/causalDisco/reference/engine_registry.md)
  : Supported engines for causalDisco
- [`tetrad_graph()`](https://bjarkehautop.github.io/causalDisco/reference/tetrad_graph.md)
  : Build a lightweight S3 wrapper around a Tetrad PAG string
- [`tpcExample`](https://bjarkehautop.github.io/causalDisco/reference/tpcExample.md)
  : Simulated data example
- [`corTest()`](https://bjarkehautop.github.io/causalDisco/reference/corTest.md)
  : Test for vanishing partial correlations
- [`regTest()`](https://bjarkehautop.github.io/causalDisco/reference/regTest.md)
  : Regression-based information loss test
- [`average_degree()`](https://bjarkehautop.github.io/causalDisco/reference/average_degree.md)
  : Compute average degree for adjacency matrix
