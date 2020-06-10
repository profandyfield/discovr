library(tidyverse)

# Extract fontawesome svg info

file_path <- file.path(Sys.getenv("HOME"), "Dropbox", "System Settings", "fontawesome-pro-5.13.0-desktop", "svgs")

filenames <- c(
  list.files(file.path(file_path, "light"), pattern="*.svg", full.names=TRUE),
  list.files(file.path(file_path, "brands"), pattern="*.svg", full.names=TRUE)
)

svgs <- tibble::tibble(.rows = length(filenames)) %>%
  dplyr::mutate(
    filename = basename(filenames) %>% gsub(".svg", "", .),
    filepath = filenames,
    contents = purrr::map(filepath, ~readr::read_file(.)) %>% as.character(.)
  )

# Save the svgs I want to a file

sci_fi <- c("alien", "alien-monster", "atom", "atom-alt", "cat-space", "comet", "drone", "drone-alt", "eclipse", "eclipse-alt", "flux-capacitor", "galactic-republic", "galactic-senate", "galaxy", "globe", "hand-spock", "jedi", "jedi-order", "journal-whills", "meteor", "moon", "moon-stars", "old-republic", "planet-moon", "planet-ringed", "police-box", "portal-enter", "portal-exit", "radar", "raygun", "robot", "rocket", "rocket-launch", "satellite", "satellite-dish", "solar-system", "space-shuttle", "space-station-moon", "space-station-moon-alt", "star-shooting", "starfighter", "starfighter-alt", "stars", "starship", "starship-freighter","sword-laser","sword-laser-alt", "swords-laser", "telescope", "transporter", "transporter-1", "transporter-2", "transporter-3", "transporter-empty", "ufo", "ufo-beam", "user-alien", "user-astronaut", "user-robot", "user-visor", "watch-calculator")
halloween <- c("bat", "book-dead", "book-spells", "broom", "candle-holder", "candy-corn", "cat", "cauldron", "claw-marks", "cloud-moon", "coffin", "crow", "flask-poison", "flask-potion", "ghost", "hat-witch", "hat-wizard", "hockey-mask", "jack-o-lantern", "key-skeleton", "knife-kitchen", "mask", "scarecrow", "scythe", "skull-crossbones", "sparkles", "spider", "spider-black-widow", "spider-web", "toilet-paper", "toilet-paper-alt", "tombstone", "tombstone-alt", "wand", "wand-magic")
holiday <- c("angel", "bells", "candy-cane", "carrot", "cookie-bite", "deer", "deer-rudolph", "dreidel", "fireplace", "gift", "gifts", "gingerbread-man", "glass-champagne", "glass-cheers", "hat-santa", "holly-berry", "lights-holiday", "mistletoe", "mug-hot", "narwhal", "ornament", "rv", "sleigh", "snowman", "star-christmas", "stocking", "tree-christmas", "tree-decorated", "turkey", "wreath")
misc <- c("universal-access", "dog", "dragon", "paw", "paw-alt", "paw-claws", "function", "r-project", "sword")

my_svgs <- svgs %>%
  dplyr::filter(filename %in% c(sci_fi, halloween, holiday, misc))


here::here("inst/tutorials/discovr_08/www/svg.rds") %>%
  saveRDS(my_svgs, file = .)

# Alternatively extract svg text from main database

get_code <- function(filename){
  filename <- enquo(filename)

  svgtext <- svgs %>%
    dplyr::filter(filename == !!filename) %>%
    dplyr::select(contents) %>%
    dplyr::pull()

 svgtextnew <- paste0("<svg style=\"height: 1em; top:.04em; position: relative; fill: fill;\"", gsub("<svg xmlns=\"http://www.w3.org/2000/svg\"", "", svgtext))
 svgtextnew
}

get_code("alien-monster")


# get other svgs

file_path <- file.path(Sys.getenv("HOME"), "Dropbox", "System Settings", "fontawesome-pro-5.13.0-desktop", "svgs")

filenames <- here::here("data-raw/dev_tutorials/svgs") %>%
  list.files(., pattern="*.svg", full.names=TRUE)

svgs <- tibble::tibble(.rows = length(filenames)) %>%
  dplyr::mutate(
    filename = basename(filenames) %>% gsub(".svg", "", .),
    filepath = filenames,
    contents = purrr::map(filepath, ~readr::read_file(.)) %>% as.character(.)
  )

get_code("rstudio")

