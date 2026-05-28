const regionData = [
  { label: 'North', value: 26700 },
  { label: 'South', value: 23985 },
  { label: 'East', value: 18550 },
  { label: 'West', value: 18330 }
];

const categoryData = [
  { label: 'Software', value: 46835 },
  { label: 'Services', value: 30480 },
  { label: 'Hardware', value: 11250 }
];

function renderBars(targetId, rows) {
  const target = document.getElementById(targetId);
  const max = Math.max(...rows.map((row) => row.value));

  target.innerHTML = rows
    .map((row) => {
      const width = Math.round((row.value / max) * 100);
      const formatted = `$${(row.value / 1000).toFixed(1)}K`;

      return `
        <div class="bar-row">
          <strong>${row.label}</strong>
          <div class="bar-track" aria-label="${row.label} revenue">
            <div class="bar-fill" style="width: ${width}%"></div>
          </div>
          <span class="bar-value">${formatted}</span>
        </div>
      `;
    })
    .join('');
}

renderBars('regionBars', regionData);
renderBars('categoryBars', categoryData);
