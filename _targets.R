library(targets)

tar_option_set(
  # Packages that every target has access to
  packages = c("tidyverse")
)

options(mc.cores = 4,
        brms.backend = "cmdstanr")

source("R/cleaning-stuff.R")
source("R/model-stuff.R")

list(
  tar_target(penguins_file, "data/penguins.csv", format = "file"),
  tar_target(penguins_clean, clean_penguins(penguins_file)),
  tar_target(model1, run_penguin_model1(penguins_clean))
)