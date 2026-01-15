# Supply_Chain_SQL_Analytics
Project Name: Supply Chain Delivery Performance & Supplier Analytics.

Project Overview: 
This project focuses on analyzing delivery performance, supplier reliability, and operational bottlenecks within an e-commerce supply chain using MySQL. A multi-table relational dataset was used to simulate real-world logistics and operations challenges faced by supply chain teams. How structured SQL analytics can convert raw transactional data into actionable insights for service level improvement and supplier management has been demostrated. The project is designed to reflect real-world supply chain analytics, combining:
•	Relational database design
•	Advanced SQL querying
•	Supply chain KPIs
•	Six Sigma (DMAIC) thinking

Business Objectives: 
The analysis focuses on answering the following business questions:
•	How reliable is the current order fulfilment process?
•	What percentage of orders are delivered on time?
•	Which suppliers (sellers) contribute most to delivery delays?
•	Are delays concentrated among a small number of suppliers (Pareto effect)?
•	How significant are freight costs relative to product value?
•	Which product categories generate the highest revenue?

Dataset Description: 
Source: Olist Brazilian E-commerce Public Dataset (Kaggle)
Records: 100,000+ orders
Nature: Real transactional e-commerce data
The dataset consists of multiple CSV files which were modelled into a normalised relational database.
The database was designed using a star-like schema, separating fact and dimension tables.
Core Tables:
•	customers – customer location information
•	sellers – supplier (seller) location data
•	products – product and category details
•	orders – order timestamps and delivery dates
•	order items – line-level transaction data (fact table)
•	payments – payment methods and values
•	reviews – customer satisfaction scores
Primary and foreign keys were defined to ensure referential integrity.

Key Supply Chain KPIs:
The following KPIs were calculated using SQL:
Service Level KPIs
•	On-time delivery percentage
•	Average delivery lead time (days)
•	Late delivery rate
•	Monthly delivery performance trends

Supplier Performance KPIs:
•	Total orders per seller
•	Late delivery percentage per seller
•	Seller ranking by delay contribution
•	Pareto (80/20) analysis of delivery delays
Logistics & Cost KPIs
•	Freight cost as a percentage of product price
•	Revenue by product category

Analytical Approach:
Advanced SQL techniques were used throughout the project, including:
•	Multi-table joins (5+ tables)
•	Common Table Expressions (CTEs)
•	Window functions (RANK, cumulative SUM)
•	Conditional logic (CASE WHEN)
•	Date-based calculations
•	Aggregation and ranking logic
Bulk data loading and indexing were used to optimise performance when working with large datasets.

Key Insights: 
•	A significant proportion of delivery delays are caused by a small subset of suppliers, confirming a strong Pareto effect.
•	Delivery lead time varies significantly by seller and region.
•	Freight costs account for a higher percentage of product price in certain categories, indicating potential logistics inefficiencies.
•	Monthly trend analysis shows periods of increased delivery delays, suggesting seasonal or capacity-related constraints.

Six Sigma (DMAIC) Mapping:
This project aligns with Six Sigma Green Belt principles:
•	Define: Late deliveries impacting service level performance
•	Measure: Delivery lead times and on-time delivery rates
•	Analyse: Supplier-level and category-level delay contribution
•	Improve: Focus improvement efforts on top delay-causing suppliers
•	Control: Monitor on-time delivery KPIs and lead time trends

Business Recommendations:
•	Prioritise performance improvement initiatives with the top delay-contributing suppliers.
•	Introduce supplier-level delivery SLAs and monitoring dashboards.
•	Investigate logistics and freight cost optimisation for high-cost product categories.
•	Track service level KPIs monthly to ensure sustained performance improvements.

Tools & Technologies:
•	Database: MySQL (MySQL Workbench)
•	Language: SQL
•	Techniques: Relational modelling, window functions, KPI analysis
•	Methodology: Six Sigma (DMAIC)
