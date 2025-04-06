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
```bash 
consolida.py 
```
3. será criado no diretório C > relatoriosEstoques > consolidacoes 
A planilha "juntando" todos dados.

planilha_unificada_YYYY-MM-DD_HH-MM-SS.xlsx


OBSERVAÇÃO LEGAL! (interessante mesmo, nada a ver com coisas juridicas) 🐍
Comecei a usar READMEs nesse projeto, e descobri as estruturas que precisam constar nas documentações e tudo mais...
E cara tem uma função bem legal no python pra gerar os requirements,

A lib pipreqs gera automaticamente!!
então o que fiz:

1. Instalei primeiro, 
```bash
pip install pipreqs
```
2. Rodei fazendo um --encoding, pois tinha apresentado erro de conversão na primeira vez que rodei só "pipreqs ."
```bash
pipreqs . --encoding=utf-8
``` 