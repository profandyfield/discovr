## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  warning = FALSE,
  message = FALSE
)

## ----setup, echo = FALSE------------------------------------------------------


## ----1_1, echo = TRUE, eval = FALSE-------------------------------------------
#  readr::write_csv(metalli_tib, "../data/metallica.csv")

## ----1_3, echo = TRUE, eval = FALSE-------------------------------------------
#  tibble::tibble(.rows = 20) %>%
#    dplyr::mutate(
#      	method = c(rep("Electric shock", 10), rep("Being nice", 10)) %>% forcats::as_factor(),
#      	sex = c(rep("Female", 5), rep("Male", 5)) %>% rep(., 2) %>% forcats::as_factor(),
#      	mark = c(6, 7, 5, 4, 8, 15, 14, 20, 13, 13, 12, 10, 7, 8, 13, 10, 9, 8, 6, 7)
#      	) %>%
#    readr::write_csv(., here::here("data/method_of_teaching.csv"))

## ----1_4, echo = TRUE, eval = FALSE-------------------------------------------
#  oxoby_tib <- here::here("data/acdc.csv") %>% read_csv()
#  
#  oxoby_tib %>%
#    dplyr::mutate(
#      	mao = c(2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 0, 1, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 1)
#      	)
#  
#  oxoby_tib %>%
#    readr::write_csv(., here::here("data/acdc.csv)

## ----1_5, echo = TRUE, eval = FALSE-------------------------------------------
#  tibble::tibble(.rows = 10) %>%
#    dplyr::mutate(
#      	sex = c(rep("Male", 5), rep("Female", 5)) %>% forcats::as_factor(),
#      	distance = c(0.16, 0.40, 1.36, 1.99, 3.61, 1.40, 1.81, 1.96, 3.02, 4.82),
#      	time = c(15, 30, 37, 65, 103, 22, 140, 160, 183, 245)
#      	) %>%
#    readr::write_csv(., here::here("data/shopping_exercise.csv"))

## ----1_6, echo = TRUE, eval = FALSE-------------------------------------------
#  tibble::tibble(.rows = 20) %>%
#    dplyr::mutate(
#      	wife = c(rep("Goat", 12), rep("Dog", 8)) %>% forcats::as_factor(),
#      	animal = c(69, 25, 31, 29, 12, 49, 25, 35, 51, 40, 23, 37, 16, 65, 39, 35, 19, 53, 27, 44),
#      	life_satisfaction = c(47, 6, 47, 33, 13, 56, 42, 51, 42, 46, 27, 48, 52, 66, 65, 61, 60, 68, 37, 72)
#      	) %>%
#    readr::write_csv(., here::here("data/goat_or_dog.csv"))

## ----1_7, echo = TRUE, eval = FALSE-------------------------------------------
#  tibble::tibble(.rows = 15) %>%
#    dplyr::mutate(
#      	tea = c(2, 4, 3, 4, 2, 3, 5, 5, 2, 5, 1, 3, 3, 4, 1),
#      	cog_fun = c(60, 47, 31, 62, 44, 41, 49, 56, 45, 56, 57, 40, 54, 34, 46)
#      	) %>%
#    readr::write_csv(., here::here("data/tea_makes_you_brainy_15.csv"))

## ----1_8, echo = TRUE, eval = FALSE-------------------------------------------
#  tibble::tibble(.rows = 52) %>%
#    dplyr::mutate(
#      id = c(171, 35, 57, 36, 53, 176, 76, 184, 64, 166, 14, 100, 30, 49, 157, 14, 68, 71, 4, 40, 66, 27, 61, 27, 36, 33, 120, 113, 95, 99, 78, 32, 43, 183, 103, 31, 86, 54, 5, 20, 13, 59, 58, 188, 187, 15, 50, 9, 45, 60, 73, 189) %>% forcats::as_factor(),
#      sex = c(rep("Female", 27), rep("Male", 25)) %>% forcats::as_factor(),
#      name_type = c(rep("Female fake name", 10), rep("Male fake name", 10), rep("Own name", 7), rep("Female fake name", 7), rep("Male fake name", 9), rep("Own name", 9)) %>% forcats::as_factor(),
#      	accuracy = c(33, 22, 46, 53, 14, 27, 64, 62, 75, 50, 69, 60, 82, 78, 38, 63, 46, 27, 61, 29, 75, 33, 83, 42, 10, 44, 27, 53, 47, 87, 41, 62, 67, 57, 31, 63, 34, 40, 22, 17, 60, 47, 57, 70, 57, 33, 83, 86, 65, 64, 37, 80)
#      	) %>%
#    readr::write_csv(., here::here("data/zhang_2013_subsample.csv"))

