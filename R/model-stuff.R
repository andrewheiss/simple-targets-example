# This could also just be handled in an Rmd file or script or whatever since it
# runs fast, but if the model taks a long time, it's better to have it tracked
# by targets so you're not rerunning it all the time

suppressPackageStartupMessages(library(brms))

run_penguin_model1 <- function(data) {
  model <- brm(
    bf(body_mass_g ~ flipper_length_mm + bill_length_mm + (1 | sex),
       decomp = "QR"),
    data = data,
    family = gaussian(),
    chains = 4, iter = 2000, warmup = 1000, seed = 1234
  )
  
  return(model)
}
