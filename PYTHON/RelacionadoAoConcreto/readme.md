# 🧱 Concrete Compressive Strength - Predição da Resistência do Concreto

Projeto de Data Science voltado à análise e predição da **resistência à compressão do concreto** com base em sua composição e idade.  
O estudo utiliza o dataset **Concrete Compressive Strength** do [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/concrete+compressive+strength).

---

## 🎯 Objetivo
Prever a **resistência final do concreto (em MPa)** a partir das proporções dos seus componentes — cimento, água, areia, brita, aditivos, entre outros — usando técnicas de **Machine Learning**.




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
```
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


Aqui está a versão em inglês do seu arquivo README.md, mantendo a estrutura e o tom profissional, e usando termos comuns em Data Science:

🧱 Concrete Compressive Strength Prediction
A Data Science project focused on the analysis and prediction of concrete compressive strength based on its composition and age.

The study uses the Concrete Compressive Strength dataset from the UCI Machine Learning Repository.

🎯 Objective
To predict the final concrete strength (in MPa) using the proportions of its components—cement, water, sand, aggregates, additives, among others—by applying Machine Learning techniques.

🧠 Concepts Involved
Supervised Regression

Exploratory Data Analysis (EDA)

Feature Engineering

Model Evaluation (MAE, RMSE, R²)

Variable Interpretation (Feature Importance, SHAP)

⚙️ Technologies and Libraries
Category	Tools
Language	Python 3.x
Data Fetching	ucimlrepo
Data Manipulation	pandas, numpy
Visualization	matplotlib, seaborn
Modeling	scikit-learn
Explainability	SHAP, RandomForestRegressor
Documentation	python-docx

Exportar para as Planilhas
📊 Project Steps
1️⃣ Data Import and Loading
Python

from ucimlrepo import fetch_ucirepo
concrete = fetch_ucirepo(id=165)
X = concrete.data.features
y = concrete.data.targets
2️⃣ Exploratory Data Analysis (EDA)
Descriptive statistics

Variable correlation analysis

Water/cement ratio vs. strength relationship

3️⃣ Train and Test Split
Python

from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
4️⃣ Modeling
Models tested:

Linear Regression

Random Forest

XGBoost (optional)

Neural Network (optional)

5️⃣ Evaluation
Python

from sklearn.metrics import mean_absolute_error, mean_squared_error, r2_score
Metrics used:

MAE (Mean Absolute Error)

RMSE (Root Mean Squared Error)

R² (Coefficient of Determination)

6️⃣ Interpretation
Analysis of Feature Importance to understand which components most influence the final strength.

📈 Expected Outcomes
Identify the relationship between material proportions and strength.

Create a predictive model capable of estimating strength before laboratory testing.

Provide useful insights for mix optimization and material cost savings.

🚀 Next Steps
Apply hyperparameter optimization (GridSearchCV).

Create a dashboard using Power BI or Streamlit for interactive visualization.

Expand the dataset with real laboratory or construction site data.

👩‍💻 Authorship
Patricia Santos (Paty)
Systems Assistant | Data Scientist | Tech Educator
🔗 GitHub - patriciacls

💬 “Just as concrete gains strength over time, a machine learning model also gains strength with data and good ideas.”