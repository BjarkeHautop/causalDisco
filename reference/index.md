# Package index

## Main User Function

High-level interface for running causal discovery.

- [`disco()`](https://bjarkehautop.github.io/causalDisco/reference/disco.md)
  : Disco!!
- [`knowledge()`](https://bjarkehautop.github.io/causalDisco/reference/knowledge.md)
  : Knowledge Mini-DSL Constructor

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

## Setup for Tetrad Engine

Functions for installing and verifying the Tetrad Java backend.

- [`install_java()`](https://bjarkehautop.github.io/causalDisco/reference/install_java.md)
  : Install Eclipse Temurin JDK 25 (with JAVA_HOME configuration)
- [`install_tetrad()`](https://bjarkehautop.github.io/causalDisco/reference/install_tetrad.md)
  : Install Tetrad GUI
- [`check_tetrad_install()`](https://bjarkehautop.github.io/causalDisco/reference/check_tetrad_install.md)
  : Check Tetrad Installation

## R6 Classes

- [`BnlearnSearch`](https://bjarkehautop.github.io/causalDisco/reference/BnlearnSearch.md)
  : R6 Interface to bnlearn Search Algorithms
- [`CausalDiscoSearch`](https://bjarkehautop.github.io/causalDisco/reference/CausalDiscoSearch.md)
  : R6 Interface to causalDisco Search Algorithms
- [`PcalgSearch`](https://bjarkehautop.github.io/causalDisco/reference/PcalgSearch.md)
  : R6 Interface to pcalg Search Algorithms
- [`TetradSearch`](https://bjarkehautop.github.io/causalDisco/reference/TetradSearch.md)
  : R6 Interface to Tetrad Search Algorithms

## Algorithm Engines

Low-level functions that execute search algorithms.

- [`tfci_run()`](https://bjarkehautop.github.io/causalDisco/reference/tfci_run.md)
  : Causal Discovery Using the Temporal FCI (TFCI) Algorithm
- [`tges_run()`](https://bjarkehautop.github.io/causalDisco/reference/tges_run.md)
  : Restricted Markov Equivalence Class Estimation Using Temporal Greedy
  Equivalence Search
- [`tpc_run()`](https://bjarkehautop.github.io/causalDisco/reference/tpc_run.md)
  : Causal Discovery Using the Temporal PC Algorithm (TPC)

## Classes used by algorithms with engine causalDisco

- [`TEssGraph-class`](https://bjarkehautop.github.io/causalDisco/reference/TEssGraph-class.md)
  [`TEssGraph`](https://bjarkehautop.github.io/causalDisco/reference/TEssGraph-class.md)
  : Temporal EssGraph class with greedy steps
- [`TemporalBIC-class`](https://bjarkehautop.github.io/causalDisco/reference/TemporalBIC-class.md)
  [`TemporalBIC`](https://bjarkehautop.github.io/causalDisco/reference/TemporalBIC-class.md)
  : Temporal Bayesian Information Criterion (Score criterion)
- [`TemporalBDeu-class`](https://bjarkehautop.github.io/causalDisco/reference/TemporalBDeu-class.md)
  [`TemporalBDeu`](https://bjarkehautop.github.io/causalDisco/reference/TemporalBDeu-class.md)
  : Temporal Bayesian Dirichlet equivalent uniform (Score criterion)
- [`gaus_cor_score()`](https://bjarkehautop.github.io/causalDisco/reference/gaus_cor_score.md)
  : Gaussian L0 score computed on correlation matrix

## Test Functions

- [`cor_test()`](https://bjarkehautop.github.io/causalDisco/reference/cor_test.md)
  : Test for vanishing partial correlations
- [`reg_test()`](https://bjarkehautop.github.io/causalDisco/reference/reg_test.md)
  : Regression-based information loss test

## Graph Operations

- [`amat()`](https://bjarkehautop.github.io/causalDisco/reference/amat.md)
  : Extract adjacency matrix from tpdag, cpdag, tpag or pag object
- [`graph_to_amat()`](https://bjarkehautop.github.io/causalDisco/reference/graph_to_amat.md)
  : Convert graphNEL object to adjacency matrix
- [`essgraph_to_amat()`](https://bjarkehautop.github.io/causalDisco/reference/essgraph_to_amat.md)
  : Convert essential graph to adjacency matrix
- [`probmat_to_amat()`](https://bjarkehautop.github.io/causalDisco/reference/probmat_to_amat.md)
  : Convert a matrix of probabilities into an adjacency matrix
- [`tamat()`](https://bjarkehautop.github.io/causalDisco/reference/tamat.md)
  : Make a temporal adjacency matrix
- [`edges()`](https://bjarkehautop.github.io/causalDisco/reference/edges.md)
  : List of edges in adjacency matrix
- [`n_edges()`](https://bjarkehautop.github.io/causalDisco/reference/n_edges.md)
  : Number of edges in adjacency matrix
- [`max_edges()`](https://bjarkehautop.github.io/causalDisco/reference/max_edges.md)
  : Compute maximal number of edges for graph
- [`is_cpdag()`](https://bjarkehautop.github.io/causalDisco/reference/is_cpdag.md)
  : Check for CPDAG
- [`is_pdag()`](https://bjarkehautop.github.io/causalDisco/reference/is_pdag.md)
  : Check for PDAG
- [`shd()`](https://bjarkehautop.github.io/causalDisco/reference/shd.md)
  : Structural hamming distance between adjacency matrices
- [`n_dags()`](https://bjarkehautop.github.io/causalDisco/reference/n_dags.md)
  : Number of different DAGs

## Simulation

- [`sim_dag()`](https://bjarkehautop.github.io/causalDisco/reference/sim_dag.md)
  : Simulate a random DAG
- [`sim_gaus_from_dag()`](https://bjarkehautop.github.io/causalDisco/reference/sim_gaus_from_dag.md)
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

- [`plot_tempo_mech()`](https://bjarkehautop.github.io/causalDisco/reference/plot_tempo_mech.md)
  : Plot temporal data generating mechanism

- [`tplot()`](https://bjarkehautop.github.io/causalDisco/reference/tplot.md)
  : Plot temporal graph via Latex

- [`maketikz()`](https://bjarkehautop.github.io/causalDisco/reference/maketikz.md)
  : Generate Latex tikz code for plotting a temporal DAG, PDAG or PAG.

## Printing

- [`print(`*`<knowledge>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/print.knowledge.md)
  :

  Print a `knowledge` object

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
- [`f1_score()`](https://bjarkehautop.github.io/causalDisco/reference/f1_score.md)
  : F1 score
- [`g1_score()`](https://bjarkehautop.github.io/causalDisco/reference/g1_score.md)
  : G1 score
- [`fdr()`](https://bjarkehautop.github.io/causalDisco/reference/fdr.md)
  : False Discovery Rate
- [`npv()`](https://bjarkehautop.github.io/causalDisco/reference/npv.md)
  : Negative predictive value
- [`false_omission_rate()`](https://bjarkehautop.github.io/causalDisco/reference/false_omission_rate.md)
  : False Omission Rate
- [`average_degree()`](https://bjarkehautop.github.io/causalDisco/reference/average_degree.md)
  : Compute average degree for adjacency matrix

## Miscellaneous

- [`causalDisco`](https://bjarkehautop.github.io/causalDisco/reference/causalDisco-package.md)
  [`causalDisco-package`](https://bjarkehautop.github.io/causalDisco/reference/causalDisco-package.md)
  : Causal Disco package
- [`engine_registry`](https://bjarkehautop.github.io/causalDisco/reference/engine_registry.md)
  : Supported engines for causalDisco
- [`tetrad_graph()`](https://bjarkehautop.github.io/causalDisco/reference/tetrad_graph.md)
  : Build a lightweight S3 wrapper around a Tetrad PAG string
- [`tpc_example`](https://bjarkehautop.github.io/causalDisco/reference/tpc_example.md)
  : Simulated data example
