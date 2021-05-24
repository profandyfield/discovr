nob_palette <- c(
  "#535562",
  "#888a99",
  "#c9302d",
  "#9ea08d",
  "#836d59",
  "#606762",
  "#d4c299",
  "#2a2722"
)

#' @title The Number of the Beast palette
#' @description Colour palette based on Iron Maiden's The Number of the Beast album sleeve.
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname nob_pal
#' @examples
#' library(scales)
#' show_col(nob_pal()(8))
#' @export
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

nob_pal <- function(n, type = c("discrete", "continuous"),
                     reverse = FALSE){
  nob <- nob_palette

  if (reverse == TRUE) {
    nob <- rev(nob)
  }

  if (missing(n)) {
    n <- length(nob)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(nob)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(nob)}!"))
  }

  nob <- switch(type,
                 continuous = grDevices::colorRampPalette(nob)(n),
                 discrete = nob[1:n])

  nob <- scales::manual_pal(nob)

  return(nob)
}

#' @title scale_color_nob
#' @rdname nob_pal
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
#'   scale_color_nob()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_nob <- function(n, type = "discrete",
                             reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "nob",
                            nob_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_color_gradientn(colors = nob_pal(n = n, type = type,
                                                     reverse = reverse)(256))
  }
}

#' @title scale_colour_nob
#' @rdname nob_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to colour (note UK English)
#'
#' ggplot(classic_era, aes(x = energy, y = valence, color = album_name)) +
#'   geom_point(size = 2) +
#'   theme_minimal() +
#'   scale_colour_nob()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_nob <- scale_color_nob

#' @title scale_fill_nob
#' @rdname nob_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to fill
#'
#' ggplot(classic_era, aes(x = album_name, y = valence, fill = album_name)) +
#'   geom_violin() +
#'   theme_minimal() +
#'   theme(axis.text.x = element_text(angle = 90)) +
#'   scale_fill_nob()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_nob <- function(n, type = "discrete",
                            reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "nob",
                            nob_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_fill_gradientn(colors = nob_pal(n = n, type = type,
                                                    reverse = reverse)(256))
  }
}