FROM python:3.6

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["python3", "runserver.py"]

EXPOSE 5001
