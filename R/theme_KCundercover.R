theme_KCundercover <- function(gridline_x = TRUE, gridline_y = TRUE) {

  sysfonts::font_add_google("Playfair Display", "playfair display")
  showtext::showtext_auto()

  gridline <- element_line(
    linetype = "dashed",
    linewidth = 0.2,
    color = "#660033"
  )

  gridline_x <- if (isTRUE(gridline_x)) {
    gridline
  } else {
    element_blank()
  }

  gridline_y <- if (isTRUE(gridline_y)) {
    gridline
  } else {
    element_blank()
  }

  # Set base theme and font family =============================================
  theme_minimal(
    base_family = "playfair display"
  ) +
    # Overwrite base theme defaults ============================================
  theme(
    # Text elements ==========================================================
    plot.title = element_text(
      size = 20,
      face = "bold",
      color = "#333333",
      margin = margin(b = 10)
    ),
    plot.subtitle = element_text(
      size = 12,
      color = "#808080",
      margin = margin(b = 10)
    ),
    plot.caption = element_text(
      size = 10,
      color = "#777777",
      margin = margin(t = 15),
      hjust = 0
    ),
    axis.text = element_text(
      size = 9,
      color = "#660033"
    ),
    plot.title.position = "plot",
    plot.caption.position = "plot",
    # Line elements ==========================================================
    panel.grid.minor = element_blank(),
    panel.grid.major.x = gridline_x,
    panel.grid.major.y = gridline_y,
    axis.line.x.bottom = element_line(linetype = "solid", color = "#660033", linewidth = 0.8),
    axis.line.y.left = element_line(colour = "#660033", linewidth = 0.8, linetype = "solid"),
    axis.ticks.x = element_line(
      linetype = "solid",
      linewidth = 0.25,
      color = "#660033"
    ),
    axis.ticks.length.x = unit(4, units = "pt")
  )
}
