library(causalDisco)

########## 3.1. Method objects
data("tpc_example")
pc_pcalg <- pc(
  engine = "pcalg",
  test = "fisher_z",
  alpha = 0.05
)
fit <- disco(data = tpc_example, method = pc_pcalg)


######### 3.2. Background knowledge representation

kn <- knowledge(
  A %-->% D,
  C %!-->% D,
  tier(
    1 ~ A + B,
    2 ~ C + D
  )
)
kn


plot(kn)


kn2 <- knowledge(
  tpc_example,
  tier(
    1 ~ starts_with("child"),
    2 ~ starts_with("youth"),
    3 ~ starts_with("oldage")
  )
)
kn2

tpc_cd <- tpc(
  engine = "causalDisco",
  test = "fisher_z",
  alpha = 0.05
)
fit2 <- disco(data = tpc_example, method = tpc_cd, knowledge = kn2)

######### 4 Data analysis example
data("nlsy97")
nlsy97_cc <- nlsy97[complete.cases(nlsy97), ]
pc_pcalg <- pc(engine = "pcalg", test = "conditional_gaussian", alpha = 0.05)
result_pcalg <- disco(nlsy97_cc, pc_pcalg)
plot(result_pcalg)


# Requires having set up Tetrad to run. See package README for instructions.

pc_tetrad <- pc(engine = "tetrad", test = "conditional_gaussian", alpha = 0.05)
result_pcalg <- disco(nlsy97_cc, pc_pcalg)

plot(result_pcalg)

pc_tetrad <- pc(engine = "tetrad", test = "conditional_gaussian", alpha = 0.05)
disco(nlsy97_cc, pc_tetrad)

ges_pcalg <- ges(
  engine = "pcalg",
  score = "bic_cg"
)
disco(nlsy97_cc, ges_pcalg)
