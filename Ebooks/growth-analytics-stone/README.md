# Ebook: Guia Growth Analytics Sênior (Stone)

- `guia-growth-analytics-stone.pdf`: ebook pronto (A4, 33 páginas).
- `guia-growth-analytics-stone.md`: texto-fonte.
- `build/`: scripts para regerar o PDF.

Para regerar (precisa de `pip install markdown pygments` e Playwright):

```bash
cd build
python3 build.py ../guia-growth-analytics-stone.md
node render.js "$PWD/ebook.html" "$PWD/../guia-growth-analytics-stone.pdf"
```
