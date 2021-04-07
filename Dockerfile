FROM python:3.8.5
RUN pip install flask==1.1.2 gunicorn==20.0
RUN pip install pandas
COPY . /app
WORKDIR /app
ENV PYTHONUNBUFFERED=1
CMD ["gunicorn", "-w 4", "-b 0.0.0.0:8000", "wsgi:app"]
