FROM jupyter/datascience-notebook:notebook-6.4.12 as builder
WORKDIR /tmp
COPY requestJson.ipynb .
RUN jupyter nbconvert --execute --no-input --template lab --to html requestJson.ipynb
#COPY amazon_sensus.ipynb .
#RUN pip install shap
#RUN jupyter nbconvert --execute --no-input --template lab --to html amazon_sensus.ipynb

FROM nginx:1.17.1-alpine
EXPOSE 80
COPY --from=builder /tmp/requestJson.html /usr/share/nginx/html/index.html
#COPY --from=builder /tmp/amazon_sensus.html /usr/share/nginx/html/b.html
CMD nginx -g 'daemon off;'
