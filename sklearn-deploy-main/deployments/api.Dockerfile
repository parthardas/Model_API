FROM python:3.11-slim
RUN apt-get update \
    && apt-get -y install libpq-dev gcc

ENV PYTHONUNBUFFERED 1
RUN mkdir /api
WORKDIR /api
#COPY requirements.txt /api/
COPY requirements.txt .
RUN pip install -r requirements.txt
#COPY ./api /api/
COPY ./api .
#added new layer 05272024
RUN mkdir model_artifacts1
#COPY ./model_artifacts /api/model_artifacts
COPY ./model_artifacts model_artifacts1
EXPOSE 8000

CMD ["python", "/api/main.py"]