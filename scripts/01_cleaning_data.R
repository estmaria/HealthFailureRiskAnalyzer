library(tidyverse)

df <- read_csv("data/heart_failure_clinical_records_dataset.csv")

glimpse(df)
sum(is.na(df))

df <- df %>%
  mutate(across(c(anaemia, diabetes, high_blood_pressure, sex, smoking, DEATH_EVENT),
                ~ as.factor(.)))
df <- df %>%
  mutate(
    high_cpk = ifelse(creatinine_phosphokinase > 500, 1, 0),
    low_ef = ifelse(ejection_fraction < 40, 1, 0),
    high_creatinine = ifelse(serum_creatinine > 1.2, 1, 0),
    low_sodium = ifelse(serum_sodium < 135, 1, 0),
    risk_score = high_cpk + low_ef + high_creatinine + low_sodium
  )
df$DEATH_EVENT <- factor(df$DEATH_EVENT, levels = c(0, 1), labels = c("Survived", "Died"))

summary(df)
view(df)
