# Employee Turnover Analysis Project

<div align="center">

![SQL](https://img.shields.io/badge/SQL-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Excel](https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)
![HR Analytics](https://img.shields.io/badge/HR_Analytics-4285F4?style=for-the-badge&logo=google-analytics&logoColor=white)

![GitHub Stars](https://img.shields.io/github/stars/TheKingofLEGO/Employee-Turnover-Analysis?style=social)
![GitHub Forks](https://img.shields.io/github/forks/TheKingofLEGO/Employee-Turnover-Analysis?style=social)

</div>

---

## 🎯 Project Highlights

> **16% turnover rate identified** | **1,470 employees analyzed** | **3 interactive dashboards** | **Actionable insights for HR strategy**

Welcome to the **Employee Turnover Analysis Project** repository! 🚀  

This project demonstrates a comprehensive data analytics approach to understanding employee attrition patterns using **SQL** for data analysis and **Power BI** for interactive visualization. Designed as a portfolio project, it highlights industry best practices in HR analytics, business intelligence, and data storytelling.

---

## 📑 Table of Contents

- [Project Workflow](#-project-workflow)
- [Project Overview](#-project-overview)
- [Tools & Resources](#-tools--resources)
- [Project Objectives](#-project-objectives)
- [Key Findings](#-key-findings)
- [Repository Structure](#-repository-structure)
- [Getting Started](#-getting-started)
- [Business Insights & Recommendations](#-business-insights--recommendations)
- [Skills Demonstrated](#-skills-demonstrated)
- [Learning Outcomes](#-learning-outcomes)
- [Future Enhancements](#-future-enhancements)
- [Connect With Me](#-connect-with-me)
- [License](#-license)
- [About Me](#-about-me)
- [Acknowledgments](#-acknowledgments)

---

## 🏗️ Project Workflow

This project follows a structured analytical approach:

1. **Data Collection**: Imported employee HR dataset from Kaggle
2. **Data Quality Checks**: Validated data integrity using SQL (null checks, data type verification)
3. **Data Analysis**: Conducted in-depth analysis across three key areas:
   - Executive Summary Metrics
   - Department-Level Analysis
   - Root Cause Analysis
4. **Visualization**: Created interactive Power BI dashboard with three comprehensive pages
5. **Insights & Recommendations**: Delivered actionable insights for HR strategy

---

## 📖 Project Overview

This project involves:

1. **Executive Summary Analysis**: High-level KPIs including total employees, turnover rate, average tenure, salary analysis, and demographic breakdowns
2. **Department Analysis**: Deep-dive into attrition patterns across different departments and job roles
3. **Root Cause Analysis**: Identifying key drivers of employee turnover including overtime impact, commute distance, work-life balance, job satisfaction, and travel frequency
4. **Interactive Dashboard**: Three-page Power BI dashboard for stakeholder presentations

🎯 This repository is an excellent resource for professionals and students looking to showcase expertise in:

* HR Analytics & People Analytics
* SQL Data Analysis
* Power BI Dashboard Development
* Business Intelligence
* Data Visualization
* Statistical Analysis
* Data-Driven Decision Making

---

## 🛠️ Tools & Resources

Everything is Free!

* **[Dataset](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset):** IBM HR Analytics Employee Attrition dataset from Kaggle
* **[SQL](https://www.microsoft.com/en-us/sql-server/sql-server-downloads):** SQL Server / Azure Data Studio for data analysis
* **[Power BI Desktop](https://powerbi.microsoft.com/en-us/desktop/):** Free business intelligence tool for visualization
* **[Git Repository](https://github.com/):** Version control and project collaboration
* **[Azure Data Studio](https://azure.microsoft.com/en-us/products/data-studio/):** Cross-platform database tool (optional)

---

## 🚀 Project Objectives

### Business Problem

Employee turnover is costly for organizations, impacting productivity, morale, and the bottom line. The average cost of replacing an employee can range from 50% to 200% of their annual salary when considering recruitment, training, and lost productivity.

This project aims to:
1. **Understand** the current state of employee turnover across the organization
2. **Identify** key factors contributing to employee attrition
3. **Analyze** patterns across departments, job roles, and demographics
4. **Provide** data-driven insights to inform HR retention strategies

### Key Questions Answered

* What is the overall employee turnover rate?
* Which departments and job roles have the highest attrition?
* How does overtime impact employee turnover?
* What role does work-life balance play in attrition?
* Does commute distance affect employee retention?
* Are there salary-related patterns in turnover?
* How does job satisfaction correlate with attrition?
* What is the impact of business travel frequency on retention?

### Analysis Scope

* **Dataset**: IBM HR Analytics Employee Attrition dataset (1,470 employees)
* **Analysis Focus**: Three core areas (Executive Summary, Department Analysis, Root Cause)
* **Tools**: SQL for analysis, Power BI for visualization
* **Deliverable**: Interactive three-page dashboard with actionable insights

---

## 📊 Key Findings

### Executive Summary Highlights
* **Total Employees**: 1,470
* **Turnover Rate**: 16% overall attrition rate
* **Average Age**: [37] years
* **Total Salary Cost**: $6,503
* **Headcount**: 237 employees in analyzed group
   
### Department Analysis
* **Highest Attrition Departments**: Identified departments with elevated turnover rates
* **Job Role Patterns**: Specific roles showing higher vulnerability to attrition

### Root Cause Insights
* **Overtime Impact**: Employees working overtime show higher attrition rates
* **Commute Distance**: Employees with longer commutes more likely to leave
* **Work-Life Balance**: Strong correlation between work-life balance ratings and retention
* **Job Satisfaction**: Lower satisfaction scores directly linked to higher turnover
* **Travel Frequency**: Business travel frequency impacts employee retention

---

## 📂 Repository Structure

```
employee-turnover-analysis/
│
├── 3. Turnover/                        # Main project folder
│   ├── DATA/                           # Data files
│   │   ├── CHECKING FOR NULLS.sql      # SQL script for data quality checks
│   │   └── WA_Fn-UseC_-HR-Employee-Attrition.xlsx  # Source dataset
│   │
│   ├── POWER BI/                       # Power BI files
│   │   └── TURNOVER_ANALYSIS_DASHBOARD.pbix  # Main dashboard file
│   │
│   ├── Screenshots/                    # Dashboard screenshots
│   │   ├── Page 1. EXECUTIVE SUMMARY.png
│   │   ├── Page 2. DEPARTMENT ANALYSIS.png
│   │   └── Page 3. ROOT CAUSE.png
│   │
│   └── SQL/                            # SQL analysis scripts
│       ├── 1. Executive Summary.sql    # Executive-level metrics
│       ├── 2. Department Analysis.sql  # Department-specific analysis
│       └── 3. Root Cause Analysis.sql  # Turnover drivers analysis
│
├── docs/                               # Documentation
│   └── workflow_diagram.png            # Project workflow visualization
│
├── README.md                           # Project overview (this file)
└── LICENSE                             # License information
```

---

## 🚀 Getting Started

### Prerequisites
* SQL Server, Azure Data Studio, or any SQL-compatible database tool
* Power BI Desktop (free version)
* Basic understanding of SQL and data visualization concepts

### Installation & Usage

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/employee-turnover-analysis.git
   cd employee-turnover-analysis
   ```

2. **Access the dataset**
   - Dataset is located in `3. Turnover/DATA/`
   - Original source: [Kaggle - IBM HR Analytics](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)

3. **Run SQL Analysis**
   - Open your preferred SQL tool (Azure Data Studio, SQL Server Management Studio, etc.)
   - Load the dataset into your database
   - Execute SQL scripts in order:
     1. `CHECKING FOR NULLS.sql` - Verify data quality
     2. `1. Executive Summary.sql` - Generate high-level metrics
     3. `2. Department Analysis.sql` - Analyze department patterns
     4. `3. Root Cause Analysis.sql` - Identify turnover drivers

4. **View the Dashboard**
   - Open `POWER BI/TURNOVER_ANALYSIS_DASHBOARD.pbix` in Power BI Desktop
   - Explore three pages:
     - **Page 1**: Executive Summary - High-level KPIs and overview
     - **Page 2**: Department Analysis - Department and role-specific insights
     - **Page 3**: Root Cause - Key drivers of employee attrition

### Dashboard Preview

**Page 1: Executive Summary**
- Total employee count and turnover rate
- Attrition by department, age group, and salary band
- Workforce distribution and tenure analysis

**Page 2: Department Analysis**
- Attrition by job role
- Average salary by department
- Attrition by job level
- Department breakdown and headcount

**Page 3: Root Cause Analysis**
- Impact of overtime on attrition
- Attrition risk by commute distance
- Work-life balance correlation
- Job satisfaction analysis
- Travel frequency impact

---

## 💡 Business Insights & Recommendations

Based on the analysis, here are key recommendations for HR leadership:

1. **Address Overtime Culture**: Employees working overtime show significantly higher attrition - implement overtime monitoring and work-life balance initiatives

2. **Review Commute Policies**: Consider remote work options or flexible schedules for employees with longer commutes

3. **Focus on High-Risk Departments**: Target retention programs in departments with elevated attrition rates

4. **Improve Job Satisfaction**: Implement regular employee engagement surveys and act on feedback

5. **Work-Life Balance Programs**: Invest in programs that support better work-life balance, as this is a key retention driver

6. **Travel Policy Review**: Assess business travel requirements and their impact on employee satisfaction

---

## 📈 Skills Demonstrated

This project showcases the following technical and analytical skills:

**Technical Skills:**
- SQL query writing and data analysis
- Power BI dashboard development
- Data visualization and storytelling
- Data quality validation
- Database management

**Analytical Skills:**
- Business problem identification
- Root cause analysis
- Pattern recognition
- Statistical analysis
- Insight generation

**Business Skills:**
- HR analytics and people analytics
- Stakeholder communication
- Data-driven decision making
- Strategic recommendations

---

## 🎓 Learning Outcomes

Through this project, I developed expertise in:

1. Writing complex SQL queries for HR analytics
2. Designing executive-level dashboards in Power BI
3. Conducting root cause analysis for business problems
4. Translating data insights into actionable recommendations
5. Creating compelling data visualizations for non-technical stakeholders
6. Structuring analytical projects from data to insights

---

## 📝 Future Enhancements

Potential areas for project expansion:

- [ ] Add predictive modeling to identify at-risk employees
- [ ] Incorporate time-series analysis to track turnover trends
- [ ] Build automated refresh pipeline for real-time dashboard
- [ ] Add employee segmentation analysis
- [ ] Create drill-down capabilities for deeper analysis
- [ ] Develop retention cost calculator
- [ ] Add benchmark comparisons with industry standards

---

## ☕ Connect With Me

Let's stay in touch! Feel free to connect with me on the following platforms:
Email: williamfowler002@gmail.com
LinkedIn: https://www.linkedin.com/in/william-fowler-276718136/
GitHub: https://github.com/TheKingofLEGO

---

## 🛡️ License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and share this project with proper attribution.

---

## 🌟 About Me

Hi there! I'm **[William Fowler]**, a data analyst passionate about turning data into actionable business insights. I specialize in HR analytics, business intelligence, and data visualization.

This project represents my commitment to:
- **Data-driven decision making**: Using analytics to solve real business problems
- **Clear communication**: Translating complex data into understandable insights
- **Continuous learning**: Expanding my skills in SQL, Power BI, and analytics
- **Business impact**: Focusing on insights that drive tangible organizational value

I'm always eager to connect with fellow data enthusiasts, learn from the community, and contribute to meaningful projects!

---

## 🙏 Acknowledgments

* **Dataset**: IBM HR Analytics Employee Attrition dataset from [Kaggle](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)
* **Tools**: Microsoft for Power BI and SQL Server

---

## 📞 Questions or Feedback?

If you have questions about this project or would like to discuss potential opportunities, please don't hesitate to reach out through any of the platforms above. I'm always happy to discuss data analytics, share insights, or explore collaboration opportunities!

**⭐ If you found this project helpful, please consider giving it a star!**
