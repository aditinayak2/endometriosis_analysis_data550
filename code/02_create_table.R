here::i_am("code/02_create_table.R")
library(gtsummary)
library(labelled)
library(tidyverse)

data <- read.csv(here::here("data", "structured_endometriosis_data.csv"))

var_label(data) <- c(
  Age = "Age",
  Menstrual_Irregularity = "Menstrual Irregularity",
  Chronic_Pain_Level = "Chronic Pain Level",
  Hormone_Level_Abnormality = "Hormone Level Abnormality",
  Infertility = "Infertility",
  BMI = "BMI",
  Diagnosis = "Endometriosis Diagnosis"
)

table1 <- data |>
  select(
    Diagnosis,
    Age,
    Menstrual_Irregularity,
    Chronic_Pain_Level,
    Hormone_Level_Abnormality,
    Infertility,
    BMI
  ) |>
  tbl_summary(
    by = Diagnosis
  ) |>
  add_overall() |>
  modify_header(
    stat_1 ~ "**No Endometriosis**",
    stat_2 ~ "**Endometriosis**"
  ) |>
  modify_caption(
    "**Table 1. Characteristics of the simulated study population by endometriosis diagnosis**"
  )

saveRDS(table1, file= here::here("output", "table1.rds"))
