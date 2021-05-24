sit_palette <- c(
  "#ccb88e",
  "#80653e",
  "#b54217",
  "#959881",
  "#7e8091",
  "#5e614a",
  "#4e4e53",
  "#2b210f"
)

#' @title Somewhere in Time palette
#' @description Colour palette based on Iron Maiden's Somewhere in Time album sleeve.
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname sit_pal
#' @examples
#' library(scales)
#' show_col(sit_pal()(8))
#' @export
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

sit_pal <- function(n, type = c("discrete", "continuous"),
                     reverse = FALSE){
  sit <- sit_palette

  if (reverse == TRUE) {
    sit <- rev(sit)
  }

  if (missing(n)) {
    n <- length(sit)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(sit)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(sit)}!"))
  }

  sit <- switch(type,
                 continuous = grDevices::colorRampPalette(sit)(n),
                 discrete = sit[1:n])

  sit <- scales::manual_pal(sit)

  return(sit)
}

#' @title scale_color_sit
#' @rdname sit_pal
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
#'   scale_color_sit()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_sit <- function(n, type = "discrete",
                             reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "sit",
                            sit_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_color_gradientn(colors = sit_pal(n = n, type = type,
                                                     reverse = reverse)(256))
  }
}

#' @title scale_colour_sit
#' @rdname sit_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to colour (note UK English)
#'
#' ggplot(classic_era, aes(x = energy, y = valence, color = album_name)) +
#'   geom_point(size = 2) +
#'   theme_minimal() +
#'   scale_colour_sit()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_sit <- scale_color_sit

#' @title scale_fill_sit
#' @rdname sit_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to fill
#'
#' ggplot(classic_era, aes(x = album_name, y = valence, fill = album_name)) +
#'   geom_violin() +
#'   theme_minimal() +
#'   theme(axis.text.x = element_text(angle = 90)) +
#'   scale_fill_sit()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_sit <- function(n, type = "discrete",
                            reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "sit",
                            sit_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_fill_gradientn(colors = sit_pal(n = n, type = type,
                                                    reverse = reverse)(256))
  }
}