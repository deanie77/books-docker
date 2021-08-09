# Pull base image
FROM python:3.9

# Set enviroment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /djangoprofessionals

# Install dependencies
COPY Pipfile Pipfile.lock /djangoprofessionals/
RUN pip install pipenv && pipenv install --system

# Copy project
COPY . /djangoprofessionals/