here::i_am(("code/03_create_figure.R"))

library(tidyverse)

data<- read.csv(file=here::here("data", "structured_endometriosis_data.csv"))

plot <- ggplot(
  data,
  aes(
    x = factor(Diagnosis,
               levels = c(0, 1),
               labels = c("No Endometriosis", "Endometriosis")),
    y = Chronic_Pain_Level,
    fill = factor(Menstrual_Irregularity,
                  levels = c(0, 1),
                  labels = c("No", "Yes"))
  )
) +
  geom_boxplot() +
  labs(
    x = "Endometriosis Diagnosis",
    y = "Chronic Pain Level",
    fill = "Menstrual Irregularity"
  ) +
  theme_bw()

ggsave(filename=here::here("output", "plot.png"),
       plot = plot)