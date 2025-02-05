FROM python:3.12-slim-bullseye

WORKDIR /app

COPY requirements.txt.
RUN pip install -r requirements.txt

COPY..

RUN apt-get update && \
    apt-get install -y libgl1-mesa-glx libgl1 libglu1-mesa

CMD ["python", "app.py"]