here::i_am("code/04_create_regression.R")

library(gtsummary)
data<- read.csv(here::here("data", "structured_endometriosis_data.csv"))

endo_model <- glm(
  Diagnosis ~ Age +
    Menstrual_Irregularity +
    Chronic_Pain_Level +
    Hormone_Level_Abnormality +
    Infertility +
    BMI,
  data = data,
  family = binomial
)

regression_table <- endo_model |>
  tbl_regression(
    exponentiate = TRUE,
    label = list(
      Age = "Age",
      Menstrual_Irregularity = "Menstrual Irregularity",
      Chronic_Pain_Level = "Chronic Pain Level",
      Hormone_Level_Abnormality = "Hormone Level Abnormality",
      Infertility = "Infertility",
      BMI = "BMI"
    )
  )

saveRDS(
  regression_table,
  file = here::here("output", "regression_table.rds")
)