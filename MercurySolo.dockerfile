FROM jupyter/datascience-notebook:notebook-6.4.12
RUN pip install mljar-mercury shap
CMD /bin/bash