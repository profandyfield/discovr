okabe_ito_palette <- c(
  "#999999",
  "#E69F00",
  "#56B4E9",
  "#009E73",
  "#F0E442",
  "#0072B2",
  "#D55E00",
  "#CC79A7"
)

#' @title Colourblind-friendly palette
#' @description Colour palette based on Color Universal Design by Okabe and Ito [https://jfly.uni-koeln.de/color/](https://jfly.uni-koeln.de/color/).
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @return A [discrete][ggplot2::discrete_scale] or [continuous][ggplot2::continuous_scale] scale.
#' @rdname okabe_ito_pal
#' @examples
#' library(scales)
#' show_col(okabe_ito_pal()(8))
#' @export
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

okabe_ito_pal <- function(n, type = c("discrete", "continuous"),
                     reverse = FALSE){
  io <- okabe_ito_palette

  if (reverse == TRUE) {
    io <- rev(io)
  }

  if (missing(n)) {
    n <- length(io)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(io)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(io)}!"))
  }

  io <- switch(type,
                 continuous = grDevices::colorRampPalette(io)(n),
                 discrete = io[1:n])

  io <- scales::manual_pal(io)

  return(io)
}

#' @title scale_color_oi
#' @rdname okabe_ito_pal
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
#'   scale_color_oi()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_oi <- function(n, type = "discrete",
                             reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "io",
                            okabe_ito_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_color_gradientn(colors = okabe_ito_pal(n = n, type = type,
                                                     reverse = reverse)(256))
  }
}

#' @title scale_colour_oi
#' @rdname okabe_ito_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to colour (note UK English)
#'
#' ggplot(classic_era, aes(x = energy, y = valence, color = album_name)) +
#'   geom_point(size = 2) +
#'   theme_minimal() +
#'   scale_colour_oi()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_oi <- scale_color_oi

#' @title scale_fill_oi
#' @rdname okabe_ito_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to fill
#'
#' ggplot(classic_era, aes(x = album_name, y = valence, fill = album_name)) +
#'   geom_violin() +
#'   theme_minimal() +
#'   theme(axis.text.x = element_text(angle = 90)) +
#'   scale_fill_oi()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_oi <- function(n, type = "discrete",
                            reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "io",
                            okabe_ito_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_fill_gradientn(colors = okabe_ito_pal(n = n, type = type,
                                                    reverse = reverse)(256))
  }
}
