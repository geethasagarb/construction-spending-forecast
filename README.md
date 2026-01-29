## Forecasting U.S. Construction Spending

A time-series forecasting project analyzing **Total Construction Spending in the United States** using classical statistical models and Meta Prophet, with rigorous validation and model comparison.

🔗 **Published Report (RPubs):**  
http://rpubs.com/GeethaSGR/1278652

---

## Project Overview
This project focuses on understanding historical patterns and forecasting future trends in U.S. construction spending. Using monthly, seasonally adjusted data from the Federal Reserve Economic Data (FRED), the analysis combines exploratory data analysis, time-series modeling, and cross-validation to identify the most reliable forecasting approach.

---

## Dataset
- **Source:** Federal Reserve Economic Data (FRED), St. Louis Fed  
- **Metric:** Total Construction Spending (U.S.)  
- **Frequency:** Monthly (seasonally adjusted)  
- **Unit:** Millions of dollars  
- **Time Range:** January 2002 – November 2024  
- **Observations:** 275

Construction spending is a key economic indicator reflecting infrastructure investment, housing activity, and broader economic conditions.

---

## Repository Structure

forecasting-us-construction-spending/
├── README.md
├── data/
│   └── construction_spending.csv
├── src/
│   └── load_libraries.R
├── reports/
│   ├── construction_spending_forecast.qmd
│   ├── construction_spending_forecast.html
│   ├── figure-html/
│   └── libs/

---

## Methodology

### 1. Exploratory Data Analysis (EDA)
- Identified a strong long-term upward trend in construction spending
- Observed clear yearly seasonality with peaks in warmer months
- Detected notable deviations during major economic events (e.g., 2008 financial crisis, COVID-19 period)
- Outliers primarily occurred in mid-2022 and mid-2024

---

### 2. ARIMA Modeling
- Stationarity assessed using rolling statistics and KPSS tests
- Applied Box-Cox transformation, seasonal differencing (lag = 12), and first-order differencing
- Final model selected: **ARIMA(1,1,1)(1,1,1)[12]**
- Model diagnostics confirmed well-behaved residuals (Ljung-Box p-value > 0.05)

---

### 3. Meta Prophet Modeling
- Implemented Prophet with multiple configurations:
  - Linear vs. logistic growth
  - Additive vs. multiplicative seasonality
- Multiplicative seasonality captured increasing seasonal amplitude over time
- Linear growth with multiplicative seasonality performed best among Prophet variants

---

### 4. Model Comparison & Validation
- Performed rolling cross-validation on ARIMA, Prophet, and naïve baselines
- **ARIMA(1,1,1)(1,1,1)[12]** consistently outperformed alternatives
- Prophet provided competitive results but with slightly higher error
- Naïve model performed poorly and was unsuitable for this dataset

---

## Key Results
- **Best Model:** ARIMA(1,1,1)(1,1,1)[12]
- **Test Set Performance:**
  - MAPE ≈ 14.5%
  - RMSE ≈ 12,461
- 12-month forecast preserves trend and seasonality, with uncertainty increasing over the forecast horizon

---

## Tools & Technologies
- R (tidyverse, time-series & forecasting libraries)
- ARIMA, KPSS, Box-Cox transformation
- Meta Prophet
- Rolling cross-validation
- Data visualization

---

## Notes
- Forecast accuracy may degrade under sudden economic shocks or policy changes
- Models assume historical patterns persist; periodic retraining is recommended as new data becomes available

---

## Author
**Geetha Sagar Bonthu**  
MS Business Analytics — University of Cincinnati
