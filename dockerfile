# use an official Python runtime as a parwnt image 
FROM python:3.8-slim


#set the working directory in the container 
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN pip install --no-cache-dir -r requirements.txt


EXPOSE 5000

# ENV FLASK_APP = app.py

CMD ["python","app.py","--host=0.0.0.0"]