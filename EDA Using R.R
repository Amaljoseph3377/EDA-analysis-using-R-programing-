library(readxl)
churn_data <- read_excel("churn data.xlsx")
View(churn_data)


ggplot(churn_data, aes(x = PhoneService, fill = Churn)) +
  geom_bar(position = "fill") +
  labs(x = "Phone Service", y = "Proportion", title = "Churn Rates by Phone Service") +
  scale_y_continuous(labels = scales::percent_format()) +
  theme_minimal()



ggplot(churn_data, aes(x = InternetService, fill = Churn)) +
  geom_bar(position = "fill") +
  labs(x = "Internet Service", y = "Proportion", title = "Churn Rates by Internet Service") +
  scale_y_continuous(labels = scales::percent_format()) +
  theme_minimal()


ggplot(churn_data, aes(x = OnlineSecurity, fill = Churn)) +
  geom_bar(position = "fill") +
  labs(x = "Online Security", y = "Proportion", title = "Churn Rates by Online Security") +
  scale_y_continuous(labels = scales::percent_format()) +
  theme_minimal()



ggplot(churn_data, aes(x = as.factor(Churn), y = TotalCharges, fill = as.factor(Churn))) +
  geom_boxplot() +
  labs(x = "Churn Status", y = "Total Charges", title = "Total Charges by Churn Status") +
  scale_fill_discrete(name = "Churn Status", labels = c("Non-Churned", "Churned")) +
  theme_minimal()



ggplot(churn_data, aes(x = Location, y = Churn)) +
  geom_col(fill = "steelblue") +
  labs(x = "Location", y = "Churn Rate", title = "Churn Rates by Location") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))





ggplot(churn_data, aes(x = gender, y = Churn)) +
  geom_col(fill = "steelblue") +
  labs(x = "Gender", y = "Churn Rate", title = "Churn Rates by Gender") +
  theme_minimal()




ggplot(churn_data, aes(x = Tenure, y = MonthlyCharges)) +
  geom_point(alpha = 0.5) +
  labs(x = "Tenure (Months)", y = "Monthly Charges", title = "Tenure vs. Monthly Charges") +
  theme_minimal()





ggplot(churn_data, aes(x = Tenure, y = Churn, fill = PhoneService)) +
  geom_col(position = "dodge") +
  facet_wrap(~ MultipleLines) +
  labs(x = "Tenure (Months)", y = "Churn Rate", title = "Churn Rates by Tenure, Phone Service, and Multiple Lines") +
  theme_minimal()



ggplot(churn_data, aes(x = age, y = Churn)) +
  geom_col(fill = "steelblue") +
  labs(x = "Age", y = "Churn Rate", title = "Churn Rates by Age") +
  theme_minimal()




ggplot(churn_data, aes(x = MultipleLines, y = Churn)) +
  geom_col(fill = "steelblue") +
  labs(x = "Multiple Lines", y = "Churn Rate", title = "Churn Rates by Multiple Lines") +
  theme_minimal()



ggplot(churn_data, aes(x = Tenure, y = TotalCharges)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Tenure vs. Total Charges with Regression Line")



ggplot(churn_data, aes(x = Churn, y = InternetService, fill = gender)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Customer Segments Based on Churn Rate and Engagement")
