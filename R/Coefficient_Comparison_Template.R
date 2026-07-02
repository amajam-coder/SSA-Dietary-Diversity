# =====================================================
# Coefficient Comparison Figure Template
# =====================================================

library(ggplot2)

coef_table <- data.frame(
  Country = character(),
  Coefficient = numeric()
)

ggplot(coef_table,
       aes(x = Coefficient,
           y = reorder(Country, Coefficient))) +
  geom_segment(aes(x = 0,
                   xend = Coefficient,
                   yend = Country)) +
  geom_point(size = 3) +
  labs(
    x = "Coefficient",
    y = NULL
  ) +
  theme_minimal()
