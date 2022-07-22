clean_penguins <- function(filename) {
  penguins_raw <- read_csv(filename) %>% 
    drop_na(sex)
  
  return(penguins_raw)
}
