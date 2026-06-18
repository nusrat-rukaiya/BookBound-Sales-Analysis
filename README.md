# 📚 Online Bookstore Sales Dashboard

**Industry:** E-Commerce | **Category:** Finance & Sales Analytics  
**Tools Used:** SQL · Power BI · DAX  
**Project Type:** Portfolio Project

---

## 📊 Dashboard Preview

![Book Sales Dashboard](Online_Bookstore_Dashboard.PNG)

---

## 🧭 What Is This Project?

This project analyzes the sales performance of an online bookstore. The goal is simple: give the business owner and stakeholders a clear, honest picture of how the store is doing — how much money is coming in, who the best customers are, which books sell the most, and how sales move across the year.

The work was done in two stages:

1. **SQL** — to clean, filter, and extract the right data from the raw dataset.
2. **Power BI** — to turn that data into a visual report that anyone can read and understand, without needing a data background.

---

## ❓ What Questions Does This Dashboard Answer?

Here are the real questions stakeholders care about, and where the dashboard answers them:

| Question | Where to Look |
|---|---|
| How much money did we make in total? | KPI Card — Total Sales |
| How many orders were placed? | KPI Card — Total Orders |
| How many books were sold? | KPI Card — Units Sold |
| How many customers do we have? | KPI Card — Number of Customers |
| Which months bring in the most revenue? | Sales Trends Line Chart |
| Which types of books sell the most? | Sales Breakdown Donut Chart |
| Who are our biggest-spending customers right now? | Top Customers Table |
| Who were our biggest spenders last year? | Top Customers (Previous Year) Table |
| Which individual books generate the most revenue? | Top Books Table |

---

## 🔢 The 4 Key Numbers (KPIs)

These four numbers sit at the top of the report. They give you the health of the business at a glance.

**Total Sales — $75,628.66**
This is the total revenue the bookstore earned. In business terms, this is called GMV (Gross Merchandise Value) — the full dollar value of everything sold.

**Total Orders — 500**
The number of purchase transactions completed. This tells us how active the store is.

**Units Sold — 2,697**
The total number of books that left the shelf (physical or digital). Higher units with fewer orders means customers are buying multiple books per visit — a good sign.

**Number of Customers — 307**
The size of the customer base. Comparing this to total orders tells us that on average, each customer placed more than one order.

---

## 📈 Sales Trends Over Time (Line Chart)

This chart shows monthly revenue across the year. It helps answer: *"Are we growing, declining, or seasonal?"*

What to look for:
- **Peaks** show which months customers buy the most (e.g., holiday season, back-to-school).
- **Dips** help identify slow periods where promotions might help.
- The visible peak around **May** suggests a mid-year spike worth investigating — possibly a sale event or seasonal demand.

---

## 🍩 Sales Breakdown by Genre (Donut Chart)

This chart breaks down which types of books account for what share of total sales.

| Genre | Share |
|---|---|
| Romance | 17.3% |
| Fiction | 16.91% |
| Non-Fiction | 15.56% |
| Fantasy | 15.34% |
| Biography | 14.86% |
| Science Fiction | 10.41% |
| Mystery | 9.61% |

**What this tells us:** Romance and Fiction together make up about 34% of all sales. The store has a relatively balanced genre mix, which is healthy — it means the business is not dependent on one category. However, Mystery is the lowest performer and could be reviewed for pricing or promotions.

---

## 👥 Top Customers — Current Period

This table ranks customers by how much they spent in the selected year.

**Top spender:** Kim Turner at $1,398.90

These are the store's most valuable customers. A smart business move would be to make sure these customers feel appreciated — through loyalty rewards, early access to new titles, or personalized recommendations.

---

## 🕐 Top Customers — Previous Year

This table shows the top spenders from the same period last year. This is useful for comparison:

- Did the same customers stay loyal?
- Are there customers who spent a lot last year but disappeared this year?
- Are new high-value customers replacing old ones?

**Last year's top spender:** Anthony Young at $808.53 — a lower figure than this year's top customer, which suggests either customer upgrade or growing order values overall.

---

## 📚 Top Books by Revenue

This table shows which individual book titles drove the most units and revenue.

**Top earner:** *Realigned multi-tasking installation* — 28 units sold, $594.44 in revenue.

Notice that *Integrated secondary access* sold only 23 units but generated $1,104.69 — higher revenue per book. This suggests some books have higher price points and are worth highlighting separately from volume sellers.

---

## 🗓️ Year Filter (Slicer)

At the top right of the dashboard, you can switch between **2022, 2023, and 2024**. This lets you compare performance across years without building a separate report for each one.

---

## ⚙️ How Was This Built?

**Step 1 — SQL**
The raw dataset was queried using SQL to extract the exact records needed. This included filtering by date, grouping by customer, genre, and book title, and calculating totals.

**Step 2 — Power BI + DAX**
The cleaned data was loaded into Power BI. DAX (Data Analysis Expressions) formulas were used to calculate the KPIs, year-over-year comparisons, and ranking logic for the top customer and book tables.

---

## 💡 Key Takeaways for the Business Owner

- The store has generated over **$75K in revenue** from **307 customers** — that's roughly **$246 average revenue per customer**, which is strong.
- **Romance and Fiction** are the backbone of the business. Stocking more in these genres, or promoting them, is likely to keep driving sales.
- A small group of loyal, high-spending customers drives a disproportionate share of revenue. **Retaining them should be a top priority.**
- Some books generate far more revenue per unit than others — **price point matters as much as volume**.
- The mid-year spike in May is worth understanding. If it was caused by a sale or promotion, repeating it could be a reliable revenue lever.

---

*Built by a data analyst as a portfolio project. Data is from a simulated online bookstore dataset.*