# 📘 Geeta Exams Analytics

This project analyzes performance and engagement in Bhagavad Gita exams, with the goal of tracking student progress over time. It simulates the kind of educational analytics needed by mission-driven organizations such as the PrashantAdvait Foundation (PAF), offering insights into how students interact with spiritual and educational content.

---

## 📊 Objectives

- Monitor student performance across Geeta-based assessments.
- Understand which exams are most widely attempted and their relative difficulty.
- Analyze improvements in student scores and engagement over time.

---

## ❓ Business Questions

- Which exams are attempted by the highest number of students?
- Are students showing improvement in performance over repeated attempts?
- How long does it take students to complete exams?
- What are the average scores, percentiles, and completion rates?

---

## 📦 Data Source

- Synthetic dataset generated manually to replicate realistic Gita exam data.
- Format: CSV files ingested into Amazon Redshift.

---

## 🏗️ Project Architecture

- **Data Warehouse**: Amazon Redshift  
- **Transformation Tool**: dbt (Data Build Tool)
- **Dashboarding Tool**: Tableau (see link below)

---

## 🧱 dbt Features Used

- ✅ Staging, Intermediate, and Marts layers
- ✅ Incremental models for `fact_exam_results` and `dim_exams`
- ✅ Snapshots to track slowly changing student data
- ✅ Custom tests and generic macros
- ✅ Schema documentation via `dbt docs`

---

## 📚 Documentation

**🔗 Project Docs:**  
[Students Learning Journey Documentation](https://ramnaresh-ahi.github.io/geeta_exams_analytics/)

---

## 🧩 Data Models

### 🧾 Fact Table
- `fact_exam_results`: Aggregated exam data per student per exam

### 🧾 Dimension Tables
- `dim_students`: Student-level attributes and snapshot tracking
- `dim_exams`: Exam metadata (duration, date, name)

---

## 📈 KPIs Tracked

- Total students
- Number of students per exam
- Percentile (rounded to 2 decimal places)
- Percentage score
- Completion time (in minutes)

---

## 📁 Folder Structure

```plaintext
geeta_exams_analytics/
├── models/
│   ├── staging/
│   ├── intermediate/
│   ├── marts/
├── snapshots/
├── macros/
├── tests/
├── seeds/
└── dbt_project.yml
```

---

## 📊 Dashboard

- **Tool**: Tableau  
- **Link**: [View Dashboard]([https://placeholder-link.com](https://github.com/ramnaresh-ahi/geeta_exams_analytics/blob/main/Images/geeta_exams_analytics_dashboard.png))

---

## 🚀 How to Run This Project

### Prerequisites

- dbt CLI installed
- Access to Redshift (and configured profile)
- Required data loaded into your `source` tables

### Step-by-step

```bash
# 1. Install dependencies
dbt deps

# 2. Run dbt models
dbt run

# 3. Run tests
dbt test

# 4. Run snapshots
dbt snapshot

# 5. Generate documentation
dbt docs generate
dbt docs serve
```

---

## 👤 Author

**Ramnaresh Ahirwar**  
Analytics Engineer | Data Enthusiast 
[GitHub](https://github.com/ramnaresh-ahi) • [LinkedIn](https://www.linkedin.com/in/ramnaresh-ahirwar-77abc/)

---

## 🏁 Future Improvements

- Add anomaly detection to spot unusually low/high scores  
- Automate scheduling with dbt Cloud or Airflow  
- Integrate live data pipelines and alerts

