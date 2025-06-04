amolad_palette <- c(
  "#4c5a64",
  "#576563",
  "#777067",
  "#c1b6a6",
  "#8b939c",
  "#929c96",
  "#4c4d45",
  "#1e2627"
)

#' @title A Matter of Life and Death palette
#' @description Colour palette based on Iron Maiden's A Matter of Life and Death album sleeve.
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @return A [discrete][ggplot2::discrete_scale] or [continuous][ggplot2::continuous_scale] scale.
#' @rdname amolad_pal
#' @examples
#' library(scales)
#' show_col(amolad_pal()(8))
#' @export
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

amolad_pal <- function(n, type = c("discrete", "continuous"),
                     reverse = FALSE){
  amolad <- amolad_palette

  if (reverse == TRUE) {
    amolad <- rev(amolad)
  }

  if (missing(n)) {
    n <- length(amolad)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(amolad)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(amolad)}!"))
  }

  amolad <- switch(type,
                 continuous = grDevices::colorRampPalette(amolad)(n),
                 discrete = amolad[1:n])

  amolad <- scales::manual_pal(amolad)

  return(amolad)
}

#' @title scale_color_amolad
#' @rdname amolad_pal
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
#'   scale_color_amolad()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_amolad <- function(n, type = "discrete",
                             reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "amolad",
                            amolad_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_color_gradientn(colors = amolad_pal(n = n, type = type,
                                                     reverse = reverse)(256))
  }
}

#' @title scale_colour_amolad
#' @rdname amolad_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to colour (note UK English)
#'
#' ggplot(classic_era, aes(x = energy, y = valence, color = album_name)) +
#'   geom_point(size = 2) +
#'   theme_minimal() +
#'   scale_colour_amolad()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_amolad <- scale_color_amolad

#' @title scale_fill_amolad
#' @rdname amolad_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to fill
#'
#' ggplot(classic_era, aes(x = album_name, y = valence, fill = album_name)) +
#'   geom_violin() +
#'   theme_minimal() +
#'   theme(axis.text.x = element_text(angle = 90)) +
#'   scale_fill_amolad()
#'
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_amolad <- function(n, type = "discrete",
                            reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "amolad",
                            amolad_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_fill_gradientn(colors = amolad_pal(n = n, type = type,
                                                    reverse = reverse)(256))
  }
}
