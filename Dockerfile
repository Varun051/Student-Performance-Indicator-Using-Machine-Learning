FROM python:3.8-slim-bookworm
WORKDIR /app
COPY . /app

RUN apt update -y && apt install awscli -y

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["python3","application.py"]