# Package index

## Overview

Package overview

- [`causalDisco`](https://bjarkehautop.github.io/causalDisco/reference/causalDisco-package.md)
  [`causalDisco-package`](https://bjarkehautop.github.io/causalDisco/reference/causalDisco-package.md)
  : causalDisco: Causal Discovery in R

## Causal Discovery Interface

High-level interface for running causal discovery.

- [`disco()`](https://bjarkehautop.github.io/causalDisco/reference/disco.md)
  : Disco!!
- [`knowledge()`](https://bjarkehautop.github.io/causalDisco/reference/knowledge.md)
  : Knowledge Mini-DSL Constructor

## Causal Discovery Algorithms

Core search algorithms implemented or wrapped by causalDisco.

- [`fci()`](https://bjarkehautop.github.io/causalDisco/reference/fci.md)
  : FCI Algorithm for Causal Discovery
- [`ges()`](https://bjarkehautop.github.io/causalDisco/reference/ges.md)
  : GES Algorithm for Causal Discovery
- [`pc()`](https://bjarkehautop.github.io/causalDisco/reference/pc.md) :
  PC Algorithm for Causal Discovery
- [`tfci()`](https://bjarkehautop.github.io/causalDisco/reference/tfci.md)
  : TFCI Algorithm for Causal Discovery
- [`tges()`](https://bjarkehautop.github.io/causalDisco/reference/tges.md)
  : TGES Algorithm for Causal Discovery
- [`tpc()`](https://bjarkehautop.github.io/causalDisco/reference/tpc.md)
  : TPC Algorithm for Causal Discovery

## R6 Classes

- [`BnlearnSearch`](https://bjarkehautop.github.io/causalDisco/reference/BnlearnSearch.md)
  : R6 Interface to bnlearn Search Algorithms
- [`CausalDiscoSearch`](https://bjarkehautop.github.io/causalDisco/reference/CausalDiscoSearch.md)
  : R6 Interface to causalDisco Search Algorithms
- [`PcalgSearch`](https://bjarkehautop.github.io/causalDisco/reference/PcalgSearch.md)
  : R6 Interface to pcalg Search Algorithms
- [`TetradSearch`](https://bjarkehautop.github.io/causalDisco/reference/TetradSearch.md)
  : R6 Interface to Tetrad Search Algorithms

## Setup for Tetrad Engine

Functions for installing and verifying the Tetrad Java backend.

- [`install_java()`](https://bjarkehautop.github.io/causalDisco/reference/install_java.md)
  : Install Eclipse Temurin JDK 25
- [`install_tetrad()`](https://bjarkehautop.github.io/causalDisco/reference/install_tetrad.md)
  : Install Tetrad GUI
- [`check_tetrad_install()`](https://bjarkehautop.github.io/causalDisco/reference/check_tetrad_install.md)
  : Check Tetrad Installation

## causalDisco Algorithm Run Functions

Low-level functions that execute causalDisco search algorithms and
detail their parameters.

- [`tfci_run()`](https://bjarkehautop.github.io/causalDisco/reference/tfci_run.md)
  : Run the TFCI Algorithm for Causal Discovery
- [`tges_run()`](https://bjarkehautop.github.io/causalDisco/reference/tges_run.md)
  : Run the TGES Algorithm for Causal Discovery
- [`tpc_run()`](https://bjarkehautop.github.io/causalDisco/reference/tpc_run.md)
  : Run the TPC Algorithm for Causal Discovery

## Tests for TPC

Test functions implemented for use in the TPC algorithm.

- [`cor_test()`](https://bjarkehautop.github.io/causalDisco/reference/cor_test.md)
  : Test for Vanishing Partial Correlations
- [`reg_test()`](https://bjarkehautop.github.io/causalDisco/reference/reg_test.md)
  : Regression-based Information Loss Test

## Simulation

- [`generate_dag_data()`](https://bjarkehautop.github.io/causalDisco/reference/generate_dag_data.md)
  : Generate Synthetic Data from a Linear Gaussian DAG
- [`sim_dag()`](https://bjarkehautop.github.io/causalDisco/reference/sim_dag.md)
  : Simulate a random DAG
- [`sim_gaus_from_dag()`](https://bjarkehautop.github.io/causalDisco/reference/sim_gaus_from_dag.md)
  : Simulate Gaussian data according to DAG

## Example Datasets

Small simulated datasets to illustrate causalDisco workflows.

- [`tpc_example`](https://bjarkehautop.github.io/causalDisco/reference/tpc_example.md)
  : Simulated Life-Course Data
- [`cat_data`](https://bjarkehautop.github.io/causalDisco/reference/cat_data.md)
  : Simulated Categorical Data
- [`cat_data_mcar`](https://bjarkehautop.github.io/causalDisco/reference/cat_data_mcar.md)
  : Simulated Categorical Data with MCAR
- [`cat_ord_data`](https://bjarkehautop.github.io/causalDisco/reference/cat_ord_data.md)
  : Simulated Ordered Categorical Data
- [`generate_dag_data()`](https://bjarkehautop.github.io/causalDisco/reference/generate_dag_data.md)
  : Generate Synthetic Data from a Linear Gaussian DAG
- [`mix_data`](https://bjarkehautop.github.io/causalDisco/reference/mix_data.md)
  : Simulated Mixed Data
- [`num_data`](https://bjarkehautop.github.io/causalDisco/reference/num_data.md)
  : Simulated Numerical Data
- [`num_data_latent`](https://bjarkehautop.github.io/causalDisco/reference/num_data_latent.md)
  : Simulated Numerical Data with Latent Variable

## Printing, Summarizing, and Plotting Objects

- [`print(`*`<knowledge>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/print.knowledge.md)
  : Print a Knowledge Object
- [`print(`*`<knowledgeable_caugi>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/print.knowledgeable_caugi.md)
  : Print a Knowledgeable Caugi Object
- [`summary(`*`<knowledge>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/summary.knowledge.md)
  : Summarize a Knowledge Object
- [`summary(`*`<knowledgeable_caugi>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/summary.knowledgeable_caugi.md)
  : Summarize a Knowledgeable Caugi Object
- [`plot`](https://bjarkehautop.github.io/causalDisco/reference/plot.md)
  : Plot Method for causalDisco Objects
- [`plot(`*`<knowledge>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/plot.knowledge.md)
  : Plot a Knowledge Object
- [`plot(`*`<knowledgeable_caugi>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/plot.knowledgeable_caugi.md)
  : Plot a Knowledgeable Caugi Object
- [`make_tikz()`](https://bjarkehautop.github.io/causalDisco/reference/make_tikz.md)
  : Generate TikZ Code from a Caugi Plot
- [`make_tikz_old()`](https://bjarkehautop.github.io/causalDisco/reference/make_tikz_old.md)
  : Generate Latex tikz code for plotting a temporal DAG, PDAG or PAG.

## Knowledge helpers

- [`add_exogenous()`](https://bjarkehautop.github.io/causalDisco/reference/add_exogenous.md)
  [`add_exo()`](https://bjarkehautop.github.io/causalDisco/reference/add_exogenous.md)
  : Add Exogenous Variables to Knowledge

- [`add_tier()`](https://bjarkehautop.github.io/causalDisco/reference/add_tier.md)
  : Add a Tier to Knowledge

- [`add_to_tier()`](https://bjarkehautop.github.io/causalDisco/reference/add_to_tier.md)
  : Add Variables to a Tier in Knowledge

- [`add_vars()`](https://bjarkehautop.github.io/causalDisco/reference/add_vars.md)
  : Add Variables to Knowledge

- [`remove_edge()`](https://bjarkehautop.github.io/causalDisco/reference/remove_edge.md)
  : Remove an Edge from Knowledge

- [`remove_tiers()`](https://bjarkehautop.github.io/causalDisco/reference/remove_tiers.md)
  : Remove Tiers from Knowledge

- [`remove_vars()`](https://bjarkehautop.github.io/causalDisco/reference/remove_vars.md)
  : Remove Variables Along with Their Edges from Knowledge

- [`require_edge()`](https://bjarkehautop.github.io/causalDisco/reference/require_edge.md)
  : Add Required Edges to Knowledge

- [`forbid_edge()`](https://bjarkehautop.github.io/causalDisco/reference/forbid_edge.md)
  : Add Forbidden Edges to Knowledge

- [`get_tiers()`](https://bjarkehautop.github.io/causalDisco/reference/get_tiers.md)
  : Get Tiers from Knowledge

- [`reorder_tiers()`](https://bjarkehautop.github.io/causalDisco/reference/reorder_tiers.md)
  : Reorder Tiers in Knowledge

- [`seq_tiers()`](https://bjarkehautop.github.io/causalDisco/reference/seq_tiers.md)
  : Generate a Bundle of Tier–Variable Formulas

- [`reposition_tier()`](https://bjarkehautop.github.io/causalDisco/reference/reposition_tier.md)
  : Move a Tier Relative to Another in Knowledge

- [`convert_tiers_to_forbidden()`](https://bjarkehautop.github.io/causalDisco/reference/convert_tiers_to_forbidden.md)
  : Convert Tiered Knowledge to Forbidden Knowledge

- [`set_knowledge()`](https://bjarkehautop.github.io/causalDisco/reference/set_knowledge.md)
  : Set Background Knowledge to Disco Method

- [`as_tetrad_knowledge()`](https://bjarkehautop.github.io/causalDisco/reference/as_tetrad_knowledge.md)
  : Convert Knowledge to Tetrad Knowledge

- [`as_bnlearn_knowledge()`](https://bjarkehautop.github.io/causalDisco/reference/as_bnlearn_knowledge.md)
  : Convert Knowledge to bnlearn Knowledge

- [`as_pcalg_constraints()`](https://bjarkehautop.github.io/causalDisco/reference/as_pcalg_constraints.md)
  : Convert Knowledge to pcalg Knowledge

- [`knowledge_to_caugi()`](https://bjarkehautop.github.io/causalDisco/reference/knowledge_to_caugi.md)
  : Convert Knowledge to Caugi

- [`knowledgeable_caugi()`](https://bjarkehautop.github.io/causalDisco/reference/knowledgeable_caugi.md)
  : Knowledgeable Caugi Object

- [`new_knowledgeable_caugi()`](https://bjarkehautop.github.io/causalDisco/reference/new_knowledgeable_caugi.md)
  : Create a Knowledgeable Caugi Object

- [`edges()`](https://bjarkehautop.github.io/causalDisco/reference/edges.md)
  :

  Retrieve edges from a `knowledgeable_caugi` object

- [`nodes()`](https://bjarkehautop.github.io/causalDisco/reference/nodes.md)
  :

  Retrieve nodes from a `knowledgeable_caugi` object

- [`deparse_knowledge()`](https://bjarkehautop.github.io/causalDisco/reference/deparse_knowledge.md)
  : Deparse a Knowledge Object into Knowledge DSL Code

- [`unfreeze()`](https://bjarkehautop.github.io/causalDisco/reference/unfreeze.md)
  : Unfreeze a Knowledge Object.

- [`` `+`( ``*`<knowledge>`*`)`](https://bjarkehautop.github.io/causalDisco/reference/plus-.knowledge.md)
  : Merge Knowledge Objects

- [`knowledge.knowledgeable_caugi()`](https://bjarkehautop.github.io/causalDisco/reference/knowledge.knowledgeable_caugi.md)
  : Extract Knowledge from a Knowledgeable Caugi

## Evaluation & Confusion Metrics

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
  : Negative Predictive Value
- [`false_omission_rate()`](https://bjarkehautop.github.io/causalDisco/reference/false_omission_rate.md)
  : False Omission Rate
- [`average_degree()`](https://bjarkehautop.github.io/causalDisco/reference/average_degree.md)
  : Compute average degree for adjacency matrix

## Miscellaneous

- [`engine_registry`](https://bjarkehautop.github.io/causalDisco/reference/engine_registry.md)
  : Supported Engines
