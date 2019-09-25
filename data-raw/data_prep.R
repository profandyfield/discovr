## code to prepare `DATASET` dataset goes here

library(tidyverse)
library(here)
library(haven)
library(randomNames)
library(sjlabelled)



get_data <- function(name){
  tib <- paste0("data-raw/", name) %>%
    here::here() %>%
    readr::read_csv()
  return(tib)
}

get_spss <- function(name){
  file.path("..", "..", "books", "discovering_statistics", "dsu_spss", "dsus_05", "dsus_5_web_materials", "ds5_spss_files", name) %>%
    haven::read_sav() %>%
    return()
}

random_letter <- function(){
  return(letters[runif(1, 0, 26)])
}

get_id <- function(n_letters = 4){
  code <- random_letter()
  for(i in 1:(n_letters-1)){
    code <- paste0(code, random_letter())
    i = i+1
  }
  return(code)
}

get_ids <- function(length = 4){
  ids <- character(length = length)
  for(i in 1:length){
    ids[i] <- get_id()
  }
  return(ids)
}



#########

# Animal bride

animal_bride <- tibble(.rows = 20) %>%
  dplyr::mutate(
    wife = c(rep("Goat", 12), rep("Dog", 8)) %>% forcats::as_factor(),
    animal = c(69, 25, 31, 29, 12, 49, 25, 35, 51, 40, 23, 37, 16, 65, 39, 35, 19, 53, 27, 44),
    life_satisfaction = c(47, 6, 47, 33, 13, 56, 42, 51, 42, 46, 27, 48, 52, 66, 65, 61, 60, 68, 37, 72)
  )

usethis::use_data(animal_bride)

######
# Ice bucket challenge

ice_bucket <-  file.path("..", "..", "data", "dsu_spss_data", "dsus_development_and_diagrams", "ice_bucket_challenge.csv") %>%
  readr::read_csv()

upload_day <- numeric()
for(i in 1:nrow(ice_bucket)){
  if(is.na(ice_bucket$YTVids[i]) == FALSE & ice_bucket$YTVids[i] > 0 & ice_bucket$YTVids[i] < 205){
  temp <- rep(ice_bucket$Days[i], ice_bucket$YTVids[i])
  upload_day <- c(upload_day, temp)
  }
}

ice_bucket <- tibble::tibble(.rows = length(upload_day)) %>%
  dplyr::mutate(
    upload_day = upload_day
  )

here::here("data-raw/ice_bucket.csv") %>%
  readr::write_csv(ice_bucket, path = .)

usethis::use_data(ice_bucket)

######
# Exam anxiety

  get_spss_dev("exam_anxiety.sav") %>%
  dplyr::rename_all(tolower) %>%
  dplyr::rename(id = code, exam_grade = exam) %>%
  dplyr::mutate(
    id = forcats::as_factor(id),
    sex = forcats::as_factor(sex),
  )

here::here("data-raw/exam_anxiety.csv") %>%
  readr::write_csv(exam_anxiety, path = .)

usethis::use_data(exam_anxiety)

#########


# Invisibility

invisibility_cloak <- tibble::tibble(.rows = 24) %>%
  dplyr::mutate(
    id = randomNames(n = nrow(.), which.names = "first"),
    cloak = c(rep("No cloak", 12), rep("Cloak", 12)) %>% forcats::as_factor(),
    mischief = c(3, 1, 5, 4, 6, 4, 6, 2, 0, 5, 4, 5, 4, 3, 6, 6, 8, 5, 5, 4, 2, 5, 7, 5),
    )

here::here("data-raw/invisibility.csv") %>%
  readr::write_csv(invisibility_cloak, path = .)

usethis::use_data(invisibility_cloak)

# Invisibility RM

new_id <- rep(invisibility_cloak$id[1:12], 2)

invisibility_rm <- invisibility_cloak %>%
  dplyr::mutate(
    id = new_id,
  ) %>%
  dplyr::arrange(id)

here::here("data-raw/invisibility_rm.csv") %>%
  readr::write_csv(invisibility_rm, path = .)

usethis::use_data(invisibility_rm)


# Jiminy cricket

jiminy_cricket <- get_spss("jiminy_cricket.sav") %>%
  dplyr::rename_all(tolower) %>%
  dplyr::mutate(
    strategy = forcats::as_factor(strategy) %>%  tolower() %>% sub("(\\w)", "\\U\\1", perl = TRUE, .)
  )

here::here("data-raw/jiminy_cricket.csv") %>%
  readr::write_csv(jiminy_cricket, path = .)

usethis::use_data(jiminy_cricket)



# Johns et al. (2012)

johns_2012 <- get_data("johns_2012.csv") %>%
  dplyr::rename_all(list(tolower)) %>%
  dplyr::mutate(
    partners = forcats::as_factor(partners)
  )

usethis::use_data(johns_2012)

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

# Notebook

notebook <- get_spss("notebook.sav") %>%
  dplyr::rename_all(tolower) %>%
  dplyr::mutate(
    sex = forcats::as_factor(sex),
    film = forcats::as_factor(film),
  )

here::here("data-raw/notebook.csv") %>%
  readr::write_csv(notebook, path = .)

usethis::use_data(notebook)

# Ong et al (2011)

ong_2011 <- get_data("data_dev/ong_2011.csv") %>%
  dplyr::rename_all(tolower) %>%
  dplyr::select(subno, age, sex, fb_status, fb_profile_pa:fb_profile_tot, extra, npqc_r_total) %>%
  dplyr::rename(
    id = subno,
    status = fb_status,
    attractive = fb_profile_pa,
    glamour = fb11_profile_g,
    cool = fb11_profile_c,
    fashion = fb_profile_f,
    profile = fb_profile_tot,
    extraversion = extra,
    narcissism = npqc_r_total
  ) %>%
  dplyr::mutate(
    id = forcats::as_factor(id),
    sex = forcats::as_factor(sex)
  )

ong_tidy <- ong_2011 %>%
  tidyr::gather(key = rating_type, value = rating, -c(id:status, profile, extraversion, narcissism)) %>%
  dplyr::mutate(
    rating_type = forcats::as_factor(rating_type),
    rating_type = forcats::fct_recode(rating_type, Attractiveness = "attractive", Glamour = "glamour", Cool = "cool", Fashionable = "fashion")
  )

here::here("data-raw/ong_2011_tidy.csv") %>%
  readr::write_csv(ong_tidy, path = .)

here::here("data-raw/ong_2011.csv") %>%
  readr::write_csv(ong_2011, path = .)

usethis::use_data(ong_2011, overwrite = TRUE)
usethis::use_data(ong_tidy, overwrite = TRUE)


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
