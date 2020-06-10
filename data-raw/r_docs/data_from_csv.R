## Convert csvs in raw-data to r data objects
library(magrittr)

here::here("data-raw/r_docs/data_functions.R") %>% source()

#########
# Album sales data

album_sales <- get_data("album_sales.csv")
usethis::use_data(album_sales, overwrite = TRUE)
#########

# Animal bride
animal_bride <- get_data("animal_bride.csv") %>%
  dplyr::mutate(
    wife = forcats::as_factor(wife)
  )

usethis::use_data(animal_bride)

#########
# Beckham (1929) data
beckham_1929 <- get_data("beckham_1929.csv") %>%
  dplyr::mutate(
    profession = forcats::as_factor(profession),
    response = forcats::as_factor(response)
  )

usethis::use_data(beckham_1929, overwrite = TRUE)
#########
# Biggest liar

biggest_liar <- get_data("biggest_liar.csv") %>%
  dplyr::mutate(
    novice = forcats::as_factor(novice),
    position = ifelse(position > 5, 5, position)
  )

usethis::use_data(biggest_liar, overwrite = TRUE)
#########
# Big hairy spider

big_hairy_spider <- get_data("big_hairy_spider.csv") %>%
  dplyr::mutate(
    spider_type = forcats::as_factor(spider_type),
  )

usethis::use_data(big_hairy_spider, overwrite = TRUE)

##########
# bronstein_2019

bronstein_2019 <- get_data("bronstein_2019.csv")

usethis::use_data(bronstein_2019, overwrite = TRUE)

bronstein_miss_2019 <- get_data("bronstein_miss_2019.csv")
usethis::use_data(bronstein_miss_2019, overwrite = TRUE)

###########
# Catterplot

catterplot <- get_data("catterplot.csv")

usethis::use_data(catterplot, overwrite = TRUE)

###########
# Cat regression

cat_reg <- get_data("cat_regression.csv")
usethis::use_data(cat_reg, overwrite = TRUE)

###########
# Cats

cat_dance <- get_data("cat_dance.csv") %>%
  dplyr::mutate(
    dance = forcats::as_factor(dance),
    reward = forcats::as_factor(reward)
  )

usethis::use_data(cat_dance, overwrite = TRUE)

#########
# Chamorro-Premuzic et al. (2008) data

chamorro_premuzic <- get_data("chamorro_premuzic.csv") %>%
  dplyr::mutate(
    sex = forcats::as_factor(sex)
  )

usethis::use_data(chamorro_premuzic, overwrite = TRUE)
#########
# Child aggression data

child_aggression <- get_data("child_aggression.csv")
usethis::use_data(child_aggression, overwrite = TRUE)

#########
# Coldwell et al. (2006)

coldwell_2006 <- get_data("coldwell_2006.csv") %>%
  dplyr::mutate(
    child_gender = forcats::as_factor(child_gender)
  )

usethis::use_data(coldwell_2006, overwrite = TRUE)


#########
# Daniels (2012) data
daniels_2012 <- get_data("daniels_2012.csv") %>%
  dplyr::mutate(
    picture = forcats::as_factor(picture),
    theme_present = forcats::as_factor(theme_present)
  )

usethis::use_data(daniels_2012, overwrite = TRUE)
#########
# Dark lord

dark_lord <- get_data("dark_lord.csv") %>%
  dplyr::mutate(
    message = forcats::as_factor(message)
  )

usethis::use_data(dark_lord, overwrite = TRUE)

#########
# DF Beta

df_beta <- get_data("df_beta.csv")

usethis::use_data(df_beta, overwrite = TRUE)

#########
# Download festival

download <- get_data("download_festival.csv")
usethis::use_data(download, overwrite = TRUE)


###########
# Essay marks

essay_marks <- get_data("essay_marks.csv") %>%
  dplyr::mutate(
    grade = forcats::as_factor(grade) %>% forcats::fct_relevel(., "First class", "Upper second class", "Lower second class", "Third class")
  )

usethis::use_data(essay_marks, overwrite = TRUE)

######
# Exam anxiety

exam_anxiety <- get_data("exam_anxiety.csv") %>%
  dplyr::mutate(
    id = forcats::as_factor(id),
    sex = forcats::as_factor(sex)
  )

usethis::use_data(exam_anxiety, overwrite = TRUE)
###########
# gelman

gelman_2009 <- get_data("gelman_2009.csv")
usethis::use_data(gelman_2009, overwrite = TRUE)

########
## Glastonbury

glastonbury <- get_data("Glastonbury.csv") %>%
  dplyr::mutate(
    ticket_no = forcats::as_factor(ticket_no),
    subculture = forcats::as_factor(subculture) %>%
      forcats::fct_relevel(., "No subculture", "Raver", "Metalhead", "Hipster")
  )

usethis::use_data(glastonbury, overwrite = TRUE)
###########
# grades

grades <- get_data("grades.csv") %>%
  dplyr::mutate(
    stats = forcats::as_factor(stats) %>% forcats::fct_relevel(., "First class", "Upper second class", "Lower second class", "Third class", "Pass", "Fail"),
    gcse = forcats::as_factor(gcse) %>% forcats::fct_relevel(., "A", "B", "C", "D", "E", "F")
  )

usethis::use_data(grades, overwrite = TRUE)

#########
# Hiccups

hiccups <- get_data("hiccups.csv") %>%
  dplyr::mutate(
    intervention = forcats::as_factor(intervention)
  )

usethis::use_data(hiccups, overwrite = TRUE)
###########
# Honest lab

honesty_lab <- get_data("honesty_lab.csv")
usethis::use_data(honesty_lab, overwrite = TRUE)

######
# Ice bucket challenge

ice_bucket <- get_data("ice_bucket.csv")
usethis::use_data(ice_bucket, overwrite = TRUE)

#########
# Invisibility

invisibility_cloak <- get_data("invisibility.csv") %>%
  dplyr::mutate(
    cloak = forcats::as_factor(cloak)
  )

usethis::use_data(invisibility_cloak)

#########
# Invisibility RM

invisibility_rm <- get_data("invisibility_rm.csv") %>%
  dplyr::mutate(
    cloak = forcats::as_factor(cloak)
  )

usethis::use_data(invisibility_rm, overwrite = TRUE)


#########
# Jiminy cricket

jiminy_cricket <- get_data("jiminy_cricket.csv") %>%
  dplyr::mutate(
    strategy = forcats::as_factor(strategy),
    time = forcats::as_factor(time) %>% forcats::fct_relevel(., "Baseline")
  )

usethis::use_data(jiminy_cricket, overwrite = TRUE)

#########
# Johns et al. (2012)

johns_2012 <- get_data("johns_2012.csv") %>%
  dplyr::mutate(
    partners = forcats::as_factor(partners),
    colour = forcats::as_factor(colour) %>% forcats::fct_relevel(., "Pale pink", "Light pink", "Dark pink", "Red")
  )

usethis::use_data(johns_2012, overwrite = TRUE)
#########

#########
## lambert_2012

lambert_2012 <- get_data("lambert_2012.csv")

usethis::use_data(lambert_2012, overwrite = TRUE)

#########
## massar_2012

massar_2012 <- get_data("massar_2012.csv")

usethis::use_data(massar_2012, overwrite = TRUE)


#########
## mcnulty_2008

mcnulty_2008 <- get_data("mcnulty_2008.csv") %>%
  dplyr::mutate(
    spouse = forcats::as_factor(spouse) %>%
      forcats::fct_relevel(., "Husband")
  )

usethis::use_data(mcnulty_2008, overwrite = TRUE)

#########
# men like dogs

men_dogs <- get_data("men_dogs.csv") %>%
  dplyr::mutate(
    species = forcats::as_factor(species)
  )

usethis::use_data(men_dogs, overwrite = TRUE)

#########
# Metal health

metal_health <- get_data("metal_health.csv")

usethis::use_data(metal_health, overwrite = TRUE)

#####
# Metallica

metallica <- tibble::tibble(.rows = 7) %>%
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
    albums = c(10, 10, 10, 2, 4, 3, 0),
    worth_per_song = net_worth/songs_written
  )

here::here("data-raw/csv_files/metallica.csv") %>%
  readr::write_csv(metallica, path = .)


usethis::use_data(metallica, overwrite = TRUE)

#########
# Method of teaching

teaching <- get_data("method_of_teaching.csv") %>%
  dplyr::mutate(
    method = forcats::as_factor(method),
    sex = forcats::as_factor(sex)
  )

usethis::use_data(teaching, overwrite = TRUE)

#########
# Notebook

notebook <- get_data("notebook.csv") %>%
  dplyr::mutate(
    sex = forcats::as_factor(sex),
    film = forcats::as_factor(film),
  )

usethis::use_data(notebook, overwrite = TRUE)

#########
# Ong et al (2011)
ong_2011 <- get_data("ong_2011.csv") %>%
  dplyr::mutate(
    id = forcats::as_factor(id),
    sex = forcats::as_factor(sex) %>% forcats::fct_relevel(., "Female"),
    grade = forcats::as_factor(grade) %>% forcats::fct_relevel(., "Sec 1", "Sec 2", "Sec 3")
  )

usethis::use_data(ong_2011, overwrite = TRUE)

ong_tidy <- get_data("ong_2011_tidy.csv") %>%
  dplyr::mutate(
    id = forcats::as_factor(id),
    sex = forcats::as_factor(sex) %>% forcats::fct_relevel(., "Female"),
    grade = forcats::as_factor(grade) %>% forcats::fct_relevel(., "Sec 1", "Sec 2", "Sec 3"),
    rating_type = forcats::as_factor(rating_type),
  )

usethis::use_data(ong_tidy, overwrite = TRUE)

#########
# Oxoby (2008)

acdc <- get_data("acdc.csv") %>%
  dplyr::mutate(
    singer = forcats::as_factor(singer)
  )

usethis::use_data(acdc, overwrite = TRUE)

#########
# Pubs
pubs <- get_data("pubs.csv")

usethis::use_data(pubs, overwrite = TRUE)

#########
# R exam

r_exam <- get_data("r_exam.csv") %>%
  dplyr::mutate(
    uni = forcats::as_factor(uni)
  )

usethis::use_data(r_exam, overwrite = TRUE)

#########

# roaming cats

roaming_cats <- get_data("roaming_cats.csv") %>%
  dplyr::mutate(
    sex = forcats::as_factor(sex)
  )

usethis::use_data(roaming_cats, overwrite = TRUE)

#########
# self help

self_help <- get_data("self_help.csv") %>%
  dplyr::mutate(
    book = forcats::as_factor(book)
  )

usethis::use_data(self_help, overwrite = TRUE)
#########
# self help dsur

self_help_dsur <- get_data("self_help_dsur.csv") %>%
  dplyr::mutate(
    book = forcats::as_factor(book)
  )

usethis::use_data(self_help_dsur, overwrite = TRUE)

#########
# shopping_exercise.csv

shopping <- get_data("shopping_exercise.csv") %>%
  dplyr::mutate(
    sex = forcats::as_factor(sex)
  )

usethis::use_data(shopping, overwrite = TRUE)

#########
# Social anxiety

social_anxiety <- get_data("social_anxiety.csv")

usethis::use_data(social_anxiety, overwrite = TRUE)

########
# Social media & grammar

social_media <- get_data("social_media.csv") %>%
  dplyr::mutate(
    time = forcats::as_factor(time),
    media_use = forcats::as_factor(media_use)
  )

usethis::use_data(social_media, overwrite = TRUE)


#########
# Students and lecturers

students <- get_data("students.csv") %>%
  dplyr::mutate(
    group = forcats::as_factor(group)
  )

usethis::use_data(students, overwrite = TRUE)
#########
# Supermodel data

supermodel <- get_data("supermodel.csv")

usethis::use_data(supermodel, overwrite = TRUE)

#########
# Tablet sales data

tablets <- get_data("tablets.csv")

usethis::use_data(tablets, overwrite = TRUE)
#########
# Tea 15

tea_15 <- get_data("tea_makes_you_brainy_15.csv")

usethis::use_data(tea_15)
#########
# Tea 716

tea_716 <- get_data("tea_makes_you_brainy_716.csv")

usethis::use_data(tea_716, overwrite = TRUE)
#########

# Tuk 2011

tuk_2011 <- get_data("tuk_2011.csv") %>%
  dplyr::mutate(
    urgency = forcats::as_factor(urgency)
  )

usethis::use_data(tuk_2011, overwrite = TRUE)

#########
## video_games

video_games <- get_data("video_games.csv")

usethis::use_data(video_games, overwrite = TRUE)

#########
# zhang_subsample

zhang_sample <- get_data("zhang_2013_subsample.csv") %>%
  dplyr::mutate(
    id = forcats::as_factor(id),
    name_type = forcats::as_factor(name_type),
    sex = forcats::as_factor(sex)
  )

usethis::use_data(zhang_sample, overwrite = TRUE)
