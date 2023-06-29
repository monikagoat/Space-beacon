# Use the official Python image as the base image
FROM python:3.8.13

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY app.py .

# Expose port 80 for the Flask application
EXPOSE 80

# Set the entry point command to run the Flask application
CMD ["python", "app.py"]

