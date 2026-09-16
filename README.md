## Operational Risk Analytics & Executive Reporting Dashboard

📌 Project Overview

Operational Risk Analytics & Executive Reporting Dashboard is an
end-to-end Data Analytics portfolio project focused on analyzing
operational risk scenarios, loss patterns, risk indicators, and data
quality.

The project demonstrates a complete analytical workflow:

Data Cleaning → SQL Analysis → Python Analysis → Power BI & DAX →
Executive Reporting

The objective is to transform row-level operational risk data into
actionable analytical insights and an executive-friendly interactive
dashboard.

Note: This is a portfolio/project dataset. The findings describe
the supplied dataset and should not be interpreted as the actual
operational-risk profile of any company.

🎯 Business Problem

Operational risk datasets can contain thousands of scenarios across
different event types and business processes. Simply storing these
records does not provide an executive view of:

Where losses are concentrated

Which event types contribute most to recorded losses

Which process areas have higher loss exposure

How severity and frequency relate to losses

Which individual scenarios have the largest losses

Which records require data-quality review

How risk-related variables are associated with recorded loss

How losses vary over time where reliable event dates are available

This project addresses these requirements through structured data
validation, SQL/Python analysis, and interactive Power BI reporting.

🎯 Project Objectives

Clean and validate operational risk data

Identify missing values, duplicates, date-quality issues, and
potential outliers

Analyze loss concentration by event type and process area

Compare ALE and OLE scenario populations

Analyze severity and frequency against recorded loss

Identify high-loss scenarios

Analyze actual-date monthly loss trends

Examine correlations between loss and selected numeric variables

Create analytical risk bands using project-defined thresholds

Build an executive Power BI dashboard

Create reusable DAX measures for KPI reporting

Demonstrate responsible use of Generative AI in analytics

📊 Dataset Overview

Metric                                                    Value

Total scenarios                                           2,147
Total recorded loss                             239,544.50 kUSD
Average loss                                        111.57 kUSD
Maximum loss                                        382.01 kUSD
Average severity                                           1.50
ALE scenarios                                             1,289
OLE scenarios                                               858
Records with actual dates                                   858
Records using synthetic date representation               1,289
Missing values identified                                     0
Duplicate Scenario IDs                                        0
Potential loss outliers                                       5

Event Types

System Failure

Data Breach

Tech Failure

Cyber-Fraud

Phishing

Process Areas

Retail Banking

ATM Network

E-Banking

Payments

Online Services

🧹 Data Cleaning & Quality Validation

The dataset was reviewed before analysis.

Validation performed

Missing-value checks

Exact duplicate-row checks

Duplicate Scenario ID checks

Scenario ID structure validation

ALE/OLE classification validation

Date-type validation

Numeric range checks

Negative-loss checks

IQR-based potential outlier detection

Data-quality flagging

Key data-quality observations

No missing values were identified in the original analytical fields.

No duplicate Scenario IDs were identified.

1,289 records use the Synth-2022 date representation.

858 records contain actual event dates.

Five loss observations were identified as potential IQR outliers.

The potential outliers were retained and flagged rather than
automatically deleted.

All OLE records have ML = 1.00 in the supplied dataset. This was
treated as a dataset-specific structural pattern rather than
modified without source validation.

🗄️ SQL Analysis

SQL was used as a reproducible analytical layer.

Analysis performed

Data validation

Core KPI calculations

Event-type analysis

Process-area analysis

Event Type × Process Area concentration

Severity analysis

Frequency analysis

ALE vs OLE comparison

Outlier analysis

Data-quality analysis

Actual-date trend analysis

Top-loss event analysis

CTE and ranking analysis

Window-function based top-N analysis

Cumulative/Pareto analysis

Analytical risk-band segmentation

VIX/GDP association analysis

Target analysis

Data-quality and outlier cross-analysis

🐍 Python Analysis

Python was used as an independent analytical and validation layer.

Libraries

Pandas

NumPy

Matplotlib

Analysis performed

Dataset inspection

Data-quality validation

Descriptive statistics

Loss distribution analysis

Mean vs median comparison

Loss outlier analysis

Event-type aggregation

Process-area aggregation

Severity vs loss analysis

Frequency vs loss analysis

Correlation analysis

Actual-date monthly trend analysis

ALE/OLE comparison

Analytical risk-band segmentation

Excel export of analytical results

The Python analysis was exported to:

Operational_Risk_Python_Analysis.xlsx

📈 Power BI Dashboard

The Power BI report contains three pages.

1. Executive Risk Overview

Includes:

High-Risk Scenario KPI

Total Scenarios

Total Loss

Average Loss

Maximum Loss

Average Severity

Total Loss by Event Type

Total Loss by Process Area

Risk Scenario Distribution

Monthly Total Loss

Top 10 Operational Risk Loss Events

2. Risk Analysis

Includes:

Event Type filter

Process Area filter

Scenario Type filter

Risk Band filter

Event Year filter

Risk Band Distribution

Process Area by Event Type

ALE vs OLE

Total Loss by Frequency

Total Loss by VIX

Total Loss by Severity

Total Loss by GDP

3. Data Quality & Monitoring

Includes:

Total Records

Missing Values

Duplicate IDs

Outlier Count

Data Quality Review

Actual Dates

Data Quality Flag Distribution

Date Type Distribution

Loss Outlier Analysis

Records Requiring Review

🧮 DAX

DAX was used to create reusable KPI measures, including:

Total Records =
COUNTROWS('Operational Risk Events')

Total Loss (kUSD) =
SUM('Operational Risk Events'[Loss_Amount_(kUSD)])

Average Loss (kUSD) =
AVERAGE('Operational Risk Events'[Loss_Amount_(kUSD)])

Maximum Loss (kUSD) =
MAX('Operational Risk Events'[Loss_Amount_(kUSD)])

Duplicate Scenario IDs =
COUNTROWS('Operational Risk Events')
-
DISTINCTCOUNT('Operational Risk Events'[Scenario_ID])

Actual Date Records =
CALCULATE(
    COUNTROWS('Operational Risk Events'),
    'Operational Risk Events'[Date_type] = "Actual"
)

⚠️ Analytical Risk Bands

For portfolio-analysis purposes, the project uses the following
project-defined analytical thresholds:

Risk Band     Rule

High Risk     Severity ≥ 2.5 AND Loss ≥ 250 kUSD
Medium Risk   Severity ≥ 1.5 OR Loss ≥ 150 kUSD
Lower Risk    All remaining scenarios

These thresholds are illustrative analytical rules created for this
portfolio project. They are not official regulatory, industry, or
company-specific risk thresholds.

🔎 Key Analytical Findings

The dataset contains 2,147 scenarios and approximately 239.54
million USD-equivalent dollars in kUSD units of recorded loss,
represented as 239,544.50 kUSD in the dataset.

System Failure has the largest total recorded loss among the event
types.

Retail Banking has the largest total recorded loss among the process
areas.

Online Services has the highest average loss per scenario among the
process areas.

Five loss observations were identified as potential IQR outliers and
retained for review.

858 records contain actual dates and were used for chronological
trend analysis.

1,289 records use a synthetic Synth-2022 date representation and
were excluded from precise monthly chronology.

Correlation analysis indicates that Severity and OpVar have stronger
linear associations with recorded loss than Frequency in this
dataset.

Correlation results are descriptive and do not establish causation.

Risk-band counts and dashboard values should be reconciled against the
final Power BI model before publishing the dashboard as a final
version.

🤖 Generative AI Integration

Generative AI was used as an analyst-assistance tool throughout the
project.

ChatGPT

Used for:

Data-quality framework design

SQL query development

Python analysis assistance

KPI/KRI design

Dashboard planning

Analytical documentation

Executive insight structuring

Prompt engineering

Microsoft Copilot

Used for:

Excel exploration

Formula/Pivot support

Power BI exploration and narrative assistance where available

Validation approach

AI-generated suggestions were reviewed and validated against the
underlying dataset and analytical outputs before being incorporated into
the project.

🛠️ Technology Stack

Technology          Purpose

Excel               Data review and analytical output
SQL / MySQL         Data validation and analytical querying
Python              Statistical and exploratory analysis
Pandas              Data manipulation
NumPy               Numerical analysis
Matplotlib          Data visualization
Power BI            Interactive dashboard
DAX                 KPI and analytical measures
ChatGPT             AI-assisted analytics and documentation
Microsoft Copilot   AI-assisted Excel/Power BI exploration

📁 Project Structure

Operational-Risk-Analytics/
│
├── README.md
│
├── Data/
│   ├── Operational_Risk_Events_Raw.csv
│   └── Operational_Risk_Events_Clean.csv
│
├── SQL/
│   └── risk_analysis.sql
│
├── Python/
│   └── risk_analysis.py
│
├── Analysis_Output/
│   └── Operational_Risk_Python_Analysis.xlsx
│
├── Power_BI/
│   └── Operational_Risk_Dashboard.pbix
│
├── Documentation/
│   ├── Data_Dictionary.xlsx
│   ├── Project_Documentation.docx
│   └── Dashboard_Screenshots/
│
└── Screenshots/
    ├── Executive_Risk_Overview.png
    ├── Risk_Analysis.png
    └── Data_Quality_Monitoring.png

💼 Skills Demonstrated

Data Cleaning

Data Validation

Exploratory Data Analysis

Data Quality Monitoring

SQL Analytics

Advanced SQL

CTEs

Window Functions

Ranking & Pareto Analysis

Python

Pandas

NumPy

Excel

Power BI

DAX

Dashboard Development

KPI Development

Risk Analytics

Generative AI

Prompt Engineering

Executive Reporting

📌 Project Outcome

The project converts a raw operational-risk scenario dataset into a
structured analytical workflow and executive reporting solution.

The final solution demonstrates how a Data Analyst can:

Validate → Transform → Analyze → Visualize → Communicate

using SQL, Python, Excel, Power BI, DAX, and Generative AI-assisted
workflows.

👤 Author

Harsh Bharti

Data Analyst | SQL | Python | Excel | Power BI | DAX
