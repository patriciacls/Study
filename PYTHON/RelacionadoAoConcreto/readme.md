# 🧱 Concrete Compressive Strength - Predição da Resistência do Concreto

Projeto de Data Science voltado à análise e predição da **resistência à compressão do concreto** com base em sua composição e idade.  
O estudo utiliza o dataset **Concrete Compressive Strength** do [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/concrete+compressive+strength).

---

## 🎯 Objetivo
Prever a **resistência final do concreto (em MPa)** a partir das proporções dos seus componentes — cimento, água, areia, brita, aditivos, entre outros — usando técnicas de **Machine Learning**.

---


---

## 🧠 Conceitos Envolvidos
- Regressão supervisionada  
- Análise exploratória de dados (EDA)  
- Engenharia de atributos  
- Avaliação de modelos (MAE, RMSE, R²)  
- Interpretação de variáveis (Feature Importance, SHAP)

---

## ⚙️ Tecnologias e Bibliotecas

| Categoria | Ferramentas |
|------------|--------------|
| Linguagem  | Python 3.x |
| Coleta     | `ucimlrepo` |
| Manipulação de Dados | `pandas`, `numpy` |
| Visualização | `matplotlib`, `seaborn` |
| Modelagem | `scikit-learn` |
| Explicabilidade | `SHAP`, `RandomForestRegressor` |
| Documentação | `python-docx` |

---

## 📊 Passos do Projeto

### 1️⃣ Importação e Carregamento dos Dados
```python
from ucimlrepo import fetch_ucirepo
concrete = fetch_ucirepo(id=165)
X = concrete.data.features
y = concrete.data.targets

2️⃣ Análise Exploratória (EDA)

Estatísticas descritivas

Correlações entre variáveis

Relação água/cimento vs resistência

3️⃣ Divisão de Treino e Teste
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

4️⃣ Modelagem

Modelos testados:

Regressão Linear

Random Forest

XGBoost (opcional)

Rede Neural (opcional)

5️⃣ Avaliação
from sklearn.metrics import mean_absolute_error, mean_squared_error, r2_score


Métricas usadas:

MAE (Mean Absolute Error)

RMSE (Root Mean Squared Error)

R² (Coeficiente de Determinação)

6️⃣ Interpretação

Análise da importância das variáveis para entender quais componentes mais influenciam na resistência final.

📈 Resultados Esperados

Identificar a relação entre proporções dos materiais e resistência.

Criar um modelo preditivo capaz de estimar a resistência antes dos testes laboratoriais.

Fornecer insights úteis para otimização de traços e economia de materiais.

🚀 Próximos Passos

Aplicar otimização de hiperparâmetros (GridSearchCV).

Criar um dashboard em Power BI ou Streamlit para visualização interativa.

Expandir a base com dados reais de laboratório ou obras.

👩‍💻 Autoria
Patricia Santos (Paty)
Assistente de Sistemas | Cientista de Dados | Educadora Tech
🔗 GitHub - patriciacls

💬 “Assim como o concreto ganha força com o tempo, um modelo de machine learning também se fortalece com dados e boas ideias.”
