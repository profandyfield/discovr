senjutsu_palette <- c(
  "#25A098",
  "#95615E",
  "#286F9F",
  "#EBDCAA",
  "#7A5934",
  "#E8B18B",
  "#AA9E8C",
  "#68302F",
  "#616F75",
  "#1E2621"
)

#' @title Senjutsu palette
#' @description Colour palette based on Iron Maiden's Senjutsu album inner gatefold sleeve.
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @return A [discrete][ggplot2::discrete_scale] or [continuous][ggplot2::continuous_scale] scale.
#' @rdname senjutsu_pal
#' @examples
#' library(scales)
#' show_col(senjutsu_pal()(8))
#' @export
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

senjutsu_pal <- function(n, type = c("discrete", "continuous"),
                     reverse = FALSE){
  senjutsu <- senjutsu_palette

  if (reverse == TRUE) {
    senjutsu <- rev(senjutsu)
  }

  if (missing(n)) {
    n <- length(senjutsu)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(senjutsu)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(senjutsu)}!"))
  }

  senjutsu <- switch(type,
                 continuous = grDevices::colorRampPalette(senjutsu)(n),
                 discrete = senjutsu[1:n])

  senjutsu <- scales::manual_pal(senjutsu)

  return(senjutsu)
}

#' @title scale_color_senjutsu
#' @rdname senjutsu_pal
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
#'   scale_color_senjutsu()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_senjutsu <- function(n, type = "discrete",
                             reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "senjutsu",
                            senjutsu_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_color_gradientn(colors = senjutsu_pal(n = n, type = type,
                                                     reverse = reverse)(256))
  }
}

#' @title scale_colour_senjutsu
#' @rdname senjutsu_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to colour (note UK English)
#'
#' ggplot(classic_era, aes(x = energy, y = valence, color = album_name)) +
#'   geom_point(size = 2) +
#'   theme_minimal() +
#'   scale_colour_senjutsu()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_senjutsu <- scale_color_senjutsu

#' @title scale_fill_senjutsu
#' @rdname senjutsu_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to fill
#'
#' ggplot(classic_era, aes(x = album_name, y = valence, fill = album_name)) +
#'   geom_violin() +
#'   theme_minimal() +
#'   theme(axis.text.x = element_text(angle = 90)) +
#'   scale_fill_senjutsu()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_senjutsu <- function(n, type = "discrete",
                            reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "senjutsu",
                            senjutsu_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_fill_gradientn(colors = senjutsu_pal(n = n, type = type,
                                                    reverse = reverse)(256))
  }
}