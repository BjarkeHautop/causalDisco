test_that("new_disco stops if not knowledge", {
  kn <- 1
  cg <- caugi::as_caugi(
    matrix(
      c(
        0,
        1,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0
      ),
      nrow = 4,
      byrow = TRUE
    ),
    class = "DAG"
  )

  expect_error(
    new_disco(cg, kn),
    "Input must be a knowledge instance."
  )
})

test_that("as_disco stops if not knowledge", {
  kn <- 1
  cg <- caugi::as_caugi(
    matrix(
      c(
        0,
        1,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0
      ),
      nrow = 4,
      byrow = TRUE
    ),
    class = "DAG"
  )

  expect_error(
    as_disco.default(cg, kn),
    "Input must be a knowledge instance."
  )
  expect_error(
    as_disco.pcAlgo(cg, kn),
    "Input must be a knowledge instance."
  )
  expect_error(
    as_disco.fciAlgo(cg, kn),
    "Input must be a knowledge instance."
  )
  expect_error(
    as_disco.tetrad_graph(cg, kn),
    "Input must be a knowledge instance."
  )
  expect_error(
    as_disco.EssGraph(cg, kn),
    "Input must be a knowledge instance."
  )
})

test_that("knowledge helpers works", {
  expect_error(
    set_knowledge.Disco(1, 1),
    "Input must be a knowledge instance."
  )

  kn <- knowledge()
  cg <- caugi::as_caugi(
    matrix(
      c(
        0,
        1,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0
      ),
      nrow = 4,
      byrow = TRUE
    ),
    class = "DAG"
  )
  kcg <- as_disco(cg, kn)

  nodes_kcg <- nodes(kcg$caugi)
  expected_nodes <- tibble::tibble(
    name = c("V1", "V2", "V3", "V4")
  )
  expect_equal(nodes_kcg, expected_nodes)

  edges_kcg <- edges(kcg$caugi)
  expected_edges <- tibble::tibble(
    from = c("V1", "V2", "V3"),
    edge = c("-->", "-->", "-->"),
    to = c("V2", "V3", "V4")
  )
  expect_equal(edges_kcg, expected_edges)

  kcg_knowledge <- knowledge.Disco(kcg)
  expect_equal(kcg_knowledge, kn)

  expect_null(`$.Disco`(kcg, "hi"))
  output <- `$.Disco`(kcg, "vars")
  expect_equal(nrow(output), 0)
  expect_equal(class(output)[1], "tbl_df")

  output <- `$<-.Disco`(kcg, "hi", 1)
  expect_equal(output$hi, 1)

  output <- `$<-.Disco`(kcg, "vars", 1)
  expect_equal(output$knowledge$vars, 1)

  output <- `[[.Disco`(kcg, "hi")
  expect_null(output)

  output <- `[[.Disco`(kcg, "vars")
  expect_equal(nrow(output), 0)
  expect_equal(class(output)[1], "tbl_df")

  output <- `[[.Disco`(kcg, "knowledge")
  expect_true(is_knowledge(output))
  expect_false(is_disco(output))

  output <- `[[<-.Disco`(kcg, "hi", 1)
  expect_equal(output$hi, 1)
  expect_equal(class(output), "Disco")

  output <- `[[<-.Disco`(kcg, "vars", 1)
  expect_equal(output$knowledge$vars, 1)
  expect_equal(class(output), "Disco")
})


test_that("as_disco print and summary methods", {
  kn <- knowledge()
  cg <- caugi::as_caugi(
    matrix(
      c(
        0,
        1,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0
      ),
      nrow = 4,
      byrow = TRUE
    ),
    class = "DAG"
  )
  kcg <- as_disco(cg, kn)
  print(kcg)
  print(kcg, wide = TRUE)
  print(kcg, compact = TRUE)
  print(kcg, wide = TRUE, compact = TRUE)
  lifecycle::expect_deprecated(summary(kcg))
  expect_true(TRUE)
})

test_that("as_disco print and summary methods works for empty kcg", {
  kn <- knowledge()
  cg <- caugi::caugi()
  kcg <- as_disco(cg, kn)
  print(kcg)
  print(kcg, wide = TRUE)
  print(kcg, compact = TRUE)
  print(kcg, wide = TRUE, compact = TRUE)
  lifecycle::expect_deprecated(summary(kcg))
  expect_true(TRUE)
})

test_that(".disco_graph_type maps storage class to semantic class", {
  expect_equal(.disco_graph_type("PDAG", has_knowledge = FALSE), "CPDAG")
  expect_equal(.disco_graph_type("PDAG", has_knowledge = TRUE), "MPDAG")
  expect_equal(.disco_graph_type("PAG", has_knowledge = FALSE), "PAG")
  expect_equal(.disco_graph_type("PAG", has_knowledge = TRUE), "PAG")
  expect_equal(.disco_graph_type("RFCI-PAG", has_knowledge = FALSE), "RFCI-PAG")
  expect_equal(.disco_graph_type(NULL, has_knowledge = FALSE), "UNKNOWN")
})

test_that(".knowledge_has_content detects tiers, required, and forbidden edges", {
  df <- data.frame(A = 1, B = 2, C = 3)
  expect_false(.knowledge_has_content(NULL))
  expect_false(.knowledge_has_content(knowledge()))
  expect_true(.knowledge_has_content(knowledge(df, tier(1 ~ A, 2 ~ B))))
  expect_true(.knowledge_has_content(knowledge(df, A %-->% B)))
  expect_true(.knowledge_has_content(knowledge(df, A %!-->% B)))
})

test_that("disco records semantic graph class for print", {
  skip_if_not_installed("pcalg")
  data(tpc_example)

  cpdag <- disco(
    data = tpc_example,
    method = pc(engine = "pcalg", test = "fisher_z")
  )
  expect_equal(cpdag$graph_type, "CPDAG")
  expect_match(
    paste(utils::capture.output(print(cpdag)), collapse = "\n"),
    "<Disco CPDAG"
  )

  kn <- knowledge(
    tpc_example,
    tier(
      child ~ starts_with("child"),
      youth ~ starts_with("youth"),
      old ~ starts_with("old")
    )
  )
  mpdag <- disco(
    data = tpc_example,
    method = tpc(engine = "causalDisco", test = "fisher_z"),
    knowledge = kn
  )
  expect_equal(mpdag$graph_type, "MPDAG")

  pag <- disco(
    data = tpc_example,
    method = fci(engine = "pcalg", test = "fisher_z")
  )
  expect_equal(pag$graph_type, "PAG")
})
