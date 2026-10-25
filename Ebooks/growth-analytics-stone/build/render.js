const { chromium } = require('playwright');
(async () => {
  const b = await chromium.launch(); const p = await b.newPage();
  await p.goto('file://' + process.argv[2], { waitUntil: 'load' });
  await p.pdf({ path: process.argv[3], format: 'A4', preferCSSPageSize: true, printBackground: true,
    displayHeaderFooter: true, headerTemplate: '<span></span>',
    footerTemplate: '<div style="width:100%;font-family:Inter,sans-serif;font-size:7pt;color:#8a9a93;padding:0 18mm;display:flex;justify-content:space-between"><span>Guia Growth Analytics Sênior</span><span class="pageNumber"></span></div>' });
  await b.close();
})();
