library(causalDisco)
# install.packages(micd)# Gives access to the conditional_gaussian test for pcalg and causalDisco

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

# Directory where the figures included in article.tex are written.
fig_dir <- "jss-paper/figures"

data("nlsy97")
summary(nlsy97)

# The conditional independence tests require complete observations, so we
# restrict the analysis to complete cases.
nlsy97_cc <- nlsy97[complete.cases(nlsy97), ]

# PC algorithm via pcalg with the conditional Gaussian test.
pc_bnlearn <- pc(engine = "bnlearn", test = "mi_cg", alpha = 0.05)
fit_pcalg <- disco(nlsy97_cc, pc_bnlearn)

pdf(file.path(fig_dir, "pc-bnlearn.pdf"), width = 7, height = 6)
plot(
  fit_pcalg,
  node_style = list(size = 0.8),
  label_style = list(fontsize = 10)
)
dev.off()


# The same algorithm and test via the Tetrad backend.
# Requires having set up Tetrad to run. See package README for instructions.
pc_tetrad <- pc(
  engine = "tetrad",
  test = "conditional_gaussian",
  alpha = 0.05
)
res_tetrad <- disco(nlsy97_cc, pc_tetrad)


# Score-based search: GES via Tetrad with the conditional Gaussian BIC score.
ges_tetrad <- ges(
  engine = "tetrad",
  score = "conditional_gaussian"
)
disco(nlsy97_cc, ges_tetrad)


# Temporal background knowledge: variables are tiered by survey round, so that
# variables from a later round cannot cause variables from an earlier one.
kn <- knowledge(
  nlsy97_cc,
  tier(
    R1 ~ starts_with("r1_"),
    R6 ~ starts_with("r6_"),
    R12 ~ starts_with("r12_")
  )
)

# Re-run PC with the temporal tiers as background knowledge.
tpc_cd <- tpc(
  engine = "causalDisco",
  test = "conditional_gaussian",
  alpha = 0.05
)
fit_cd_kn <- disco(nlsy97_cc, tpc_cd, knowledge = kn)

pdf(file.path(fig_dir, "tpc-causalDisco-kn.pdf"), width = 7, height = 6)
plot(fit_cd_kn)
dev.off()
