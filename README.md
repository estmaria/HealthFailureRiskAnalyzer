# HeartFailureRiskAnalyzer
The Heart Failure Risk Analyzer is an R-based data science project that analyzes clinical patient data to predict the risk of death in heart failure patients. It includes logistic regression modeling, key visualizations, and outputs insightful probability distributions based on clinical features.

## 🚀 Features
- **📊 Data Analysis** of death events by risk score and age
- **📈 Logistic Regression Model** to predict death probability
- **🧠 Risk Prediction** based on age, ejection fraction, serum creatinine, serum sodium, and risk score
- **🎨 Visualizations** such as graphs and bar plots

## 💻 Technologies Used
- R (ggplot2, base R)
- Statistical Modeling: Logistic Regression (glm)
- Data Visualization: ggplot2

## 📁 Project Files
- `data/heart_failure_data.csv`: Source dataset
- `scripts/01_cleaning_data.R`: Data cleaning
- `scripts/02_visuals.R`: Reproduction of key visualizations and model
- `outputs/`: Folder containing generated graphs
- `heart-failure-risk-analyzer.Rproj`: RStudio project file

 ## 🧠 Outputs
 <img width="510" height="452" alt="death-event-by-risk-score" src="https://github.com/user-attachments/assets/d58a51c6-ff6e-484d-940b-8b5a2524cfa4" /> <br>
The proportion of patients who survived vs. died, grouped by the calculated risk score (0–4). It shows how risk score is strongly predictive of mortality.

<img width="510" height="452" alt="age-distribution-by-death-event" src="https://github.com/user-attachments/assets/3088eb79-8cf0-4f72-ae76-3f83f04f6888" /> <br>
The age distribution of patients, split into those who survived (blue) and those who died (red). It can be oobserved that age is a significant risk factor.

<img width="510" height="452" alt="predicted-death-probability" src="https://github.com/user-attachments/assets/4266d010-7d95-43f8-8571-aed2d871d268" /> <br>
Distribution of predicted death probabilities from your logistic regression model, split by survival outcome.
