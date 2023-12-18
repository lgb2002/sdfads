FROM python:3.8.5

RUN mkdir -p /sonarcube-repeat
WORKDIR /sonarcube-repeat
COPY . .
RUN pip install -r ./requirements.txt

CMD ["python", "main.py", "--host", "0.0.0.0", "--port", "8000"]