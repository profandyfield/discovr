pom_palette <- c(
  "#cea936",
  "#e82b2d",
  "#73b0c6",
  "#3f5b53",
  "#776624",
  "#437e9e",
  "#161a0f",
  "#e7e8dc"
)

#' @title Piece of Mind palette
#' @description Colour palette based on Iron Maiden's Piece of Mind album sleeve.
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname pom_pal
#' @examples
#' library(scales)
#' show_col(pom_pal()(8))
#' @export
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

pom_pal <- function(n, type = c("discrete", "continuous"),
                     reverse = FALSE){
  pom <- pom_palette

  if (reverse == TRUE) {
    pom <- rev(pom)
  }

  if (missing(n)) {
    n <- length(pom)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(pom)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(pom)}!"))
  }

  pom <- switch(type,
                 continuous = grDevices::colorRampPalette(pom)(n),
                 discrete = pom[1:n])

  pom <- scales::manual_pal(pom)

  return(pom)
}

#' @title scale_color_pom
#' @rdname pom_pal
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
#'   scale_color_pom()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_pom <- function(n, type = "discrete",
                             reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "pom",
                            pom_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_color_gradientn(colors = pom_pal(n = n, type = type,
                                                     reverse = reverse)(256))
  }
}

#' @title scale_colour_pom
#' @rdname pom_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to colour (note UK English)
#'
#' ggplot(classic_era, aes(x = energy, y = valence, color = album_name)) +
#'   geom_point(size = 2) +
#'   theme_minimal() +
#'   scale_colour_pom()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_pom <- scale_color_pom

#' @title scale_fill_pom
#' @rdname pom_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to fill
#'
#' ggplot(classic_era, aes(x = album_name, y = valence, fill = album_name)) +
#'   geom_violin() +
#'   theme_minimal() +
#'   theme(axis.text.x = element_text(angle = 90)) +
#'   scale_fill_pom()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_pom <- function(n, type = "discrete",
                            reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "pom",
                            pom_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_fill_gradientn(colors = pom_pal(n = n, type = type,
                                                    reverse = reverse)(256))
  }
}