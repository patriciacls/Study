# 🧾 Consolidador de Planilhas de Estoque

Este projeto em Python automatiza a consolidação de várias planilhas Excel contendo dados de estoque. Ele extrai informações específicas de cada arquivo e gera uma planilha unificada com todos os dados.

## 📂 Estrutura esperada dos arquivos

- Todos os arquivos `.xlsx` devem estar na pasta `relatoriosEstoque`.
- Os dados devem estar nas células `A29:F34`.
- A célula `D2` contém o nome da filial (usado como ID).

## 📋 Dados extraídos

As colunas da planilha unificada são:
- `Filial`, `Material`, `Est Ant`, `Entradas`, `Est. Fis`, `Saídas`, `Cons/m3`

## 🚀 Como usar

1. Instale as dependências:
```bash
pip install pandas openpyxl
```
2.  Execute o 
```bash consolida.py ```
3. será criado no diretório C > relatoriosEstoques > consolidacoes 
planilha_unificada_YYYY-MM-DD_HH-MM-SS.xlsx
