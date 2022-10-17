# mlearn

[Iris Example](https://mybinder.org/v2/gh/frkr/mlearn/master?labpath=iris_teste.ipynb)

## Links

- [DataSet Kaggle](https://www.kaggle.com/datasets/uciml/iris)
- [Jupyter](https://jupyter.org/try-jupyter/lab/index.html)
- [Scikit](https://scikit-learn.org/stable/)
- [Docker](https://github.com/jupyter/docker-stacks)
- [Mercury](http://dev.abaccusapi.com.br:18080)

#### Converter caderno em páginas
```shell
jupyter nbconvert --execute --no-input --template lab --to html iris_teste.ipynb
jupyter nbconvert --execute --no-input --template lab --to html iris_ml.ipynb
```

#### Jupyter Server
- http://dev.abaccusapi.com.br:18888/lab?token=
- 
```shell
docker run -d --name jupyter -p 18888:8888 --restart=unless-stopped jupyter/datascience-notebook:notebook-6.4.12
```

#### Kaggle Dataset
```shell
kaggle datasets download -d uciml/iris
kaggle datasets download -d anmolkumar/health-insurance-cross-sell-prediction
```

#### Mercury Server
- https://github.com/mljar/mercury
- https://mljar.com/mercury/
- https://mercury-docs.readthedocs.io/en/latest/yaml-parameters/

#### Zeppelin - Kernel Jupyter
- https://zeppelin.apache.org/docs/latest/interpreter/jupyter.html
- https://dzone.com/articles/using-a-jdbc-driver-with-apache-zeppelin
- https://zeppelin.apache.org/docs/latest/interpreter/jdbc.html
- https://www.progress.com/blogs/using-a-jdbc-driver-with-apache-zeppelin

## NB Converter
- [Docker](HTML.dockerfile) 
```shell
docker build . -f HTML.dockerfile -t web
```

#### Mercury
- [Docker](Mercury.dockerfile)
```shell
docker build . -f Mercury.dockerfile -t web
```

#### NGINX Conector
- https://hub.docker.com/r/tiangolo/uwsgi-nginx/
