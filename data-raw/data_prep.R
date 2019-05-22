## code to prepare `DATASET` dataset goes here

library(tidyverse)
library(here)

get_data <- function(name){
  tib <- paste0("data-raw/", name) %>%
    here::here() %>%
    readr::read_csv()
  return(tib)
}
#########



# Method of teaching

teaching <- get_data("method_of_teaching.csv") %>%
  dplyr::mutate(
    method = forcats::as_factor(method),
    sex = forcats::as_factor(sex)
  )

usethis::use_data(teaching)

# Oxoby (2008)

acdc <- get_data("oxoby_2008.csv") %>%
  dplyr::mutate(
    singer = forcats::as_factor(singer)
  )

usethis::use_data(acdc)


# shopping_exercise.csv

shopping <- get_data("shopping_exercise.csv") %>%
  dplyr::mutate(
    sex = forcats::as_factor(sex)
  )

usethis::use_data(shopping)


