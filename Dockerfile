FROM python:3.11-slim-bookworm
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN pip install poetry
RUN poetry config virtualenvs.create false
RUN poetry install --no-dev
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
