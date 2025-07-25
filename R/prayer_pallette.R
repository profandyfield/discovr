prayer_palette <- c(
  "#33457e",
  "#bf1e1e",
  "#bd9572",
  "#8a9cb4",
  "#746845",
  "#6675ab",
  "#693f2b",
  "#181822"
)

#' @title No Prayer for the Dying palette
#' @description Colour palette based on Iron Maiden's No Prayer for the Dying album sleeve.
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @return A [discrete][ggplot2::discrete_scale] or [continuous][ggplot2::continuous_scale] scale.
#' @rdname prayer_pal
#' @examples
#' library(scales)
#' show_col(prayer_pal()(8))
#' @export
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

prayer_pal <- function(n, type = c("discrete", "continuous"),
                     reverse = FALSE){
  prayer <- prayer_palette

  if (reverse == TRUE) {
    prayer <- rev(prayer)
  }

  if (missing(n)) {
    n <- length(prayer)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(prayer)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(prayer)}!"))
  }

  prayer <- switch(type,
                 continuous = grDevices::colorRampPalette(prayer)(n),
                 discrete = prayer[1:n])

  prayer <- scales::manual_pal(prayer)

  return(prayer)
}

#' @title scale_color_prayer
#' @rdname prayer_pal
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
#'   scale_color_prayer()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_prayer <- function(n, type = "discrete",
                             reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "prayer",
                            prayer_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_color_gradientn(colors = prayer_pal(n = n, type = type,
                                                     reverse = reverse)(256))
  }
}

#' @title scale_colour_prayer
#' @rdname prayer_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to colour (note UK English)
#'
#' ggplot(classic_era, aes(x = energy, y = valence, color = album_name)) +
#'   geom_point(size = 2) +
#'   theme_minimal() +
#'   scale_colour_prayer()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_prayer <- scale_color_prayer

#' @title scale_fill_prayer
#' @rdname prayer_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to fill
#'
#' ggplot(classic_era, aes(x = album_name, y = valence, fill = album_name)) +
#'   geom_violin() +
#'   theme_minimal() +
#'   theme(axis.text.x = element_text(angle = 90)) +
#'   scale_fill_prayer()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_prayer <- function(n, type = "discrete",
                            reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "prayer",
                            prayer_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_fill_gradientn(colors = prayer_pal(n = n, type = type,
                                                    reverse = reverse)(256))
  }
}
