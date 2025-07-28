# DataSpark: Illuminating Insights for Global Electronics

## 🧠 Objective
To perform a full-fledged Exploratory Data Analysis on a global electronics retailer’s data, providing business insights for enhanced decision-making.

## 📂 Project Structure
- **data/**: Raw datasets
- **scripts/**: ETL and data preprocessing
- **sql/**: Table creation and business queries
- **notebooks/**: Jupyter notebooks for analysis
- **visuals/**: Power BI screenshots
- **README.md**: Project overview and execution guide

## 🛠️ Tools & Technologies
- Python (Pandas, SQLite)
- SQL
- Power BI
- Git & GitHub

## 🚀 Execution
1. Place datasets in `data/` folder.
2. Run `etl.py` to preprocess and load data into SQLite DB.
3. Use `create_tables.sql` to initialize schema if needed.
4. Execute SQL queries from `business_queries.sql` for insights.
5. Load `global_electronics.db` into Power BI and visualize.

## 📈 Insights Explored
- Customer demographics and segments
- Top products and categories
- Monthly and regional sales performance
- Store-level performance analytics
- Profitability trends and currency impact

## ✅ Results
- Processed and structured over 10,000 rows of raw transactional data into a normalized database schema.
- Extracted high-impact insights such as:
  - Top 10 best-performing stores and their growth trends.
  - Product categories contributing the most to revenue and profit.
  - Monthly revenue comparisons to detect seasonal peaks and dips.
  - Regional analysis to determine strong and weak markets.
- Power BI dashboards provided interactive visualization of:
  - Sales, profit, and growth KPIs
  - Filters for region, category, and time period
  - Drill-down capability for product-level analytics

## 🔍 Conclusion
The **DataSpark** project demonstrates the value of a data-driven approach to retail analytics. By building a pipeline from raw CSVs to dashboard-ready insights, we empowered decision-makers to:

- Identify profitable segments and underperforming areas.
- Align inventory and marketing strategies with data-backed patterns.
- Enhance forecasting by observing monthly sales trends.
- Improve customer satisfaction by analyzing purchasing behavior.

This end-to-end workflow—from ETL to visualization—creates a repeatable model for insight generation across retail operations.

## 🚧 Future Improvements
- **Real-time Data Pipeline**: Integrate live data ingestion with APIs or streaming tools for real-time dashboards.
- **Predictive Modeling**: Use machine learning to forecast sales and customer lifetime value.
- **Advanced Segmentation**: Apply clustering (e.g., K-means) for customer grouping based on behavior.
- **Currency Normalization**: Enhance multi-country reporting by integrating exchange rates.
- **Cloud Integration**: Deploy the analytics stack using cloud services like AWS or Azure for scalability and collaboration.



