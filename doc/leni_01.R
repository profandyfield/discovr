## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------


## ----1_1, echo = TRUE, eval = FALSE-------------------------------------------
#  library(tidyverse) #if you haven't already executed this command
#  library(here) #if you haven't already executed this command
#  
#  oxoby_tib <- tibble::tibble(.rows = 36) %>%
#    dplyr::mutate(
#      	singer = c(rep("Bon Scott", 18), rep("Brian Johnson", 18)) %>% forcats::as_factor(),
#      	offer = c(1, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5)
#      	)
#  
#  # You can go on to save this tibble to a csv in your data folder using:
#  
#  oxoby_tib %>%
#    readr::write_csv(., here::here("data/acdc.csv"))

