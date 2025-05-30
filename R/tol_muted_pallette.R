tol_muted_palette <- c(
  "#CC6677",
  "#332288",
  "#DDCC77",
  "#117733",
  "#88CCEE",
  "#882255",
  "#44AA99",
  "#999933",
  "#AA4499"
)

#' @title Tol muted palette
#' @description Colour palette used in the book based on Paul Tol's muted palette [https://sronpersonalpages.nl/~pault/data/colourschemes.pdf](https://sronpersonalpages.nl/~pault/data/colourschemes.pdf).
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname tol_muted_pal
#' @examples
#' library(scales)
#' show_col(tol_muted_pal()(8))
#' @export
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

tol_muted_pal <- function(n, type = c("discrete", "continuous"),
                     reverse = FALSE){
  tol <- tol_muted_palette

  if (reverse == TRUE) {
    tol <- rev(tol)
  }

  if (missing(n)) {
    n <- length(tol)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(tol)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(tol)}!"))
  }

  tol <- switch(type,
                 continuous = grDevices::colorRampPalette(tol)(n),
                 discrete = tol[1:n])

  tol <- scales::manual_pal(tol)

  return(tol)
}

#' @title scale_color_tol
#' @rdname tol_muted_pal
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
#'   scale_color_tol()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_tol <- function(n, type = "discrete",
                             reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "io",
                            tol_muted_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_color_gradientn(colors = tol_muted_pal(n = n, type = type,
                                                     reverse = reverse)(256))
  }
}

#' @title scale_colour_tol
#' @rdname tol_muted_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to colour (note UK English)
#'
#' ggplot(classic_era, aes(x = energy, y = valence, color = album_name)) +
#'   geom_point(size = 2) +
#'   theme_minimal() +
#'   scale_colour_tol()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_tol <- scale_color_tol

#' @title scale_fill_tol
#' @rdname tol_muted_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to fill
#'
#' ggplot(classic_era, aes(x = album_name, y = valence, fill = album_name)) +
#'   geom_violin() +
#'   theme_minimal() +
#'   theme(axis.text.x = element_text(angle = 90)) +
#'   scale_fill_tol()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_tol <- function(n, type = "discrete",
                            reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "tol",
                            tol_muted_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_fill_gradientn(colors = tol_muted_pal(n = n, type = type,
                                                    reverse = reverse)(256))
  }
}