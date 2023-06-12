# FROM python:3

# WORKDIR /app
# COPY ./app.py /app/
# COPY ./templates /app/
# COPY ./pokeapi.py /app/
# COPY ./pokeapi.db /app/
# COPY requirements.txt /app/
# RUN pip install --no-cache-dir -r requirements.txt
# EXPOSE 5000
# CMD [ "python", "app.py" ]

FROM python:3

# Copy the current directory contents into the container at /app
COPY . /usr/src/app

# Set the working directory to /usr/src/app
WORKDIR /usr/src/app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# run the command
CMD [ "python", "./app.py" ]