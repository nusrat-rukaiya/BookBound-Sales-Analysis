<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Book Sales Dashboard — Online Bookstore Analytics</title>
  <style>
    :root {
      --bg: #f7f9fc;
      --card: #ffffff;
      --text: #1f2937;
      --muted: #6b7280;
      --border: #e5e7eb;
      --accent: #2563eb;
      --accent-soft: #eff6ff;
    }
    * { box-sizing: border-box; }
    body {
      margin: 0;
      font-family: Arial, Helvetica, sans-serif;
      background: var(--bg);
      color: var(--text);
      line-height: 1.6;
    }
    .container {
      max-width: 1000px;
      margin: 0 auto;
      padding: 32px 20px 60px;
    }
    .hero {
      background: linear-gradient(135deg, #1d4ed8, #2563eb);
      color: white;
      padding: 36px;
      border-radius: 18px;
      margin-bottom: 24px;
      box-shadow: 0 10px 30px rgba(37, 99, 235, 0.18);
    }
    .hero h1 {
      margin: 0 0 10px;
      font-size: 2rem;
      line-height: 1.2;
    }
    .hero p {
      margin: 6px 0;
      opacity: 0.95;
    }
    .badge-row {
      display: flex;
      flex-wrap: wrap;
      gap: 10px;
      margin-top: 16px;
    }
    .badge {
      background: rgba(255,255,255,0.16);
      border: 1px solid rgba(255,255,255,0.25);
      padding: 8px 12px;
      border-radius: 999px;
      font-size: 0.95rem;
    }
    section {
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: 16px;
      padding: 24px;
      margin-bottom: 18px;
      box-shadow: 0 4px 18px rgba(15, 23, 42, 0.04);
    }
    h2 {
      margin-top: 0;
      color: #111827;
      font-size: 1.4rem;
    }
    h3 {
      margin-bottom: 8px;
      color: #111827;
    }
    p { margin: 10px 0; }
    ul, ol { margin: 10px 0 10px 22px; }
    li { margin: 6px 0; }
    hr {
      border: 0;
      border-top: 1px solid var(--border);
      margin: 18px 0;
    }
    .table-wrap {
      overflow-x: auto;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 12px;
    }
    th, td {
      border: 1px solid var(--border);
      padding: 12px;
      text-align: left;
      vertical-align: top;
    }
    th {
      background: var(--accent-soft);
      color: #1e3a8a;
    }
    blockquote {
      margin: 16px 0;
      padding: 14px 18px;
      background: #f8fafc;
      border-left: 4px solid var(--accent);
      color: #334155;
    }
    .small {
      color: var(--muted);
      font-size: 0.95rem;
    }
    .grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
      gap: 14px;
      margin-top: 12px;
    }
    .card {
      background: #f9fbff;
      border: 1px solid var(--border);
      border-radius: 14px;
      padding: 16px;
    }
    .card strong {
      display: block;
      margin-bottom: 6px;
      color: #111827;
    }
    code {
      background: #eef2ff;
      padding: 2px 6px;
      border-radius: 6px;
    }
  </style>
</head>
<body>
  <div class="container">
    <header class="hero">
      <h1>📚 Book Sales Dashboard — Online Bookstore Analytics</h1>
      <p><strong>Industry:</strong> E-commerce | <strong>Category:</strong> Finance &amp; Sales Performance</p>
      <p><strong>Tools Used:</strong> SQL · Power BI · DAX</p>
      <div class="badge-row">
        <span class="badge">Revenue Analysis</span>
        <span class="badge">Customer Insights</span>
        <span class="badge">Book Performance</span>
        <span class="badge">Monthly Trends</span>
      </div>
    </header>

    <section>
      <h2>What This Project Is About</h2>
      <p>This dashboard gives the owner of an online bookstore a clear picture of how the business is performing — how much money is coming in, who the best customers are, which books sell the most, and how sales move month by month.</p>
      <p>The goal is simple: <strong>replace guesswork with facts.</strong></p>
    </section>

    <section>
      <h2>What Problem Does It Solve?</h2>
      <p>Without a dashboard, a business owner has to dig through raw spreadsheets to answer basic questions like:</p>
      <ul>
        <li>How much did we earn this year?</li>
        <li>Are sales growing or shrinking?</li>
        <li>Who are my most loyal customers?</li>
        <li>Which books are actually making money?</li>
      </ul>
      <p>This dashboard answers all of those questions in one screen — in seconds.</p>
    </section>

    <section>
      <h2>How the Data Was Processed</h2>
      <p>Before building the visuals, the data was cleaned and queried using <strong>SQL</strong>. This step made sure the numbers are accurate and consistent — no duplicates, no wrong totals, no missing values.</p>
      <p>After SQL confirmed the results, the clean data was loaded into <strong>Power BI</strong>, where DAX (a formula language inside Power BI) was used to calculate the key business metrics.</p>
    </section>

    <section>
      <h2>The 4 Key Numbers (KPIs) at the Top</h2>
      <p>These four numbers tell you the health of the business at a glance.</p>
      <div class="table-wrap">
        <table>
          <thead>
            <tr>
              <th>Metric</th>
              <th>What It Means</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>Total Sales</strong></td>
              <td>The total money earned from all book sales (also called GMV — Gross Merchandise Value). This is the revenue figure.</td>
            </tr>
            <tr>
              <td><strong>Total Orders</strong></td>
              <td>How many purchase transactions were completed. One customer can place multiple orders.</td>
            </tr>
            <tr>
              <td><strong>Units Sold</strong></td>
              <td>The total number of individual books that left the warehouse.</td>
            </tr>
            <tr>
              <td><strong>Number of Customers</strong></td>
              <td>How many unique people bought at least one book.</td>
            </tr>
          </tbody>
        </table>
      </div>
      <blockquote>
        <strong>Why these four?</strong> They cover the full picture: money earned, activity volume, product movement, and audience size. If any one of them drops, there's a story to investigate.
      </blockquote>
    </section>

    <section>
      <h2>The Charts Explained</h2>

      <h3>📈 Sales Trends Over Time (Line Chart)</h3>
      <p>Shows the total revenue earned <strong>each month</strong>. This helps the owner spot:</p>
      <ul>
        <li>Which months are the strongest (peak seasons)</li>
        <li>Whether the business is growing year over year</li>
        <li>Any unusual dips that need attention</li>
      </ul>
      <p>The <strong>year slicer at the top</strong> lets you switch between 2022, 2023, and 2024 to compare any year side by side.</p>

      <hr />

      <h3>🍩 Sales Breakdown by Genre (Donut Chart)</h3>
      <p>Shows what <strong>percentage of total sales</strong> each book genre contributes.</p>
      <p>Genres tracked: Romance, Mystery, Science Fiction, Non-Fiction, Fantasy, Biography, Fiction.</p>
      <p>This answers: <em>Are customers mostly buying Romance books, or is Fiction growing?</em> It helps with purchasing and inventory decisions — stock more of what sells.</p>
    </section>

    <section>
      <h2>The 3 Tables Explained</h2>

      <h3>🏆 Table 1 — Top Customers (Current Year)</h3>
      <p>Lists the customers who spent the <strong>most money this year</strong>, ranked from highest to lowest. Useful for loyalty programs, exclusive offers, or simply saying thank you to your best supporters.</p>

      <hr />

      <h3>🔁 Table 2 — Top Customers (Previous Year / Same Period Last Year)</h3>
      <p>Shows the same ranking but for the <strong>previous year</strong>. This lets you compare:</p>
      <ul>
        <li>Did the same customers stay loyal?</li>
        <li>Did high spenders from last year come back?</li>
        <li>Are there new faces in the top tier?</li>
      </ul>

      <hr />

      <h3>📖 Table 3 — Top Books</h3>
      <p>Lists the best-performing books with three columns:</p>
      <ul>
        <li><strong>Title</strong> — the name of the book</li>
        <li><strong>Units Sold</strong> — how many copies were purchased</li>
        <li><strong>Revenue (GMV)</strong> — how much money that title generated</li>
      </ul>
      <p>A book can sell many copies at a low price, or fewer copies at a high price. This table shows both dimensions so you know which titles are truly driving revenue.</p>
    </section>

    <section>
      <h2>How to Use This Dashboard</h2>
      <ol>
        <li>Pick a year using the buttons at the top right (2022, 2023, 2024).</li>
        <li>Check the 4 KPI cards — are sales up or down from what you expected?</li>
        <li>Look at the line chart — are there slow months you could run promotions in?</li>
        <li>Check the donut chart — are you stocking enough of the genres customers actually want?</li>
        <li>Review the customer tables — are your top spenders returning year after year?</li>
        <li>Review the top books table — should you order more copies of the highest earners?</li>
      </ol>
    </section>

    <section>
      <h2>Key Findings</h2>
      <ul>
        <li><strong>Total revenue</strong> stands at <strong>$75,628.66</strong> across <strong>500 orders</strong> from <strong>307 customers</strong>.</li>
        <li><strong>2,697 units</strong> were sold in total.</li>
        <li>Sales peaked mid-year (around May) and show a dip in summer before recovering.</li>
        <li><strong>Romance (17.3%)</strong> and <strong>Science Fiction (16.91%)</strong> are the top two genres by sales share.</li>
        <li>The top customer spent <strong>$1,398.90</strong> — nearly double the second-highest spender.</li>
        <li>The top book generated <strong>$1,104.69</strong> in revenue on just 23 units sold — a high-value title.</li>
      </ul>
    </section>

    <section>
      <h2>Files in This Project</h2>
      <div class="table-wrap">
        <table>
          <thead>
            <tr>
              <th>File</th>
              <th>Purpose</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><code>book_sales_queries.sql</code></td>
              <td>All SQL queries used to clean and validate the data</td>
            </tr>
            <tr>
              <td><code>BookSales_Dashboard.pbix</code></td>
              <td>The Power BI report file</td>
            </tr>
            <tr>
              <td><code>README.md</code></td>
              <td>This file — explains the project to anyone reading it</td>
            </tr>
          </tbody>
        </table>
      </div>
    </section>

    <section>
      <h2>About This Project</h2>
      <p>This is a portfolio project built to demonstrate end-to-end data analytics skills:</p>
      <ul>
        <li><strong>Data validation</strong> with SQL</li>
        <li><strong>Metric design</strong> with DAX in Power BI</li>
        <li><strong>Business storytelling</strong> through visual layout and KPI selection</li>
        <li><strong>Stakeholder communication</strong> through plain-language documentation</li>
      </ul>
      <p>The dataset simulates a real online bookstore operating in the e-commerce space. All customer names and book titles are fictional.</p>
    </section>

    <section>
      <p class="small"><em>Built by a data analyst passionate about turning raw data into decisions that actually move a business forward.</em></p>
    </section>
  </div>
</body>
</html>