## code to prepare get spss data files and convert to csv

here::here("/data-raw/data_functions.R") %>% source()


#########
# Album sales data

album_sales <- get_spss("album_sales.sav") %>%
  dplyr::rename_all(tolower) %>%
  add_ids(., code_length = 8, inc_numbers = TRUE) %>%
  dplyr::rename(album_id = id) %>%
  dplyr::select(album_id, adverts:image)

here::here("data-raw/album_sales.csv") %>%
  readr::write_csv(album_sales, path = .)
#########
# Animal bride

animal_bride <- tibble(.rows = 20) %>%
  dplyr::mutate(
    wife = c(rep("Goat", 12), rep("Dog", 8)) %>% forcats::as_factor(),
    animal = c(69, 25, 31, 29, 12, 49, 25, 35, 51, 40, 23, 37, 16, 65, 39, 35, 19, 53, 27, 44),
    life_satisfaction = c(47, 6, 47, 33, 13, 56, 42, 51, 42, 46, 27, 48, 52, 66, 65, 61, 60, 68, 37, 72)
  )

here::here("data-raw/animal_bride.csv") %>%
  readr::write_csv(animal_bride, path = .)

#######

# Beckham (1929) data

beckham_1929 <- get_spss("beckham_1929.sav") %>%
  dplyr::rename_all(tolower)  %>%
  dplyr::mutate(
    profession = forcats::as_factor(profession) %>% tolower() %>% sub("(\\w)", "\\U\\1", perl = TRUE, .),
    response = forcats::as_factor(response)
  )

here::here("data-raw/beckham_1929.csv") %>%
  readr::write_csv(beckham_1929, path = .)
#########
# Biggest liar

biggest_liar <- get_spss("the_biggest_liar.sav") %>%
  dplyr::rename_all(tolower) %>%
  add_ids(.) %>%
  dplyr::mutate(
    position = as.numeric(position),
    novice = forcats::as_factor(novice)
  )

here::here("data-raw/biggest_liar.csv") %>%
  readr::write_csv(biggest_liar, path = .)

#########
# Big hairy spider

big_hairy_spider <- get_spss("big_hairy_spider.sav") %>%
  dplyr::rename_all(stringr::str_to_sentence) %>%
  dplyr::mutate(
    id = randomNames(n = nrow(.), which.names = "first")
  ) %>%
  tidyr::gather(key = spider_type, value = anxiety, -id)

here::here("data-raw/big_hairy_spider.csv") %>%
  readr::write_csv(big_hairy_spider, path = .)

###########
# Catterplot

catterplot <- get_spss("catterplot.sav") %>%
  dplyr::rename_all(tolower) %>%
  dplyr::rename(dinner_time = dinnertime)

here::here("data-raw/catterplot.csv") %>%
  readr::write_csv(catterplot, path = .)

###########
# Cat regression

cat_reg <- get_spss("cat_regression.sav") %>%
  dplyr::rename_all(tolower) %>%
  dplyr::rename(reward = training) %>%
  dplyr::mutate(
    reward = as.numeric(reward),
    dance = as.numeric(dance)
  )

here::here("data-raw/cat_regression.csv") %>%
  readr::write_csv(cat_reg, path = .)

###########
# Cats

cat_dance <- get_spss("cats.sav") %>%
  dplyr::rename_all(tolower) %>%
  dplyr::rename(reward = training) %>%
  dplyr::mutate(
    reward = forcats::as_factor(reward),
    reward = ifelse(grepl("Food", reward) == TRUE, "Food", "Affection") %>% forcats::as_factor(.),
    dance = forcats::as_factor(dance)
  )

levels(cat_dance$dance)

here::here("data-raw/cat_dance.csv") %>%
  readr::write_csv(cat_dance, path = .)

#########
# Chamorro-Premuzic et al. (2008) data

chamorro_premuzic <- get_spss("chamorro-premuzic.sav") %>%
  dplyr::rename_all(tolower) %>%
  dplyr::rename(
    stu_neurotic = studentn,
    stu_extro = studente,
    stu_open = studento,
    stu_agree = studenta,
    stu_consc = studentc,
    lec_neurotic = lecturen,
    lec_extro = lecture,
    lec_open = lecturo,
    lec_agree = lectura,
    lec_consc = lecturc
  ) %>%
  dplyr::mutate(
    sex = forcats::as_factor(sex)
  )

here::here("data-raw/chamorro_premuzic.csv") %>%
  readr::write_csv(chamorro_premuzic, path = .)

#########
# Child aggression data

child_aggression <- get_spss("child_aggression.sav") %>%
  dplyr::rename_all(tolower)

here::here("data-raw/child_aggression.csv") %>%
  readr::write_csv(child_aggression, path = .)
#########
# Coldwell et al. (2006)

coldwell_2006 <- get_spss("coldwell_et_al_2006.sav") %>%
  dplyr::rename_all(tolower) %>%
  dplyr::rename(
    family_id = familyid
  ) %>%
  dplyr::mutate(
    child_gender = forcats::as_factor(child_gender)
  )

here::here("data-raw/coldwell_2006.csv") %>%
  readr::write_csv(coldwell_2006, path = .)

#########
# Daniels (2012) data

daniels_2012 <- get_spss("daniels_2012.sav") %>%
  dplyr::rename_all(tolower)  %>%
  dplyr::mutate(
    picture = forcats::as_factor(picture) %>% tolower() %>% sub("(\\w)", "\\U\\1", perl = TRUE, .),
    theme_present = forcats::as_factor(theme_present)
  )

here::here("data-raw/daniels_2012.csv") %>%
  readr::write_csv(daniels_2012, path = .)

#########
# Dark lord

dark_lord <- get_spss("darklord.sav") %>%
  dplyr::rename(
    Message = message,
    `No message` = nomessag
    ) %>%
  add_ids(.) %>%
  tidyr::gather(key = message, value = intrusions, -id)

here::here("data-raw/dark_lord.csv") %>%
  readr::write_csv(dark_lord, path = .)

#########
# DF Beta

df_beta <- get_spss("dfbeta.sav")

here::here("data-raw/df_beta.csv") %>%
  readr::write_csv(df_beta, path = .)

#########
# Download festival

download_tidy <- get_spss("download_festival.sav") %>%
  dplyr::rename_all(tolower) %>%
  dplyr::rename(
    ticket_no = ticknumb,
    gender = sex
  ) %>%
  dplyr::mutate(
    rng = runif(810, 0, 1),
    ticket_no = forcats::as_factor(ticket_no),
    gender = ifelse(rng > 0.1, gender, 2),
    gender = factor(gender, 0:2, labels = c("Male", "Female", "Non-binary")),
  ) %>% dplyr::select(-rng) %>%
  tidyr::gather(key = day, value = hygiene, -c(ticket_no, gender))

here::here("data-raw/download_festival_tidy.csv") %>%
  readr::write_csv(download_tidy, path = .)

download <- here::here("data-raw/download_festival_tidy.csv") %>%
  readr::read_csv() %>%
  dplyr::mutate(
    ticket_no = as.character(ticket_no),
    gender = forcats::as_factor(gender) %>% forcats::fct_relevel(., "Male", "Female", "Non-binary"),
    day = gsub("(\\d)", "_\\1", day) %>% forcats::as_factor(.) %>% forcats::fct_relevel(., "day_1", "day_2", "day_3")
  ) %>%
  tidyr::pivot_wider(
    names_from = day,
    values_from = hygiene
  )

here::here("data-raw/download_festival.csv") %>%
  readr::write_csv(download, path = .)

###########
# Essay marks

essay_marks <- get_spss("essay_marks.sav") %>%
  dplyr::rename_all(tolower) %>%
  add_ids(., code_length = 6) %>%
  dplyr::mutate(
    grade = factor(grade, 1:4, labels = c("First class", "Upper second class", "Lower second class", "Third class")),
    )

here::here("data-raw/essay_marks.csv") %>%
  readr::write_csv(essay_marks, path = .)
######
# Exam anxiety

exam_anxiety <- get_spss("exam_anxiety.sav") %>%
  dplyr::rename_all(tolower) %>%
  dplyr::rename(id = code, exam_grade = exam) %>%
  dplyr::mutate(
    id = forcats::as_factor(id),
    sex = forcats::as_factor(sex)
  )

here::here("data-raw/exam_anxiety.csv") %>%
  readr::write_csv(exam_anxiety, path = .)
###########
# gelman

gelman_2009 <- get_spss("gelman_&_weakliem_2009.sav") %>%
  dplyr::rename_all(tolower) %>%
  tidyr::gather(key = child, value = number, -person) %>%
  dplyr::arrange(person)

here::here("data-raw/gelman_2009.csv") %>%
  readr::write_csv(gelman_2009, path = .)
##########
#########
## Glastonbury festival

glastonbury <- get_spss("GlastonburyFestival.sav") %>%
  dplyr::rename(subculture = music) %>%
  dplyr::mutate(
    ticknumb = forcats::as_factor(ticknumb),
    subculture = ifelse(subculture == 4, "No subculture",
                        ifelse(subculture == 2, "Metalhead",
                               ifelse(subculture == 3, "Raver", "Hipster"))) %>%
      forcats::as_factor(.) %>%
      forcats::fct_relevel(., "No subculture")
    ) %>%
  dplyr::rename(ticket_no = ticknumb)


here::here("data-raw/glastonbury.csv") %>%
  readr::write_csv(glastonbury, path = .)




###########
# grades

grades <- get_spss("grades.sav") %>%
  dplyr::rename_all(tolower) %>%
  add_ids(., code_length = 5) %>%
  dplyr::mutate(
    stats = factor(stats, 1:6, labels = c("First class", "Upper second class", "Lower second class", "Third class", "Pass", "Fail")),
    gcse = factor(gcse, 1:6, labels = c("A", "B", "C", "D", "E", "F")),
  )

here::here("data-raw/grades.csv") %>%
  readr::write_csv(grades, path = .)
########
# Hiccups

hiccups <- get_spss("hiccups.sav") %>%
  add_ids(.) %>%
  tidyr::gather(key = "intervention", value = "hiccups", -id)

here::here("data-raw/hiccups.csv") %>%
  readr::write_csv(hiccups, path = .)
###########
# Honest lab

honesty_lab <- get_spss("honesty_lab.sav") %>%
  dplyr::rename_all(tolower) %>%
  dplyr::select(-participant) %>%
  add_ids(., code_length = 7)

here::here("data-raw/honesty_lab.csv") %>%
  readr::write_csv(honesty_lab, path = .)
######
# Ice bucket challenge

ice_bucket <-  file.path("..", "..", "data", "dsu_spss_data", "dsus_development_and_diagrams", "ice_bucket_challenge.csv") %>%
  readr::read_csv()

upload_day <- numeric()
for(i in 1:nrow(ice_bucket)){
  if(is.na(ice_bucket$YTVids[i]) == FALSE & ice_bucket$YTVids[i] > 0 & ice_bucket$YTVids[i] < 205){
    temp <- rep(ice_bucket$Days[i], ice_bucket$YTVids[i]*1000)
    upload_day <- c(upload_day, temp)
  }
}

ice_bucket <- tibble::tibble(.rows = length(upload_day)) %>%
  dplyr::mutate(
    upload_day = upload_day,
    order = rnorm(length(upload_day))
  ) %>%
  dplyr::arrange(order) %>%
  dplyr::select(-order) %>%
  dplyr::filter(is.na(upload_day) == FALSE)

here::here("data-raw/ice_bucket.csv") %>%
  readr::write_csv(ice_bucket, path = .)

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
#########
# Invisibility RM

new_id <- tibble::tibble(.rows = 12) %>%
  tibble::rowid_to_column( var = "row") %>%
  dplyr::mutate(
    id = randomNames(n = nrow(.), which.names = "first"),
  ) %>%
  dplyr::bind_rows(., .)

invisibility_rm <- invisibility_cloak %>%
  dplyr::mutate(
    row = new_id$row,
    id = new_id$id
  ) %>%
  dplyr::arrange(row) %>%
  dplyr::select(-row)

here::here("data-raw/invisibility_rm.csv") %>%
  readr::write_csv(invisibility_rm, path = .)
########
# Jiminy cricket

jiminy_cricket <- get_spss("jiminy_cricket.sav") %>%
  dplyr::rename_all(tolower) %>%
  dplyr::mutate(
    strategy = forcats::as_factor(strategy) %>%  tolower() %>% sub("(\\w)", "\\U\\1", perl = TRUE, .),
  ) %>%
  tidyr::gather(key = "time", value = "success", -c(id, strategy)) %>%
  dplyr::mutate(
    time = ifelse(time == "success_pre", "Baseline", "5 years later")
  )

here::here("data-raw/jiminy_cricket.csv") %>%
  readr::write_csv(jiminy_cricket, path = .)
#########
# Johns et al. (2012)

johns_2012 <- get_spss("johns_et_al._(2012).sav") %>%
  add_ids(.) %>%
  dplyr::mutate(
    partners = forcats::as_factor(Partners)
    ) %>%
  dplyr::select(-Partners) %>%
  tidyr::gather(key = "colour", value = "attractiveness", -c(id, partners)) %>%
  dplyr::mutate(
    colour = stringr::str_replace(colour, "Pink", " pink")
  )

here::here("data-raw/johns_2012.csv") %>%
  readr::write_csv(johns_2012, path = .)

#########
## lambert_2012

lambert_2012 <- get_spss("lambert_et_al_2012.sav") %>%
  dplyr::rename_all(tolower) %>%
  dplyr::rename(ln_porn = lnporn) %>%
  add_ids(., code_length = 5, inc_numbers = TRUE)


here::here("data-raw/lambert_2012.csv") %>%
  readr::write_csv(lambert_2012, path = .)

#########
## massar_2012

massar_2012 <- get_spss("massar_et_al_2011.sav") %>%
  dplyr::rename_all(tolower) %>%
  add_ids(., code_length = 5, inc_numbers = TRUE)


here::here("data-raw/massar_2012.csv") %>%
  readr::write_csv(massar_2012, path = .)

#########
## mcnulty_2008

mcnulty_2008 <- get_spss("mcnulty_et_al_2008.sav") %>%
  dplyr::rename_all(tolower) %>%
  dplyr::rename(
    spouse = gender,
    id = case
    ) %>%
  add_ids(., code_length = 5, inc_numbers = TRUE) %>%
  dplyr::mutate(
    spouse = ifelse(spouse == 1, "Wife", "Husband") %>%
      forcats::as_factor() %>%
      forcats::fct_relevel(., "Husband")
  )

here::here("data-raw/mcnulty_2008.csv") %>%
  readr::write_csv(mcnulty_2008, path = .)

#########
# men like dogs

men_dogs <- get_spss("men_like_dogs.sav") %>%
  dplyr::rename_all(tolower) %>%
  add_ids(.) %>%
  dplyr::mutate(
    species = forcats::as_factor(species)
  )

here::here("data-raw/men_dogs.csv") %>%
  readr::write_csv(men_dogs, path = .)

#########
# Metal health

metal_health <- get_spss("metal_health.sav")

here::here("data-raw/metal_health.csv") %>%
  readr::write_csv(metal_health, path = .)

#########
# Notebook

notebook <- get_spss("notebook.sav") %>%
  dplyr::rename_all(tolower) %>%
  dplyr::mutate(
    sex = forcats::as_factor(sex),
    film = forcats::as_factor(film),
  )

here::here("data-raw/notebook.csv") %>%
  readr::write_csv(notebook, path = .)
#########
# Ong et al (2011)

ong_2011 <- get_data("dev_data/ong_2011.csv") %>%
  dplyr::rename_all(tolower) %>%
  dplyr::select(subno, grade, age, sex, fb_status, fb_profile_pa:fb_profile_tot, extra, npqc_r_total) %>%
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
    sex = forcats::as_factor(sex) %>% dplyr::recode(M = "Male", F = "Female") %>% forcats::fct_relevel(., "Female"),
    grade = forcats::as_factor(grade) %>% forcats::fct_relevel(., "Sec 1", "Sec 2", "Sec 3")
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
#########
# Pubs

pubs <- get_spss("pubs.sav")

here::here("data-raw/pubs.csv") %>%
  readr::write_csv(pubs, path = .)
#########
# R exam

r_exam <- get_spss("spssexam.sav") %>%
  add_ids(., code_length = 6, inc_numbers = T) %>%
  dplyr::mutate(
    uni = forcats::as_factor(uni)
  )

here::here("data-raw/r_exam.csv") %>%
  readr::write_csv(r_exam, path = .)
#########
# roaming cats

roaming_cats <- get_spss("roaming_cats.sav") %>%
  dplyr::rename_all(tolower) %>%
  add_ids(.) %>%
  dplyr::select(-recode) %>%
  dplyr::mutate(
    sex = forcats::as_factor(sex)
  )

here::here("data-raw/roaming_cats.csv") %>%
  readr::write_csv(roaming_cats, path = .)
#########
# self help

self_help <- get_spss("penis.sav") %>%
  add_ids() %>%
  dplyr::rename_all(tolower) %>%
  dplyr::mutate(
    book = forcats::as_factor(book)
  )

here::here("data-raw/self_help.csv") %>%
  readr::write_csv(self_help, path = .)
#########
# self help dsur

self_help_dsur <- get_spss("field&hole.sav") %>%
  add_ids() %>%
  dplyr::rename(
    `Self-help book` = women,
    `Discovering statistics using R` = statbook
  ) %>%
  tidyr::gather(key = book, value = happiness, -id)

here::here("data-raw/self_help_dsur.csv") %>%
  readr::write_csv(self_help_dsur, path = .)
#########
# Social anxiety

social_anxiety <- get_spss("social_anxiety.sav")

here::here("data-raw/social_anxiety.csv") %>%
  readr::write_csv(social_anxiety, path = .)
#########
# Social media and grammar

grammar <- get_spss("social_media.sav") %>%
  add_ids(.) %>%
  dplyr::mutate(
    media_use = forcats::as_factor(Social_media_use)
  ) %>%
  dplyr::select(-Social_media_use) %>%
  tidyr::gather(key = "time", value = "grammar", -c(id, media_use)) %>%
  dplyr::mutate(
    time = if_else(time == "Baseline", "Baseline", "6 months") %>% forcats::as_factor()
  )

here::here("data-raw/social_media.csv") %>%
  readr::write_csv(grammar, path = .)
#########
# Students and lecturers

students <- get_spss("data_with_which_to_play.sav") %>%
  dplyr::rename_all(tolower) %>%
  dplyr::mutate(
    group = forcats::as_factor(group)
  )

here::here("data-raw/students.csv") %>%
  readr::write_csv(students, path = .)
#########
# Supermodel data

supermodel <- get_spss("supermodel.sav") %>%
  dplyr::rename_all(tolower) %>%
  dplyr::rename(
    status = beauty
  )

here::here("data-raw/supermodel.csv") %>%
  readr::write_csv(supermodel, path = .)
#########
# Tablet sales data

tablets <- get_spss("tablets.sav") %>%
  dplyr::rename_all(tolower) %>%
  add_ids(., code_length = 4, inc_numbers = TRUE) %>%
  dplyr::mutate(product_cool = abs(product_cool))

here::here("data-raw/tablets.csv") %>%
  readr::write_csv(tablets, path = .)

#########
# Tea 15

tea_15 <- tibble(.rows = 15) %>%
  add_ids(., code_length = 3) %>%
  dplyr::mutate(
    tea = c(2, 4, 3, 4, 2, 3, 5, 5, 2, 5, 1, 3, 3, 4, 1),
    cog_fun = c(60, 47, 31, 62, 44, 41, 49, 56, 45, 56, 57, 40, 54, 34, 46)
  )

here::here("data-raw/tea_makes_you_brainy_15.csv") %>%
  readr::write_csv(tea_15, path = .)
#########
# Tea 716

tea_716 <- get_spss("tea_makes_you_brainy_716.sav") %>%
  dplyr::rename_all(tolower) %>%
  add_ids(., code_length = 3) %>%
  dplyr::rename(
    tea = cups_of_tea,
    cog_fun = cognitive_function
  )

here::here("data-raw/tea_makes_you_brainy_716.csv") %>%
  readr::write_csv(tea_716, path = .)
#########

# Tuk 2011

tuk_2011 <- get_spss("tuk_et_al_2011.sav") %>%
  dplyr::rename_all(tolower) %>%
  add_ids(., code_length = 6) %>%
  dplyr::rename(
    urgency = drink_condition
  ) %>%
  dplyr::mutate(
      urgency = forcats::as_factor(urgency) %>% tolower() %>% sub("(\\w)", "\\U\\1", perl = TRUE, .),
  )

here::here("data-raw/tuk_2011.csv") %>%
  readr::write_csv(tuk_2011, path = .)

########
## video_games

video_games <- get_spss("video_games.sav") %>%
  dplyr::rename_all(tolower) %>%
  add_ids(., code_length = 4, inc_numbers = TRUE)


here::here("data-raw/video_games.csv") %>%
  readr::write_csv(video_games, path = .)


#########
# wetzels_2019

wetzels_2019 <- here::here("data-raw/dev_docs/data_dev/npi_osf_with_colnames.dat") %>%
  readr::read_tsv() %>%
  dplyr::na_if(., 99)

View(wetzels_2019)

#########
# zhang_subsample

zhang_sample <- get_data("zhang_2013_subsample.csv") %>%
  dplyr::mutate(
    id = forcats::as_factor(id),
    name_type = forcats::as_factor(name_type),
    sex = forcats::as_factor(sex)
  )
