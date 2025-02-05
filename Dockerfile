# Use a Python base image with some basic graphics support
FROM python:3.12-slim-bullseye

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt /app  # Corrected line

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY..

# Install system dependencies (important for OpenCV and graphics)
RUN apt-get update && \
    apt-get install -y libgl1-mesa-glx libgl1 libglu1-mesa

# Expose the Flask app port
EXPOSE 5000

# Command to run your Flask application
CMD ["python", "app.py"]