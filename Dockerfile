# Use official Python image from Docker Hub
FROM python:3.10-slim

# Set working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install Python dependencies
RUN pip install -r requirements.txt --no-cache-dir

# Copy the Python script into the container
COPY text_counter.py .

# Copy the paragraphs.txt file into the container
COPY paragraphs.txt /app/

# Command to run the Python script
CMD ["python", "text_counter.py"]
