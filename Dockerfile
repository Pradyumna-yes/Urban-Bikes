# Use the official Python image from the Docker Hub
FROM python:3.8-slim

# Install system dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    gcc \
    libmariadb-dev \
    libmariadb-dev-compat \
    pkg-config && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory in the container to /app
WORKDIR /app

# Copy the requirements.txt file into the container at /app
COPY requirements.txt requirements.txt

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container at /app
COPY . .

# Set environment variables
ENV FLASK_APP=run.py
ENV FLASK_ENV=development

# Expose port 5000 to the outside world
EXPOSE 5000

# Run the application
CMD ["flask", "run", "--host=0.0.0.0"]
