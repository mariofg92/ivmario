
FROM python:3

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . .

ENV PORT 80

CMD gunicorn API_web:__hug_wsgi__

EXPOSE 80
