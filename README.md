#  World Layoffs Exploratory Data Analysis (SQL)

![SQL](https://img.shields.io/badge/SQL-MySQL-blue?style=for-the-badge)
![EDA](https://img.shields.io/badge/Exploratory-Data%20Analysis-orange?style=for-the-badge)
![Google Sheets](https://img.shields.io/badge/Visualization-Google%20Sheets-green?style=for-the-badge)
![Portfolio](https://img.shields.io/badge/Data%20Project-Portfolio-lightgrey?style=for-the-badge)

---

##  Overview

This project performs exploratory data analysis (EDA) on a global layoffs dataset using SQL to uncover trends and insights in workforce reductions across companies, industries, countries, and time.

The dataset used in this analysis was cleaned in a previous SQL data cleaning project to ensure accuracy and consistency.

---

##  Objectives

- Identify companies with the highest layoffs
- Analyze which industries were most affected
- Explore country-level layoff trends
- Study layoffs over time (yearly and monthly trends)
- Identify patterns in global workforce reductions
- Generate actionable business insights from cleaned data

---

##  Dataset

This analysis uses a cleaned layoffs dataset prepared in a previous SQL data cleaning project.

**Key columns include:**
- Company
- Industry
- Location
- Country
- Date
- Total Laid Off
- Percentage Laid Off
- Funds Raised
- Company Stage

---

##  Key Insights

- Top companies with largest layoffs
- Most affected industries globally
- Countries with highest job losses
- Clear layoff spikes over time (economic cycles)
- Companies that experienced 100% workforce reductions
- A small number of companies contributed to a large share of total layoffs

---

##  Tools Used

- MySQL (SQL Queries)
- Google Sheets (Data Visualization)
- Git & GitHub (Version Control & Portfolio Hosting)

---

##  Key Techniques

- GROUP BY aggregations
- Window functions (rolling totals)
- Date formatting and extraction
- Filtering and sorting data
- Time-series analysis using SQL
- Data aggregation for business insights

---

##  Project Structure

```text
world-layoffs-sql-eda/
│
├── README.md
├── sql/
│   └── layoffs_eda.sql
├── data/
│   └── layoffs_cleaned.csv
└── screenshots/
    ├── top_companies.png
    ├── layoffs_by_industry.png
    ├── layoffs_by_country.png
    └── monthly_layoffs_trend.png
```

---

##  Visualizations

###  Monthly Layoffs Trend

A line chart created in Google Sheets was used to visualize monthly layoffs trends over time.

This chart highlights spikes in layoffs during major global economic shifts.


![Monthly Layoff Trend]("C:\Users\user\OneDrive\Desktop\SQL projects\world_layoffs_sql_eda\screenshots\Monthly Layoff trend .png")


---

##  Insights Generated

- Layoffs were heavily concentrated in specific time periods, indicating economic downturns
- Certain industries (e.g., tech) were significantly more affected than others
- A small number of companies accounted for a large proportion of global layoffs
- Layoff trends show clear cyclical patterns over time
- Some companies experienced complete workforce reductions (100% layoffs)

---

##  Business Value

This analysis helps understand:
- Global workforce trends
- Industry vulnerability to economic changes
- Company-level risk patterns
- Macroeconomic impact on employment

---

##  Notes

- This analysis is based on cleaned data from a previous SQL data cleaning project
- Records with missing dates were excluded from time-based analysis to ensure accuracy
- Google Sheets was used for visualization after exporting SQL query results

---