frontier_palette <- c(
  "#1f2f40",
  "#bb272c",
  "#617b5c",
  "#c6c9b1",
  "#3c678c",
  "#6fadb8",
  "#6f4041",
  "#2f7fc0"
)

#' @title The Final Frontier palette
#' @description Colour palette based on Iron Maiden's The Final Frontier album sleeve.
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname frontier_pal
#' @examples
#' library(scales)
#' show_col(frontier_pal()(8))
#' @export
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

frontier_pal <- function(n, type = c("discrete", "continuous"),
                     reverse = FALSE){
  frontier <- frontier_palette

  if (reverse == TRUE) {
    frontier <- rev(frontier)
  }

  if (missing(n)) {
    n <- length(frontier)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(frontier)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(frontier)}!"))
  }

  frontier <- switch(type,
                 continuous = grDevices::colorRampPalette(frontier)(n),
                 discrete = frontier[1:n])

  frontier <- scales::manual_pal(frontier)

  return(frontier)
}

#' @title scale_color_frontier
#' @rdname frontier_pal
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
#'   scale_color_frontier()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_frontier <- function(n, type = "discrete",
                             reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "frontier",
                            frontier_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_color_gradientn(colors = frontier_pal(n = n, type = type,
                                                     reverse = reverse)(256))
  }
}

#' @title scale_colour_frontier
#' @rdname frontier_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to colour (note UK English)
#'
#' ggplot(classic_era, aes(x = energy, y = valence, color = album_name)) +
#'   geom_point(size = 2) +
#'   theme_minimal() +
#'   scale_colour_frontier()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_frontier <- scale_color_frontier

#' @title scale_fill_frontier
#' @rdname frontier_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to fill
#'
#' ggplot(classic_era, aes(x = album_name, y = valence, fill = album_name)) +
#'   geom_violin() +
#'   theme_minimal() +
#'   theme(axis.text.x = element_text(angle = 90)) +
#'   scale_fill_frontier()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_frontier <- function(n, type = "discrete",
                            reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "frontier",
                            frontier_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_fill_gradientn(colors = frontier_pal(n = n, type = type,
                                                    reverse = reverse)(256))
  }
}