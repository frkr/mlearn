# [Iris Example](http://dev.abaccusapi.com.br:18080/app/2/embed)

## Links

- [DataSet Kaggle](https://www.kaggle.com/datasets/uciml/iris)
- [Jupyter](https://jupyter.org/try-jupyter/lab/index.html)

#### Converter caderno em páginas
```shell
jupyter nbconvert --execute --no-input --template lab --to html iris_teste.ipynb
jupyter nbconvert --execute --no-input --template lab --to html iris_ml.ipynb
```

# Consoles

#### Kaggle Dataset
```shell
kaggle datasets download -d uciml/iris
kaggle datasets download -d anmolkumar/health-insurance-cross-sell-prediction
```

#### Jupyter Server
- http://dev.abaccusapi.com.br:18888/lab?token=
- 
```shell
docker run -d --name jupyter -p 18888:8888 --privileged --restart=unless-stopped jupyter/datascience-notebook:notebook-6.4.12
```

#### Mercury Server
```shell
docker run -d --privileged --name mercury -p 18080:8080 --restart=unless-stopped frkr/mercury
```

#### Zeppelin - Kernel Jupyter (Não é muito usado comercialmente)
- https://zeppelin.apache.org/docs/latest/interpreter/jupyter.html
- https://dzone.com/articles/using-a-jdbc-driver-with-apache-zeppelin
- https://zeppelin.apache.org/docs/latest/interpreter/jdbc.html
- https://www.progress.com/blogs/using-a-jdbc-driver-with-apache-zeppelin

# Docker

## Docker - NB Converter
- [Docker](HTML.dockerfile) 
```shell
docker build . -f HTML.dockerfile -t web
```

#### Docker - Mercury
- [Docker](Mercury.dockerfile)
```shell
docker build . -f Mercury.dockerfile -t web
```
#### Testes - Mercury

```shell
docker build . -t mercury -f MercurySolo.dockerfile
```
```shell
wsl docker run -it --rm -p 757:8000 --privileged -v$PWD:/home/jovyan mercury /bin/bash
```
```shell
mercury run requestJson.ipynb 0.0.0.0:8000
```

# NGINX Conector
- https://hub.docker.com/r/tiangolo/uwsgi-nginx/

# Estudo
- https://samgriesemer.com/Remote_jupyter_notebook
- https://supervised.mljar.com/
- https://github.com/mljar/mljar-supervised#automated-machine-learning
- https://huggingface.co/docs/huggingface_hub/quick-start
- https://scikit-learn.org/stable/
- https://github.com/jupyter/docker-stacks
- https://github.com/mljar/mercury
- https://mljar.com/mercury/
- https://mercury-docs.readthedocs.io/en/latest/yaml-parameters/
