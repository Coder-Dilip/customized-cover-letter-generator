# Use an official Python 3.10 runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container at /app
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app directory into the container at /app
COPY app/ /app/

# Copy the resource directory into the container at /app/resource
COPY resource/ /app/resource/

# Copy the tests directory into the container at /app/tests
COPY tests/ /app/tests/

# Make port 8501 available to the world outside this container
EXPOSE 8501

# Define environment variable for Streamlit
ENV STREAMLIT_PORT=8501

# Run the tests by default, or change to your start command
CMD ["pytest", "tests"]
