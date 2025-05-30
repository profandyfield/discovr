power_palette <- c(
  "#3f5a9a",
  "#e9bf93",
  "#a56c31",
  "#bfcde1",
  "#866e7f",
  "#738dba",
  "#714120",
  "#548cc6"
)

#' @title Powerslave palette
#' @description Colour palette based on Iron Maiden's Powerslave album sleeve.
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname power_pal
#' @examples
#' library(scales)
#' show_col(power_pal()(8))
#' @export
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

power_pal <- function(n, type = c("discrete", "continuous"),
                     reverse = FALSE){
  power <- power_palette

  if (reverse == TRUE) {
    power <- rev(power)
  }

  if (missing(n)) {
    n <- length(power)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(power)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(power)}!"))
  }

  power <- switch(type,
                 continuous = grDevices::colorRampPalette(power)(n),
                 discrete = power[1:n])

  power <- scales::manual_pal(power)

  return(power)
}

#' @title scale_color_power
#' @rdname power_pal
#' @export
#' @examples
#'
#' library(discovr)
#' library(ggplot2)
#'
#' # Get albums in the classic era from the discovr::eddiefy data.
#' # I'm not including fear of the dark because it's not in any way classic.
#' # No prayer for the dying was pushing its luck too if I'm honest.
#'
#' classic_era <- subset(eddiefy, year < 1992, select = c("energy", "valence", "album_name"))
#'
#' # Plot some data and apply theme to color (note US English)
#'
#' ggplot(classic_era, aes(x = energy, y = valence, color = album_name)) +
#'   geom_point(size = 2) +
#'   theme_minimal() +
#'   scale_color_power()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_power <- function(n, type = "discrete",
                             reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "power",
                            power_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_color_gradientn(colors = power_pal(n = n, type = type,
                                                     reverse = reverse)(256))
  }
}

#' @title scale_colour_power
#' @rdname power_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to colour (note UK English)
#'
#' ggplot(classic_era, aes(x = energy, y = valence, color = album_name)) +
#'   geom_point(size = 2) +
#'   theme_minimal() +
#'   scale_colour_power()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_power <- scale_color_power

#' @title scale_fill_power
#' @rdname power_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to fill
#'
#' ggplot(classic_era, aes(x = album_name, y = valence, fill = album_name)) +
#'   geom_violin() +
#'   theme_minimal() +
#'   theme(axis.text.x = element_text(angle = 90)) +
#'   scale_fill_power()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_power <- function(n, type = "discrete",
                            reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "power",
                            power_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_fill_gradientn(colors = power_pal(n = n, type = type,
                                                    reverse = reverse)(256))
  }
}
