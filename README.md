# mlearn

- [Iris Example](https://mybinder.org/v2/gh/frkr/mlearn/master?labpath=iris_teste.ipynb)
- [HTML](iris_teste.html)

```shell
jupyter nbconvert --execute --no-input --to html iris_teste.ipynb
jupyter nbconvert --execute --no-input --to html iris_ml.ipynb
```

## Links

- [DataSet Kaggle](https://www.kaggle.com/datasets/uciml/iris)
- [Jupyter](https://jupyter.org/try-jupyter/lab/index.html)
- [Scikit](https://scikit-learn.org/stable/)
- [Docker](https://github.com/jupyter/docker-stacks)

```shell
docker run -d --name jupyter -p 18888:8888 --restart=unless-stopped jupyter/demo
```

#### Docker Link
- http://dev.abaccusapi.com.br:18888/lab?token=2066e7a3b48d7e557a625c7bac3d08829ce31990ffda4d9a


```shell
kaggle datasets download -d uciml/iris
kaggle datasets download -d anmolkumar/health-insurance-cross-sell-prediction
```



https://medium.com/swlh/using-and-calling-an-api-with-python-494a18cb1f44
https://www.hashtagtreinamentos.com/dashboards-em-python
https://asimov.academy/10-projetos-de-dashboards-em-python-para-voce-implementar/
https://www.novixys.com/blog/python-web-application-docker-nginx-uwsgi/
https://hub.docker.com/r/tiangolo/uwsgi-nginx/
https://realpython.com/python-dash/
https://www.youtube.com/watch?v=25LgJzG2Fg0
https://plotly.com/python/v3/create-online-dashboard-legacy/