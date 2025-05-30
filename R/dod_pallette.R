dod_palette <- c(
  "#bd2f27",
  "#594857",
  "#a79884",
  "#d29b83",
  "#9b8b94",
  "#705d4b",
  "#954f41",
  "#381917"
)

#' @title Dance of Death palette
#' @description Colour palette based on Iron Maiden's Dance of Death album sleeve.
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname dod_pal
#' @examples
#' library(scales)
#' show_col(dod_pal()(8))
#' @export
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

dod_pal <- function(n, type = c("discrete", "continuous"),
                     reverse = FALSE){
  dod <- dod_palette

  if (reverse == TRUE) {
    dod <- rev(dod)
  }

  if (missing(n)) {
    n <- length(dod)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(dod)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(dod)}!"))
  }

  dod <- switch(type,
                 continuous = grDevices::colorRampPalette(dod)(n),
                 discrete = dod[1:n])

  dod <- scales::manual_pal(dod)

  return(dod)
}

#' @title scale_color_dod
#' @rdname dod_pal
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
#'   scale_color_dod()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_dod <- function(n, type = "discrete",
                             reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "dod",
                            dod_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_color_gradientn(colors = dod_pal(n = n, type = type,
                                                     reverse = reverse)(256))
  }
}

#' @title scale_colour_dod
#' @rdname dod_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to colour (note UK English)
#'
#' ggplot(classic_era, aes(x = energy, y = valence, color = album_name)) +
#'   geom_point(size = 2) +
#'   theme_minimal() +
#'   scale_colour_dod()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_dod <- scale_color_dod

#' @title scale_fill_dod
#' @rdname dod_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to fill
#'
#' ggplot(classic_era, aes(x = album_name, y = valence, fill = album_name)) +
#'   geom_violin() +
#'   theme_minimal() +
#'   theme(axis.text.x = element_text(angle = 90)) +
#'   scale_fill_dod()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_dod <- function(n, type = "discrete",
                            reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "dod",
                            dod_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_fill_gradientn(colors = dod_pal(n = n, type = type,
                                                    reverse = reverse)(256))
  }
}
