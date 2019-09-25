library(ggplot2)

d = data.frame(cbind(x = 0:25, y = 0))

shapes <- ggplot(d, aes(x = x, y = y)) +
  scale_y_continuous(name="",, breaks = NULL) +
  scale_x_continuous(name="", breaks = 0:25) +
  scale_shape_identity() +
  coord_cartesian(ylim = c(-0.1, 0.1)) +
  geom_point(aes(shape = x), size=5, fill="grey") +
  theme_minimal() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.ticks.y = element_blank(), axis.text.x = element_text(size = rel(1.7)), axis.ticks = element_blank())

ggsave("dsr2_fig_05_09_ggplot_shapes.pdf", shapes, width = 20, height = 4, units = "cm")


l = data.frame(lines = c("blank", "solid", "dashed", "dotted", "dotdash", "longdash", "twodash"))

lines <- ggplot() +
  scale_x_continuous(limits = c(0,1), breaks = NULL, name = "") +
  scale_y_discrete(name="") +
  scale_linetype_identity() +
  geom_segment(data = l, mapping = aes(x = 0, xend = 1, y = lines, yend = lines, linetype = lines)) +
  theme_minimal() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.ticks.y = element_blank(), axis.text.x = element_text(size = rel(1.7)), axis.ticks = element_blank())

ggsave("dsr2_fig_05_08_ggplot_lines.pdf", lines, width = 10, height = 6, units = "cm")
