FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip && \
    apt-get clean

WORKDIR /app

COPY . /app

RUN pip3 install flask

# Expose the application port
EXPOSE 5000

# Command to run the Flask app
CMD ["python3", "app.py"]
