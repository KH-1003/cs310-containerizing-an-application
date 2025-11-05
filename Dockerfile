# Uses an official lightweight python image
FROM python:3.10-slim

# Creates the working directory
WORKDIR /app

# Copies flash-app to the container
COPY . /app

# Install Flask
RUN pip install Flask

# Sets the port the app with use
EXPOSE 5000

# Command that runs the flask app
CMD ["python", "flask-app.py"]