# Use an official Python runtime as a parent image
FROM python:3.11

# Set the working directory in the container
WORKDIR /fastapi-app

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project into the container
COPY . .

# Expose port 8000 for FastAPI
EXPOSE 8000

# Command to run FastAPI with Uvicorn
CMD ["uvicorn", "main:fastapi-app", "--host", "0.0.0.0", "--port", "8000"]
