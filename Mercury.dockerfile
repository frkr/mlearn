FROM jupyter/datascience-notebook:notebook-6.4.12
EXPOSE 8080
RUN pip install mljar-mercury

RUN pip install shap
COPY amazon_sensus.ipynb .
RUN mercury add amazon_sensus.ipynb

COPY iris_teste.ipynb .
RUN mercury add iris_teste.ipynb

COPY iris_ml.ipynb .
RUN mercury add iris_ml.ipynb

COPY requestJson.ipynb .
RUN mercury add requestJson.ipynb

COPY graficoMotor.ipynb .
RUN mercury add graficoMotor.ipynb

CMD mercury run 0.0.0.0:8080
