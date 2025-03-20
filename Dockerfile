# Use the official Python image from Docker Hub 
FROM python:3.9-slim

# Set the working directory inside the container 
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt


# Make port 5000 available to the world outside the container
EXPOSE 5000

# Define the environment variable for Flask to run in production mode
ENV FLASK_ENV=production

# Run app.py when the container launches
CMD ["python", "app.py"]
