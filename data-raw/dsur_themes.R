grn <- "#16a085"
grn_dk <- "#1b7742"
blu <- "#5c97bf"
blu_dk <- "#34415e"
mag <- "#b381b3"
mag_dk <- "#886288"
gry <- "#939393"
gry_dk <- "#545454"
ylw <- "#aa8f00"
ylw_dk <- "#634806"
ong <- "#d47500"
ong_dk <- "#d35400"
red <- "#ef4836"
red_dk <- "#b50000"


theme_trans <- function(base_size = 12, base_family = "") {
  theme_minimal(base_size = base_size, base_family = base_family) %+replace%
    theme(
      legend.background = element_rect(fill = "transparent", colour = NA),
      panel.background  = element_rect(fill = "transparent", colour = NA),
      panel.grid = element_blank(),
      plot.background   = element_rect(fill = "transparent", colour = NA),
      strip.background = element_rect(fill = blu_dk, colour = "white"),
      strip.text  = element_text(size = rel(1.3), colour = "white")
    )
}
