

<style>
  *{box-sizing:border-box;margin:0;padding:0}
  :root{
    --navy:#0F172A;--navy2:#1E293B;--navy3:#334155;
    --blue:#2563EB;--blue2:#3B82F6;--blue3:#BFDBFE;
    --gold:#F59E0B;--gold2:#FDE68A;
    --green:#16A34A;--green2:#BBF7D0;
    --text:#F8FAFC;--muted:#94A3B8;--border:#334155;
  }
  body{background:transparent}
  .readme{font-family:var(--font-sans,"Anthropic Sans",sans-serif);color:var(--text);background:var(--navy);border-radius:16px;overflow:hidden;width:100%}
  
  /* BANNER */
  .banner{background:linear-gradient(135deg,#0F172A 0%,#1E3A5F 50%,#0F172A 100%);padding:48px 40px 40px;text-align:center;border-bottom:1px solid var(--border);position:relative;overflow:hidden}
  .banner::before{content:'';position:absolute;inset:0;background:radial-gradient(ellipse 80% 60% at 50% 50%,rgba(37,99,235,.18) 0%,transparent 70%)}
  .banner-kicker{font-size:11px;font-weight:500;letter-spacing:.12em;text-transform:uppercase;color:var(--blue2);margin-bottom:14px}
  .banner-title{font-size:26px;font-weight:500;color:#F8FAFC;margin-bottom:10px;line-height:1.25}
  .banner-sub{font-size:14px;color:var(--muted);max-width:520px;margin:0 auto 24px;line-height:1.6}
  .badge-row{display:flex;flex-wrap:wrap;gap:8px;justify-content:center;margin-bottom:24px}
  .badge{padding:5px 12px;border-radius:6px;font-size:11px;font-weight:500;letter-spacing:.06em;text-transform:uppercase}
  .b-navy{background:#1E293B;color:#93C5FD;border:0.5px solid #2563EB44}
  .b-blue{background:#1D3461;color:#93C5FD;border:0.5px solid #3B82F6}
  .b-gold{background:#292110;color:#FDE68A;border:0.5px solid #F59E0B66}
  .b-green{background:#052e16;color:#86EFAC;border:0.5px solid #16A34A66}
  .links{display:flex;gap:20px;justify-content:center;flex-wrap:wrap}
  .links a{font-size:12px;color:var(--blue2);text-decoration:none;border-bottom:1px solid #2563EB55;padding-bottom:1px}

  /* DIVIDER */
  .divider{height:1px;background:var(--border);margin:0}
  
  /* SECTION */
  .section{padding:32px 36px}
  .section-title{font-size:13px;font-weight:500;letter-spacing:.1em;text-transform:uppercase;color:var(--gold);margin-bottom:20px;display:flex;align-items:center;gap:8px}
  .section-title::after{content:'';flex:1;height:0.5px;background:var(--border)}

  /* KPI STRIP */
  .kpi-strip{display:grid;grid-template-columns:repeat(auto-fit,minmax(120px,1fr));gap:12px;margin-bottom:32px}
  .kpi-card{background:var(--navy2);border:0.5px solid var(--border);border-radius:10px;padding:14px 16px}
  .kpi-label{font-size:11px;color:var(--muted);margin-bottom:6px;text-transform:uppercase;letter-spacing:.06em}
  .kpi-value{font-size:22px;font-weight:500;color:#F8FAFC}
  .kpi-value.gold{color:var(--gold)}
  .kpi-delta{font-size:11px;color:#4ADE80;margin-top:4px}

  /* TABLE */
  .bi-table{width:100%;border-collapse:collapse;font-size:13px}
  .bi-table th{text-align:left;padding:8px 12px;font-weight:500;font-size:11px;text-transform:uppercase;letter-spacing:.07em;color:var(--muted);border-bottom:1px solid var(--border)}
  .bi-table td{padding:10px 12px;border-bottom:0.5px solid #1E293B;vertical-align:top;line-height:1.5}
  .bi-table td:first-child{color:#CBD5E1;font-weight:500}
  .bi-table td:last-child{color:var(--muted)}
  .bi-table tr:last-child td{border-bottom:none}

  /* ARCH GRID */
  .arch{background:var(--navy2);border:0.5px solid var(--border);border-radius:10px;padding:18px 20px;font-family:var(--font-mono,'Courier New',monospace);font-size:12px;color:#93C5FD;line-height:1.8}
  .arch-dir{color:#64748B}
  .arch-file{color:#BAE6FD}
  .arch-comment{color:#475569}
  .arch-hl{color:var(--gold)}

  /* BARS */
  .bar-list{display:flex;flex-direction:column;gap:10px}
  .bar-row{display:flex;align-items:center;gap:12px;font-size:12px}
  .bar-label{width:100px;color:#CBD5E1;text-align:right;flex-shrink:0}
  .bar-track{flex:1;background:#1E293B;border-radius:4px;height:8px;overflow:hidden}
  .bar-fill{height:100%;border-radius:4px;transition:width .4s}
  .bar-val{width:40px;color:var(--muted);font-size:11px}

  /* SKILLS */
  .skill-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(160px,1fr));gap:12px}
  .skill-card{background:var(--navy2);border:0.5px solid var(--border);border-radius:10px;padding:14px 16px}
  .skill-icon{font-size:18px;margin-bottom:8px;color:var(--blue2)}
  .skill-name{font-size:13px;font-weight:500;color:#F8FAFC;margin-bottom:4px}
  .skill-desc{font-size:11px;color:var(--muted);line-height:1.5}

  /* CREATOR */
  .creator{background:linear-gradient(135deg,#1D3461,#0F172A 60%);border-top:1px solid var(--border);padding:32px 36px;display:flex;flex-wrap:wrap;gap:24px;align-items:flex-start}
  .creator-info{flex:1;min-width:200px}
  .creator-name{font-size:18px;font-weight:500;margin-bottom:4px}
  .creator-brand{font-size:13px;color:var(--blue2);margin-bottom:10px}
  .creator-bio{font-size:13px;color:var(--muted);line-height:1.6}
  .creator-links{display:flex;flex-wrap:wrap;gap:8px;margin-top:14px}
  .creator-link{font-size:12px;padding:5px 12px;border-radius:6px;border:0.5px solid var(--border);color:var(--blue2);text-decoration:none;cursor:pointer}
  .theme-pills{display:flex;flex-wrap:wrap;gap:6px;margin-top:10px}
  .pill{font-size:11px;padding:3px 10px;border-radius:20px;background:#0F172A;border:0.5px solid var(--border);color:var(--muted)}
  .pill.hl{border-color:#F59E0B55;color:var(--gold);background:#1a1408}
</style>

<div class="readme">
  <!-- BANNER -->
  <div class="banner">
    <div class="banner-kicker">Executive BI Case Study · FullStackWithAI</div>
    <div class="banner-title">Sales Performance BI Dashboard</div>
    <div class="banner-sub">Revenue intelligence, regional growth, product-category analytics, customer segmentation, and decision-ready sales insights — built as a full BI product experience.</div>
    <div class="badge-row">
      <span class="badge b-navy">Executive BI · Revenue Intelligence</span>
      <span class="badge b-blue">SQL · Performance Analysis</span>
      <span class="badge b-gold">Dashboard · HTML CSS JS</span>
      <span class="badge b-green">Data to Decisions</span>
    </div>
    <div class="links">
      <a href="https://www.designhubmk.com">www.designhubmk.com</a>
      <a href="mailto:arsim@designhubmk.com">arsim@designhubmk.com</a>
      <a href="https://github.com/fullstackwithai">GitHub: fullstackwithai</a>
    </div>
  </div>

  <!-- KPI STRIP -->
  <div class="section">
    <div class="section-title">KPI layer</div>
    <div class="kpi-strip">
      <div class="kpi-card"><div class="kpi-label">Total revenue</div><div class="kpi-value gold">$2.4M</div><div class="kpi-delta">↑ 12% vs prior period</div></div>
      <div class="kpi-card"><div class="kpi-label">Gross profit</div><div class="kpi-value">$890K</div><div class="kpi-delta">↑ 9% margin</div></div>
      <div class="kpi-card"><div class="kpi-label">Avg order value</div><div class="kpi-value">$1,240</div><div class="kpi-delta">↑ $85 per order</div></div>
      <div class="kpi-card"><div class="kpi-label">Top region</div><div class="kpi-value">West</div><div class="kpi-delta">38% of revenue</div></div>
      <div class="kpi-card"><div class="kpi-label">Top category</div><div class="kpi-value">Software</div><div class="kpi-delta">44% of mix</div></div>
    </div>

    <!-- REGIONAL BARS -->
    <div class="section-title">Revenue by region</div>
    <div class="bar-list">
      <div class="bar-row"><div class="bar-label">West</div><div class="bar-track"><div class="bar-fill" style="width:78%;background:#2563EB"></div></div><div class="bar-val">$912K</div></div>
      <div class="bar-row"><div class="bar-label">North East</div><div class="bar-track"><div class="bar-fill" style="width:60%;background:#3B82F6"></div></div><div class="bar-val">$705K</div></div>
      <div class="bar-row"><div class="bar-label">South</div><div class="bar-track"><div class="bar-fill" style="width:44%;background:#60A5FA"></div></div><div class="bar-val">$516K</div></div>
      <div class="bar-row"><div class="bar-label">Midwest</div><div class="bar-track"><div class="bar-fill" style="width:30%;background:#93C5FD"></div></div><div class="bar-val">$267K</div></div>
    </div>
  </div>

  <div class="divider"></div>

  <!-- BUSINESS QUESTIONS TABLE -->
  <div class="section">
    <div class="section-title">Business questions behind the dashboard</div>
    <table class="bi-table">
      <thead><tr><th>Executive question</th><th>Why it matters</th></tr></thead>
      <tbody>
        <tr><td>Which regions generate the most revenue?</td><td>Supports market prioritization and regional investment decisions</td></tr>
        <tr><td>Which product categories are strongest?</td><td>Identifies what deserves more sales and marketing attention</td></tr>
        <tr><td>Which customer segments are most valuable?</td><td>Improves targeting, account strategy, and customer prioritization</td></tr>
        <tr><td>Which channels perform best?</td><td>Guides direct, partner, and online sales decisions</td></tr>
        <tr><td>What trends deserve executive attention?</td><td>Converts raw data into leadership-ready insight</td></tr>
      </tbody>
    </table>
  </div>

  <div class="divider"></div>

  <!-- SKILL CARDS -->
  <div class="section">
    <div class="section-title">What this project demonstrates</div>
    <div class="skill-grid">
      <div class="skill-card"><div class="skill-icon"><i class="ti ti-database" aria-hidden="true"></i></div><div class="skill-name">SQL Analysis</div><div class="skill-desc">Revenue, region, category, customer segment, and channel queries</div></div>
      <div class="skill-card"><div class="skill-icon"><i class="ti ti-chart-bar" aria-hidden="true"></i></div><div class="skill-name">BI Thinking</div><div class="skill-desc">Executive questions, KPI design, and business recommendations</div></div>
      <div class="skill-card"><div class="skill-icon"><i class="ti ti-layout-dashboard" aria-hidden="true"></i></div><div class="skill-name">Dashboard design</div><div class="skill-desc">Clean KPI cards, comparison bars, and insight-first presentation</div></div>
      <div class="skill-card"><div class="skill-icon"><i class="ti ti-file-analytics" aria-hidden="true"></i></div><div class="skill-name">Data storytelling</div><div class="skill-desc">Clear connection between numbers, business meaning, and action</div></div>
      <div class="skill-card"><div class="skill-icon"><i class="ti ti-brand-html5" aria-hidden="true"></i></div><div class="skill-name">Frontend execution</div><div class="skill-desc">Lightweight HTML/CSS/JS dashboard preview for visual presentation</div></div>
      <div class="skill-card"><div class="skill-icon"><i class="ti ti-briefcase" aria-hidden="true"></i></div><div class="skill-name">Portfolio strategy</div><div class="skill-desc">A theme-matched project page that speaks to recruiters and decision-makers</div></div>
    </div>
  </div>

  <div class="divider"></div>

  <!-- PROJECT ARCH -->
  <div class="section">
    <div class="section-title">Project architecture</div>
    <div class="arch">
      <span class="arch-hl">sales-performance-bi-dashboard/</span><br>
      <span class="arch-dir">├── </span><span class="arch-file">assets/</span><span class="arch-comment">   # readme-banner.svg</span><br>
      <span class="arch-dir">├── </span><span class="arch-file">data/</span><span class="arch-comment">     # sample-sales-data.csv</span><br>
      <span class="arch-dir">├── </span><span class="arch-hl">sql/</span><span class="arch-comment">      # sales-analysis.sql — core queries</span><br>
      <span class="arch-dir">├── </span><span class="arch-hl">dashboard/</span><span class="arch-comment"> # index.html · styles.css · app.js</span><br>
      <span class="arch-dir">├── </span><span class="arch-file">insights/</span><span class="arch-comment"> # executive-summary.md</span><br>
      <span class="arch-dir">└── </span><span class="arch-file">README.md</span>
    </div>
    <div style="margin-top:14px;font-size:12px;color:var(--muted)">Run locally: <code style="font-family:var(--font-mono);color:#93C5FD;background:#1E293B;padding:2px 6px;border-radius:4px">cd dashboard &amp;&amp; python -m http.server 5173</code> then open <code style="font-family:var(--font-mono);color:#93C5FD;background:#1E293B;padding:2px 6px;border-radius:4px">http://localhost:5173</code></div>
  </div>

  <!-- CREATOR -->
  <div class="creator">
    <div class="creator-info">
      <div class="creator-name">Arsim Shefkiu</div>
      <div class="creator-brand">FullStackWithAI</div>
      <div class="creator-bio">Building polished dashboards and analytics-driven products that turn raw business data into clear, decision-ready insight. This project connects business questions, structured data, SQL analysis, dashboard presentation, and stakeholder-ready recommendations.</div>
      <div class="creator-links">
        <a class="creator-link" href="https://www.designhubmk.com">designhubmk.com</a>
        <a class="creator-link" href="mailto:arsim@designhubmk.com">arsim@designhubmk.com</a>
        <a class="creator-link" href="https://github.com/fullstackwithai">GitHub</a>
      </div>
    </div>
    <div>
      <div style="font-size:11px;color:var(--muted);text-transform:uppercase;letter-spacing:.08em;margin-bottom:8px">Theme</div>
      <div class="theme-pills">
        <span class="pill hl">Executive BI</span>
        <span class="pill hl">Revenue intelligence</span>
        <span class="pill">SQL analysis</span>
        <span class="pill">KPI dashboards</span>
        <span class="pill">Business storytelling</span>
        <span class="pill">Data to decisions</span>
      </div>
    </div>
  </div>
</div>
