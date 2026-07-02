# =====================================================
# Regression Analysis Template
# Dietary Diversity and Forest Cover Study
# =====================================================

# Load required packages
library(readxl)
library(sjPlot)
library(car)

# =====================================================
# USER INPUT
# Replace with your own dataset
# =====================================================

df <- read_excel("path/to/your/data.xlsx")

# =====================================================
# Example linear regression model
# =====================================================

model <- lm(
  diet_div ~
    popdenmean +
    near_dist_urban_km +
    near_dist_road +
    lvstk +
    wtr_imp +
    tlt_imp +
    edu +
    age +
    wind +
    Crop +
    fc_SD +
    hos,
  data = df
)

# =====================================================
# Model summary
# =====================================================

summary(model)

# R-squared
summary(model)$r.squared

# =====================================================
# Caterpillar plot
# =====================================================

plot_model(
  model,
  show.values = TRUE,
  title = "Regression Results"
)

# =====================================================
# Variance Inflation Factors
# =====================================================

vif(model)
