ssoass_palette <- c(
  "#5c9bd2",
  "#4b5958",
  "#d7d9c0",
  "#546d7d",
  "#94c5e8",
  "#42345f",
  "#1d5d92",
  "#a5d5f1"
)

#' @title Seventh Son of a Seventh Son palette
#' @description Colour palette based on Iron Maiden's Seventh Son of a Seventh Son album sleeve.
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @return A [discrete][ggplot2::discrete_scale] or [continuous][ggplot2::continuous_scale] scale.
#' @rdname ssoass_pal
#' @examples
#' library(scales)
#' show_col(ssoass_pal()(8))
#' @export
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

ssoass_pal <- function(n, type = c("discrete", "continuous"),
                     reverse = FALSE){
  ssoass <- ssoass_palette

  if (reverse == TRUE) {
    ssoass <- rev(ssoass)
  }

  if (missing(n)) {
    n <- length(ssoass)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(ssoass)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(ssoass)}!"))
  }

  ssoass <- switch(type,
                 continuous = grDevices::colorRampPalette(ssoass)(n),
                 discrete = ssoass[1:n])

  ssoass <- scales::manual_pal(ssoass)

  return(ssoass)
}

#' @title scale_color_ssoass
#' @rdname ssoass_pal
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
#'   scale_color_ssoass()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_ssoass <- function(n, type = "discrete",
                             reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "ssoass",
                            ssoass_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_color_gradientn(colors = ssoass_pal(n = n, type = type,
                                                     reverse = reverse)(256))
  }
}

#' @title scale_colour_ssoass
#' @rdname ssoass_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to colour (note UK English)
#'
#' ggplot(classic_era, aes(x = energy, y = valence, color = album_name)) +
#'   geom_point(size = 2) +
#'   theme_minimal() +
#'   scale_colour_ssoass()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_ssoass <- scale_color_ssoass

#' @title scale_fill_ssoass
#' @rdname ssoass_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to fill
#'
#' ggplot(classic_era, aes(x = album_name, y = valence, fill = album_name)) +
#'   geom_violin() +
#'   theme_minimal() +
#'   theme(axis.text.x = element_text(angle = 90)) +
#'   scale_fill_ssoass()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_ssoass <- function(n, type = "discrete",
                            reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "ssoass",
                            ssoass_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_fill_gradientn(colors = ssoass_pal(n = n, type = type,
                                                    reverse = reverse)(256))
  }
}
