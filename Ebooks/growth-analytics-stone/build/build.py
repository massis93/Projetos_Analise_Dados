import re, sys, markdown, html
src = open(sys.argv[1], encoding='utf-8').read()

# remove title/byline (go to cover)
src = re.sub(r'^# .*\n\nOct 25, 2026 · @Mateus Silva\n', '', src)

FORMULAS = [
 '<div class="formula"><span class="v">CAC</span> = <span class="frac"><span>Investimento</span><span>Clientes ativos</span></span> = <span class="frac"><span>Investimento</span><span>Leads × Tx<sub>cadastro</sub> × Tx<sub>aprovação</sub> × Tx<sub>ativação</sub></span></span></div>',
 '<div class="formula"><span class="v">LTV</span> = <span class="frac"><span>TPV<sub>mensal</sub> × Take rate</span><span>Churn<sub>mensal</sub></span></span></div>',
 '<div class="formula"><span class="v">n</span> ≈ <span class="frac"><span>16 × p(1 − p)</span><span>Δ<sup>2</sup></span></span></div>',
]
it = iter(FORMULAS)
src = re.sub(r'```latex\n.*?```', lambda m: next(it), src, flags=re.S)
src = src.replace('- [ ] ', '- ☐CHK ')

body = markdown.markdown(src, extensions=['tables','fenced_code','codehilite','sane_lists'],
    extension_configs={'codehilite': {'guess_lang': False, 'css_class': 'hl'}})
body = body.replace('☐CHK ', '<span class="chk"></span>')
body = re.sub(r'<ul>(\s*<li><span class="chk">)', r'<ul class="checklist">\1', body)

# chapters
toc = []
def chap(m):
    num, title = m.group(1), m.group(2)
    toc.append((num, title))
    return (f'</section><section class="chapter" id="cap{num}"><div class="chap-head">'
            f'<div class="chap-num">Capítulo {int(num):02d}</div><h2>{title}</h2></div>')
body = re.sub(r'<h2>(\d+)\. (.*?)</h2>', chap, body)
body = body.replace('</section>', '', 1) + '</section>'
# tag "Nota de sênior" paragraphs
body = re.sub(r'<p>Nota de sênior: (.*?)</p>', r'<aside class="note"><b>Nota de sênior</b>\1</aside>', body, flags=re.S)
body = re.sub(r'<p>Frase pronta: (.*?)</p>', r'<aside class="quote"><b>Frase pronta</b>\1</aside>', body, flags=re.S)

toc_html = ''.join(f'<li><a href="#cap{n}"><span class="tn">{int(n):02d}</span><span class="tt">{t}</span></a></li>' for n,t in toc)

from pygments.formatters import HtmlFormatter
pyg = HtmlFormatter(style='friendly').get_style_defs('.hl')

css = open('style.css', encoding='utf-8').read()
out = f'''<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><title>Guia Growth Analytics Sênior</title>
<style>{pyg}{css}</style></head><body>
<section class="cover">
  <div class="cover-top">EBOOK · PREPARAÇÃO PARA ENTREVISTA</div>
  <div class="cover-mid">
    <div class="kicker">Growth Analytics Sênior</div>
    <h1>Do funil ao case ao vivo</h1>
    <p class="sub">SQL, métricas de aquisição, testes A/B, atribuição e o roteiro para chegar agindo como sênior na Stone.</p>
    <div class="funnel"><span style="width:100%">Clique</span><span style="width:84%">Lead</span><span style="width:68%">Cadastro</span><span style="width:52%">Aprovação</span><span class="hot" style="width:36%">Ativação</span></div>
  </div>
  <div class="cover-bot"><div><b>Mateus Silva</b><br>Outubro de 2026</div><div class="stats"><div><b>16</b>capítulos</div><div><b>20</b>exercícios SQL</div><div><b>8</b>cases</div></div></div>
</section>
<section class="toc"><div class="chap-num">Sumário</div><h2>O que tem aqui</h2><ol>{toc_html}</ol></section>
{body}
<section class="back"><p>“Na dúvida entre parecer esperto e ser claro, seja claro.”</p><span>Bons estudos — e boa entrevista.</span></section>
</body></html>'''
open('ebook.html','w',encoding='utf-8').write(out)
print(len(toc), 'capítulos')
