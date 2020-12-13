FROM jupyter/scipy-notebook:17aba6048f44

RUN pip install wheel cmake pqkmeans xgboost psycopg2-binary
