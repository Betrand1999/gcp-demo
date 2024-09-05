# Use the official Python image from the Docker Hub
FROM python:3.8-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt requirements.txt

# Install the dependencies listed in the requirements file
RUN pip3 install -r requirements.txt

# Copy the rest of the application code to the working directory
COPY . .

# Command to run the Flask application
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
#