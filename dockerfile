# Use an official Python runtime as a parent image
FROM python:3.11.5

# Set the working directory in the container to /app
WORKDIR /app

# Add the current directory contents into the container at /app
ADD . /app
# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 5000

# Run bot.py when the container launches
CMD ["python", "app.py"]
