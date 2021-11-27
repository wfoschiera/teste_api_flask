FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN teste_api_flask create-db
RUN teste_api_flask populate-db
RUN teste_api_flask add-user -u admin -p admin
EXPOSE 5000
CMD ["teste_api_flask", "run"]
