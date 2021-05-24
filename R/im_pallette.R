im_palette <- c(
  "#dcc67f",
  "#9b7b3a",
  "#6f7557",
  "#949a95",
  "#c7221c",
  "#a9ab86",
  "#4e5f5e",
  "#333421"
)

#' @title Iron Maiden palette
#' @description Colour palette based on Iron Maiden's eponymous album sleeve.
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname im_pal
#' @examples
#' library(scales)
#' show_col(im_pal()(8))
#' @export
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

im_pal <- function(n, type = c("discrete", "continuous"),
                     reverse = FALSE){
  im <- im_palette

  if (reverse == TRUE) {
    im <- rev(im)
  }

  if (missing(n)) {
    n <- length(im)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(im)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(im)}!"))
  }

  im <- switch(type,
                 continuous = grDevices::colorRampPalette(im)(n),
                 discrete = im[1:n])

  im <- scales::manual_pal(im)

  return(im)
}

#' @title scale_color_im
#' @rdname im_pal
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
#'   scale_color_im()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_im <- function(n, type = "discrete",
                             reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "im",
                            im_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_color_gradientn(colors = im_pal(n = n, type = type,
                                                     reverse = reverse)(256))
  }
}

#' @title scale_colour_im
#' @rdname im_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to colour (note UK English)
#'
#' ggplot(classic_era, aes(x = energy, y = valence, color = album_name)) +
#'   geom_point(size = 2) +
#'   theme_minimal() +
#'   scale_colour_im()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_im <- scale_color_im

#' @title scale_fill_im
#' @rdname im_pal
#' @export
#' @examples
#'
#' # Plot some data and apply theme to fill
#'
#' ggplot(classic_era, aes(x = album_name, y = valence, fill = album_name)) +
#'   geom_violin() +
#'   theme_minimal() +
#'   theme(axis.text.x = element_text(angle = 90)) +
#'   scale_fill_im()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_im <- function(n, type = "discrete",
                            reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "im",
                            im_pal(n = n, type = type,
                                     reverse = reverse), ...)
  } else {
    ggplot2::scale_fill_gradientn(colors = im_pal(n = n, type = type,
                                                    reverse = reverse)(256))
  }
}