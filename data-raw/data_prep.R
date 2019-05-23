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


# Goat or dog

animal_bride <- tibble(.rows = 20) %>%
  dplyr::mutate(
    wife = c(rep("Goat", 12), rep("Dog", 8)) %>% forcats::as_factor(),
    animal = c(69, 25, 31, 29, 12, 49, 25, 35, 51, 40, 23, 37, 16, 65, 39, 35, 19, 53, 27, 44),
    life_satisfaction = c(47, 6, 47, 33, 13, 56, 42, 51, 42, 46, 27, 48, 52, 66, 65, 61, 60, 68, 37, 72)
  )

usethis::use_data(animal_bride)



# Metallica

metallica <- tibble(.rows = 7) %>%
  dplyr::mutate(
    name = c("Lars Ulrich","James Hetfield", "Kirk Hammett", "Rob Trujillo", "Jason Newsted", "Cliff Burton", "Dave Mustaine"),
    birth_date = c("1963-12-26", "1963-08-03", "1962-11-18", "1964-10-23", "1963-03-04", "1962-02-10", "1961-09-13") %>% lubridate::ymd(),
    death_date = c(NA, NA, NA, NA, NA, "1986-09-27", NA) %>%
      lubridate::ymd(),
    instrument = c("Drums", "Guitar", "Guitar", "Bass", "Bass", "Bass", "Guitar") %>%
      forcats::as_factor() %>% forcats::fct_relevel("Guitar", "Bass", "Drums"),
    current_member = c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE),
    songs_written =  c(111, 112, 56, 16, 3, 11, 6),
    net_worth = c(300000000, 300000000, 200000000, 20000000, 40000000, 1000000, 20000000),
    worth_per_song = net_worth/songs_written
  )

usethis::use_data(metallica)

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

# Tea 15

tea15 <- tibble(.rows = 15) %>%
  dplyr::mutate(
    tea = c(2, 4, 3, 4, 2, 3, 5, 5, 2, 5, 1, 3, 3, 4, 1),
    cog_fun = c(60, 47, 31, 62, 44, 41, 49, 56, 45, 56, 57, 40, 54, 34, 46)
  )

usethis::use_data(tea15)

# zhang_subsample

zhang_sample <- get_data("zhang_2013_subsample.csv") %>%
  dplyr::mutate(
    id = forcats::as_factor(id),
    name_type = forcats::as_factor(name_type),
    sex = forcats::as_factor(sex)
  )

usethis::use_data(zhang_sample)
