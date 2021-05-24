virtual_palette <- c(
  "#d5643c",
  "#7fc0ab",
  "#a75134",
  "#89a92f",
  "#793f2c",
  "#54885e",
  "#61919d",
  "#251f18"
)

#' @title Virtual IX palette
#' @description Colour palette based on Iron Maiden's Virtual IX album sleeve.
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colours
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname virtual_pal
#' @examples
#' library(scales)
#' show_col(virtual_pal()(8))
#' @export
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

virtual_pal <- function(n, type = c("discrete", "continuous"),
                     reverse = FALSE){
  virtual <- virtual_palette

  if (reverse == TRUE) {
    virtual <- rev(virtual)
  }

  if (missing(n)) {
    n <- length(virtual)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(virtual)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(virtual)}!"))
  }

  virtual <- switch(type,
                 continuous = grDevices::colorRampPalette(virtual)(n),
                 discrete = virtual[1:n])

  virtual <- scales::manual_pal(virtual)

  return(virtual)
}

#' @title scale_color_virtual
#' @rdname virtual_pal
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
#'   scale_color_virtual()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_virtual <- function(n, type = "discrete",
                             reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "virtual",
                            virtual_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_color_gradientn(colors = virtual_pal(n = n, type = type,
                                                     reverse = reverse)(256))
  }
}

#' @title scale_colour_virtual
#' @rdname virtual_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to colour (note UK English)
#'
#' ggplot(classic_era, aes(x = energy, y = valence, color = album_name)) +
#'   geom_point(size = 2) +
#'   theme_minimal() +
#'   scale_colour_virtual()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_virtual <- scale_color_virtual

#' @title scale_fill_virtual
#' @rdname virtual_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to fill
#'
#' ggplot(classic_era, aes(x = album_name, y = valence, fill = album_name)) +
#'   geom_violin() +
#'   theme_minimal() +
#'   theme(axis.text.x = element_text(angle = 90)) +
#'   scale_fill_virtual()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_virtual <- function(n, type = "discrete",
                            reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "virtual",
                            virtual_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_fill_gradientn(colors = virtual_pal(n = n, type = type,
                                                    reverse = reverse)(256))
  }
}