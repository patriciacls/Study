# 📈 Coleta e Visualização de Indicadores Econômicos - BCB

<sub>📊 Retrieve and visualize economic indicators from the Central Bank of Brazil (BCB/SGS API)</sub>

Este notebook automatiza a **coleta de dados econômicos** como **SELIC, Dólar e IPCA**, por meio da [API do SGS/BCB](https://dadosabertos.bcb.gov.br/dataset/series-temporais), e gera uma **visualização interativa** com o Plotly.

---

## 🚀 Funcionalidades

- Consulta automática de séries temporais via API do Banco Central
- Limpeza e formatação dos dados com `pandas`
- Visualização interativa com `plotly`

---

## 🔧 Função principal

```python
def buscar_serie_bcb(codigo, nome_coluna, dias_maximos=365*10):
```

<sub>❤️ Feito com carinho para estudos de dados econômicos e automações em Python por Patricia Correia 👩‍💻 </sub>