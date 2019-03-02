FROM python:3.6.1-alpine

RUN pip install --upgrade pip

COPY . /app
WORKDIR /app
RUN pip install -r app/requirements.txt
CMD ["python","app/app.py"]
