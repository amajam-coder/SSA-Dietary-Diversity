# =====================================================
# Caterpillar Plot Template
# =====================================================

library(sjPlot)

# Assume model has already been created

plot_model(
  model,
  show.values = TRUE,
  dot.size = 0.5,
  value.size = 2,
  value.offset = 0.3,
  title = "Regression Results"
)

# Save figure

save_plot(
  "path/to/output/Figure.png",
  fig = last_plot(),
  width = 12,
  height = 9,
  dpi = 300
)
