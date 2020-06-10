library(tidyverse)
library(here)
library(haven)
library(randomNames)
library(sjlabelled)
library(stringr)


get_spss <- function(name){
  file.path("..", "..", "books", "discovering_statistics", "dsu_spss", "dsus_05", "dsus_5_web_materials", "ds5_spss_files", name) %>%
    haven::read_sav() %>%
    haven::zap_formats() %>%
    haven::zap_label() %>%
    haven::zap_widths()
}

random_letter <- function(inc_numbers = FALSE){
  if(inc_numbers == FALSE){
    return(letters[runif(1, 1, 26)])
  } else {
    if(runif(1) < 0.5){
      return(letters[runif(1, 1, 26)])
    } else {
      return(round(runif(1, 0, 9)))
    }
  }

}

get_id <- function(n_letters = 4, numbers = FALSE){
  code <- random_letter(inc_numbers = numbers)
  for(i in 1:(n_letters-1)){
    code <- paste0(code, random_letter(inc_numbers = numbers))
    i = i+1
  }
  return(code)
}

add_ids <- function(tibble, code_length = 4, inc_numbers = FALSE){
  ids <- character(length = nrow(tibble))
  for(i in 1:nrow(tibble)){
    ids[i] <- get_id(n_letters = code_length, numbers = inc_numbers)
  }
  new_tib <- tibble %>%
    mutate(
      id = ids
    ) %>%
    dplyr::select(id, everything())
  return(new_tib)
}

get_data <- function(name){
  paste0("data-raw/csv_files/", name) %>%
    here::here() %>%
    readr::read_csv()
}