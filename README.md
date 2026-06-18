<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Book Sales Dashboard — README</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@tabler/icons-webfont@latest/dist/tabler-icons.min.css">
<style>
  *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
  :root {
    --bg-primary: #ffffff;
    --bg-secondary: #f7f7f8;
    --bg-table-header: #f0f0f2;
    --text-primary: #0d0d0d;
    --text-secondary: #444444;
    --text-tertiary: #999999;
    --border: rgba(0,0,0,0.09);
    --radius-md: 8px;
    --radius-lg: 12px;
    --blue: #185FA5;
    --teal: #0F6E56;
    --amber: #854F0B;
    --purple: #3C3489;
    --blue-bg: #E6F1FB;
    --teal-bg: #E1F5EE;
    --amber-bg: #FAEEDA;
    --purple-bg: #EEEDFE;
    --blue-text: #0C447C;
    --teal-text: #085041;
    --amber-text: #633806;
    --purple-text: #26215C;
  }
  @media (prefers-color-scheme: dark) {
    :root {
      --bg-primary: #161618;
      --bg-secondary: #1f1f22;
      --bg-table-header: #2a2a2e;
      --text-primary: #f0f0f0;
      --text-secondary: #aaaaaa;
      --text-tertiary: #606060;
      --border: rgba(255,255,255,0.08);
      --blue-bg: #042C53;
      --teal-bg: #04342C;
      --amber-bg: #412402;
      --purple-bg: #1e1a4a;
      --blue-text: #B5D4F4;
      --teal-text: #9FE1CB;
      --amber-text: #FAC775;
      --purple-text: #CECBF6;
    }
  }
  body {
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    background: var(--bg-primary);
    color: var(--text-primary);
    line-height: 1.7;
  }
  a { text-decoration: none; color: inherit; }
  .wrap { max-width: 860px; margin: 0 auto; padding: 3.5rem 1.5rem 4rem; }

  /* ── Typography ── */
  h1 { font-size: 26px; font-weight: 700; letter-spacing: -0.3px; margin-bottom: 8px; }
  h2 { font-size: 16px; font-weight: 700; letter-spacing: 0.4px; text-transform: uppercase;
       color: var(--text-tertiary); margin: 2.5rem 0 0.9rem; }
  h3 { font-size: 14px; font-weight: 600; margin: 0 0 0.4rem; color: var(--text-primary); }
  p  { font-size: 14.5px; color: var(--text-secondary); margin-bottom: 0.55rem; line-height: 1.75; }
  em { font-style: italic; }
  strong { color: var(--text-primary); font-weight: 600; }

  /* ── Header area ── */
  .header-row { display: flex; align-items: flex-start; gap: 14px; margin-bottom: 10px; }
  .header-icon { font-size: 36px; line-height: 1; flex-shrink: 0; margin-top: 2px; }
  .subtitle { display: flex; gap: 6px; flex-wrap: wrap; margin-bottom: 0; }
  .badge {
    display: inline-block; font-size: 11px; padding: 3px 9px;
    border-radius: 20px; font-weight: 600; letter-spacing: 0.2px;
  }
  .badge.blue   { background: var(--blue-bg);   color: var(--blue-text); }
  .badge.teal   { background: var(--teal-bg);   color: var(--teal-text); }
  .badge.purple { background: var(--purple-bg); color: var(--purple-text); }

  /* ── Section spacing ── */
  .section { margin-top: 0; }

  /* ── Callout (replaces blockquote) ── */
  .callout {
    display: flex; gap: 10px; align-items: flex-start;
    background: var(--blue-bg); border-radius: var(--radius-md);
    padding: 12px 14px; margin: 1rem 0;
  }
  .callout i { color: var(--blue-text); font-size: 18px; flex-shrink: 0; margin-top: 1px; }
  .callout p { font-size: 13.5px; margin: 0; color: var(--blue-text); }

  /* ── KPI grid ── */
  .kpi-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(170px, 1fr)); gap: 10px; margin: 0.9rem 0; }
  .kpi-card { background: var(--bg-secondary); border-radius: var(--radius-md); padding: 1rem 1rem 0.9rem; }
  .kpi-card .label { font-size: 11px; font-weight: 600; letter-spacing: 0.5px; text-transform: uppercase; color: var(--text-tertiary); margin-bottom: 5px; }
  .kpi-card .value { font-size: 19px; font-weight: 700; }
  .kpi-card .desc  { font-size: 12px; color: var(--text-secondary); margin-top: 5px; line-height: 1.5; }
  .kpi-card.blue   .value { color: var(--blue); }
  .kpi-card.teal   .value { color: var(--teal); }
  .kpi-card.amber  .value { color: var(--amber); }
  .kpi-card.purple .value { color: var(--purple); }

  /* ── Section card ── */
  .section-card {
    background: var(--bg-secondary);
    border-radius: var(--radius-lg);
    padding: 1.1rem 1.25rem;
    margin-bottom: 8px;
  }

  /* ── Steps ── */
  .steps { list-style: none; padding: 0; counter-reset: steps; }
  .steps li {
    counter-increment: steps;
    display: flex; gap: 12px; align-items: flex-start;
    margin-bottom: 8px; font-size: 14px;
    color: var(--text-secondary); line-height: 1.6;
  }
  .steps li::before {
    content: counter(steps);
    min-width: 24px; height: 24px;
    border-radius: 50%;
    background: var(--bg-secondary);
    display: flex; align-items: center; justify-content: center;
    font-size: 11px; font-weight: 700;
    color: var(--text-primary); flex-shrink: 0;
  }

  /* ── 2-col grid ── */
  .grid-2 { display: grid; grid-template-columns: 1fr 1fr; gap: 10px; }

  /* ── Findings grid ── */
  .findings-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 8px; margin: 0.75rem 0; }
  .finding {
    display: flex; gap: 10px; align-items: flex-start;
    background: var(--bg-secondary);
    border-radius: var(--radius-md);
    padding: 10px 12px;
  }
  .finding i { font-size: 17px; margin-top: 2px; flex-shrink: 0; color: var(--blue); }
  .finding p { font-size: 13px; margin: 0; color: var(--text-secondary); line-height: 1.5; }

  /* ── Files table ── */
  .files-table { width: 100%; border-collapse: collapse; font-size: 13.5px; border-radius: var(--radius-md); overflow: hidden; }
  .files-table thead tr { background: var(--bg-table-header); }
  .files-table th {
    text-align: left; font-weight: 700; font-size: 11px; letter-spacing: 0.5px;
    text-transform: uppercase; color: var(--text-tertiary); padding: 8px 12px;
  }
  .files-table td { padding: 9px 12px; color: var(--text-secondary); }
  .files-table td:first-child { font-family: 'Courier New', monospace; font-size: 12.5px; color: var(--text-primary); font-weight: 600; }
  .files-table tbody tr { background: var(--bg-primary); }
  .files-table tbody tr:nth-child(odd) { background: var(--bg-secondary); }

  /* ── Footer ── */
  .footer { font-size: 12.5px; color: var(--text-tertiary); text-align: center; padding-top: 0.5rem; margin-top: 3rem; font-style: italic; }

  @media (max-width: 600px) {
    .grid-2 { grid-template-columns: 1fr; }
    .kpi-grid { grid-template-columns: 1fr 1fr; }
    h1 { font-size: 21px; }
    h2 { font-size: 13px; }
  }
</style>
</head>
<body>
<div class="wrap">

  <!-- Header -->
  <div class="header-row">
    <div class="header-icon">📚</div>
    <div>
      <h1>Book Sales Dashboard — Online Bookstore Analytics</h1>
      <div class="subtitle" style="margin-top:8px">
        <span class="badge blue">E-commerce</span>
        <span class="badge teal">Finance &amp; Sales Performance</span>
        <span class="badge purple">SQL · Power BI · DAX</span>
      </div>
    </div>
  </div>

  <!-- About -->
  <h2>What this project is about</h2>
  <p>This dashboard gives the owner of an online bookstore a clear picture of how the business is performing — how much money is coming in, who the best customers are, which books sell the most, and how sales move month by month.</p>
  <div class="callout">
    <i class="ti ti-bulb"></i>
    <p>The goal is simple: <strong>replace guesswork with facts.</strong></p>
  </div>

  <!-- Problem -->
  <h2>What problem does it solve?</h2>
  <p>Without a dashboard, a business owner has to dig through raw spreadsheets to answer basic questions:</p>
  <div class="findings-grid" style="margin-top:0.75rem">
    <div class="finding"><i class="ti ti-currency-dollar"></i><p>How much did we <strong>earn this year?</strong></p></div>
    <div class="finding"><i class="ti ti-trending-up"></i><p>Are sales <strong>growing or shrinking?</strong></p></div>
    <div class="finding"><i class="ti ti-users"></i><p>Who are my <strong>most loyal customers?</strong></p></div>
    <div class="finding"><i class="ti ti-book"></i><p>Which books are actually <strong>making money?</strong></p></div>
  </div>
  <p style="margin-top:0.75rem">This dashboard answers all of those questions in one screen — in seconds.</p>

  <!-- Data processing -->
  <h2>How the data was processed</h2>
  <p>Before building the visuals, the data was cleaned and queried using <strong>SQL</strong>. This step made sure the numbers are accurate and consistent — no duplicates, no wrong totals, no missing values.</p>
  <p>After SQL confirmed the results, the clean data was loaded into <strong>Power BI</strong>, where DAX (a formula language inside Power BI) was used to calculate the key business metrics.</p>

  <!-- KPIs -->
  <h2>The 4 key numbers (KPIs)</h2>
  <p>These four numbers tell you the health of the business at a glance.</p>
  <div class="kpi-grid">
    <div class="kpi-card blue">
      <div class="label">Total Sales</div>
      <div class="value">GMV</div>
      <div class="desc">Total money earned from all book sales. This is the revenue figure.</div>
    </div>
    <div class="kpi-card teal">
      <div class="label">Total Orders</div>
      <div class="value">Transactions</div>
      <div class="desc">How many purchase transactions were completed. One customer can place multiple orders.</div>
    </div>
    <div class="kpi-card amber">
      <div class="label">Units Sold</div>
      <div class="value">Volume</div>
      <div class="desc">Total number of individual books that left the warehouse.</div>
    </div>
    <div class="kpi-card purple">
      <div class="label">Customers</div>
      <div class="value">Audience</div>
      <div class="desc">How many unique people bought at least one book.</div>
    </div>
  </div>
  <div class="callout" style="margin-top:0.9rem">
    <i class="ti ti-info-circle"></i>
    <p>These four cover the full picture: money earned, activity volume, product movement, and audience size. If any one drops, there's a story to investigate.</p>
  </div>

  <!-- Charts -->
  <h2>The charts explained</h2>
  <div class="grid-2">
    <div class="section-card">
      <h3><i class="ti ti-chart-line" style="font-size:15px;margin-right:6px;vertical-align:-2px;color:var(--blue)"></i>Sales trends over time</h3>
      <p>Shows total revenue earned each month. Helps spot the strongest months, year-over-year growth, and any dips that need attention.</p>
      <p style="font-size:12.5px;margin-top:6px">The <strong>year slicer</strong> lets you switch between 2022, 2023, and 2024 to compare any year side by side.</p>
    </div>
    <div class="section-card">
      <h3><i class="ti ti-chart-donut" style="font-size:15px;margin-right:6px;vertical-align:-2px;color:var(--purple)"></i>Sales breakdown by genre</h3>
      <p>Shows what percentage each genre contributes — Romance, Mystery, Sci-Fi, Non-Fiction, Fantasy, Biography, and Fiction.</p>
      <p style="font-size:12.5px;margin-top:6px">Useful for stocking and purchasing decisions: <em>are customers mostly buying Romance, or is Fiction growing?</em></p>
    </div>
  </div>

  <!-- Tables -->
  <h2>The 3 tables explained</h2>
  <div class="section-card">
    <h3><i class="ti ti-trophy" style="font-size:15px;margin-right:6px;vertical-align:-2px;color:#854F0B"></i>Table 1 — Top customers (current year)</h3>
    <p>Lists the customers who spent the most money this year, ranked highest to lowest. Useful for loyalty programs, exclusive offers, or simply acknowledging your best supporters.</p>
  </div>
  <div class="section-card">
    <h3><i class="ti ti-refresh" style="font-size:15px;margin-right:6px;vertical-align:-2px;color:#185FA5"></i>Table 2 — Top customers (previous year)</h3>
    <p>The same ranking for the prior year. Compare: Did the same customers stay loyal? Did high spenders come back? Are there new faces in the top tier?</p>
  </div>
  <div class="section-card">
    <h3><i class="ti ti-book-2" style="font-size:15px;margin-right:6px;vertical-align:-2px;color:#0F6E56"></i>Table 3 — Top books</h3>
    <p>Best-performing books with three columns: <strong>Title</strong>, <strong>Units Sold</strong>, and <strong>Revenue (GMV)</strong>. Shows both volume and value so you know which titles are truly driving revenue.</p>
  </div>

  <!-- How to use -->
  <h2>How to use this dashboard</h2>
  <ol class="steps">
    <li>Pick a year using the buttons at the top right (2022, 2023, 2024)</li>
    <li>Check the 4 KPI cards — are sales up or down from what you expected?</li>
    <li>Look at the line chart — are there slow months you could run promotions in?</li>
    <li>Check the donut chart — are you stocking enough of the genres customers actually want?</li>
    <li>Review the customer tables — are your top spenders returning year after year?</li>
    <li>Review the top books table — should you order more copies of the highest earners?</li>
  </ol>

  <!-- Key findings -->
  <h2>Key findings</h2>
  <div class="findings-grid">
    <div class="finding"><i class="ti ti-currency-dollar"></i><p><strong>$75,628.66</strong> total revenue across <strong>500 orders</strong> from <strong>307 customers</strong></p></div>
    <div class="finding"><i class="ti ti-package"></i><p><strong>2,697 units</strong> sold in total across all titles</p></div>
    <div class="finding"><i class="ti ti-trending-up"></i><p>Sales peaked around <strong>May</strong>, dipped in summer, then recovered</p></div>
    <div class="finding"><i class="ti ti-chart-donut"></i><p><strong>Romance (17.3%)</strong> and <strong>Science Fiction (16.91%)</strong> are the top two genres</p></div>
    <div class="finding"><i class="ti ti-crown"></i><p>Top customer spent <strong>$1,398.90</strong> — nearly double the second-highest spender</p></div>
    <div class="finding"><i class="ti ti-star"></i><p>Top book generated <strong>$1,104.69</strong> on just 23 units — a high-value title</p></div>
  </div>

  <!-- Files -->
  <h2>Files in this project</h2>
  <table class="files-table">
    <thead>
      <tr><th>File</th><th>Purpose</th></tr>
    </thead>
    <tbody>
      <tr><td>book_sales_queries.sql</td><td>All SQL queries used to clean and validate the data</td></tr>
      <tr><td>BookSales_Dashboard.pbix</td><td>The Power BI report file</td></tr>
      <tr><td>README.md</td><td>This file — explains the project to anyone reading it</td></tr>
    </tbody>
  </table>

  <!-- About -->
  <h2>About this project</h2>
  <p>A portfolio project built to demonstrate end-to-end data analytics skills:</p>
  <div class="findings-grid">
    <div class="finding"><i class="ti ti-database"></i><p><strong>Data validation</strong> with SQL</p></div>
    <div class="finding"><i class="ti ti-calculator"></i><p><strong>Metric design</strong> with DAX in Power BI</p></div>
    <div class="finding"><i class="ti ti-presentation-analytics"></i><p><strong>Business storytelling</strong> through visual layout and KPI selection</p></div>
    <div class="finding"><i class="ti ti-message-circle"></i><p><strong>Stakeholder communication</strong> through plain-language documentation</p></div>
  </div>
  <p style="margin-top:0.75rem; font-size:12.5px; color:var(--text-tertiary)">The dataset simulates a real online bookstore. All customer names and book titles are fictional.</p>

  <p class="footer">Built by a data analyst passionate about turning raw data into decisions that actually move a business forward.</p>

</div>
</body>
</html>