FROM python:3.7-alpine
MAINTAINER davidbaek

COPY src/* /app
WORKDIR /app
#Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt
COPY . /app
# Run app.py when the container launches
CMD ["python3", "app.py"]
EXPOSE 5000