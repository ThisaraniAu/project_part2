# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY book_catalog/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire application code into the container
COPY . .

# Expose the port that the FastAPI app runs on
EXPOSE 8000

# Command to run the application

CMD ["uvicorn", "book_catalog.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]

