killers_palette <- c(
  "#e3cd81",
  "#958870",
  "#9599ae",
  "#757272",
  "#a4b39e",
  "#f63d19",
  "#f63d19",
  "#655e6a"
)

#' @title Killers palette
#' @description Colour palette based on Iron Maiden's killers album sleeve.
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname killers_pal
#' @examples
#' library(scales)
#' show_col(killers_pal()(8))
#' @export
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

killers_pal <- function(n, type = c("discrete", "continuous"),
                     reverse = FALSE){
  killers <- killers_palette

  if (reverse == TRUE) {
    killers <- rev(killers)
  }

  if (missing(n)) {
    n <- length(killers)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(killers)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(killers)}!"))
  }

  killers <- switch(type,
                 continuous = grDevices::colorRampPalette(killers)(n),
                 discrete = killers[1:n])

  killers <- scales::manual_pal(killers)

  return(killers)
}

#' @title scale_color_killers
#' @rdname killers_pal
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
#' classic_era <- subset(eddiefy, year < 1992)
#'
#' # Plot some data and apply theme to color (note US English)
#'
#' ggplot(classic_era, aes(x = energy, y = valence, color = album_name)) +
#'   geom_point(size = 2) +
#'   theme_minimal() +
#'   scale_color_killers()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_killers <- function(n, type = "discrete",
                             reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "killers",
                            killers_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_color_gradientn(colors = killers_pal(n = n, type = type,
                                                     reverse = reverse)(256))
  }
}

#' @title scale_colour_killers
#' @rdname killers_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to colour (note UK English)
#'
#' ggplot(classic_era, aes(x = energy, y = valence, color = album_name)) +
#'   geom_point(size = 2) +
#'   theme_minimal() +
#'   scale_colour_killers()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_killers <- scale_color_killers

#' @title scale_fill_killers
#' @rdname killers_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to fill
#'
#' ggplot(classic_era, aes(x = album_name, y = valence, fill = album_name)) +
#'   geom_violin() +
#'   theme_minimal() +
#'   theme(axis.text.x = element_text(angle = 90)) +
#'   scale_fill_killers()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_killers <- function(n, type = "discrete",
                            reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "killers",
                            killers_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_fill_gradientn(colors = killers_pal(n = n, type = type,
                                                    reverse = reverse)(256))
  }
}