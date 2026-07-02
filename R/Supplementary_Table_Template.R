# =====================================================
# Supplementary Table Template
# =====================================================

results <- data.frame(
  Variable = character(),
  Estimate = numeric(),
  StdError = numeric(),
  Pvalue = numeric()
)

write.csv(
  results,
  "path/to/output/Supplementary_Table.csv",
  row.names = FALSE
)
