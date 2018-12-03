FROM python:3

ENV SONAR_USER=admin \
    SONAR_PASSWORD=Tam8Chin9@ \
    INFLUX_USER=jenkins \
    INFLUX_PASSWORD=Tam8Chin9@ \
    INFLUX_DB=jenkins_db

WORKDIR /usr/src/app
COPY requirements.txt ./
COPY sonar-client.py ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
