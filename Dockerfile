# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app
# Install JupyterLab
RUN pip install jupyterlab
RUN pip install pytest


# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run jupyterlab when the container launches
CMD ["jupyter", "lab", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]