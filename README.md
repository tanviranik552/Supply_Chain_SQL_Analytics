# Supply_Chain_SQL_Analytics
Project Name: Supply Chain Delivery Performance & Supplier Analytics using SQL.

**Problem Statement:**
In e-commerce and logistics operations, companies handle thousands of orders across multiple suppliers, products, and delivery partners.
While large volumes of operational data are available, organisations often struggle with 
- Limited visibility into delivery performance and service-level failures.
- Inability to identify which suppliers are driving delays.
- Poor understanding of where delays occur in the order-to-delivery process.
- Reactive decision-making instead of proactive performance management
As a result, businesses face late deliveries and SLA breaches, customer dissatisfaction, higher logistics and expediting costs, ineffective supplier performance management.
The core business problem is the lack of a structured, data-driven way to monitor, diagnose, and improve delivery performance using existing operational data.

**Project Objectives:**
The project aimed to support logistics and supply chain decision-making by:
- Creating a single source of truth from fragmented operational datasets.
- Defining measurable KPIs to track delivery service levels.
- Identifying high-impact suppliers and process bottlenecks.
- Enabling fact-based operational and supplier improvement actions.

**Solution Approach & Methodology:**
-Consolidating Operational Data into a Relational Database:
Multiple raw datasets (orders, order items, suppliers, products, customers, payments) were integrated into a relational MySQL database.
Business value: Provides end-to-end visibility of the supply chain from order placement to final delivery.

- Measuring Delivery Service Levels:
SQL queries were developed to calculate on-time delivery rate, average delivery lead time, late delivery trends over time. 
Business value: Enables monitoring of logistics performance against service-level expectations.

- Identifying Supplier-Driven Delays:
Delivery performance was analysed at supplier level, highlighting suppliers with consistently high late-delivery rates, a small group of suppliers responsible for a disproportionate share of delays (Pareto 80/20 analysis). 
Business value:Supports targeted supplier management, corrective actions, or contract reviews.

- Detecting Operational Bottlenecks:
By analysing timestamps across the order lifecycle, the project identified stages where delays accumulate, product categories or sellers with longer fulfilment cycles. 
Business value: Helps operations teams prioritise process improvements in the most critical areas.

- Structuring SQL for Decision Support:
Queries were organised into reusable SQL scripts focused on service level performance, supplier analytics, bottleneck detection.
Business value: Creates a scalable analytics framework that can be reused for ongoing performance monitoring.

**What this Project Solved:**
This project transformed raw operational data into actionable supply chain insights, enabling:
- Clear measurement of delivery reliability.
- Data-driven identification of underperforming suppliers.
- Visibility into root causes of delivery delays.
- Improved alignment between logistics performance and business objectives.

**Business Impact:**
If implemented in a real organisation, this analysis could:
- Reduce late deliveries and SLA breaches.
- Improve customer satisfaction.
- Strengthen supplier performance management.
- Lower logistics and expediting costs.
- Enable proactive, KPI-driven decision-making.


