library(ggplot2)

#Risk score vs Death Event
ggplot(df, aes(x = risk_score, fill = DEATH_EVENT)) +
  geom_bar(position = "fill") +
  labs(y = "Proportion", fill = "Death Event", title = "Death Event by Risk Score") +
  scale_fill_manual(values = c("Survived" = "blue", "Died" = "red")) +
  theme_minimal()


#Age distribution by Death Event
ggplot(df, aes(x = age, fill = DEATH_EVENT)) +
  geom_histogram(bins = 30, position = "identity", alpha = 0.6) +
  scale_fill_manual(values = c("Survived" = "blue", "Died" = "red")) +
  labs(title = "Age Distribution by Death Event", x = "Age") +
  theme_minimal()

#Regression model, prediction and visualization
model <- glm(DEATH_EVENT ~ age + ejection_fraction + serum_creatinine + serum_sodium + risk_score,
             data = df, family = "binomial")
summary(model)

df$predicted_prob <- predict(model, type = "response")

ggplot(df, aes(x = predicted_prob, fill = DEATH_EVENT)) +
  geom_histogram(bins = 30, alpha = 0.6, position = "identity") +
  scale_fill_manual(values = c("Survived" = "blue", "Died" = "red")) +
  labs(title = "Predicted Death Probability", x = "Predicted Probability") +
  theme_minimal()

