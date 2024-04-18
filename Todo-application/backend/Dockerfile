# Use python:3.9-slim as base image
FROM python:3.9-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /app

# Install system dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        gcc \
        libpq-dev \
        && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt
# Install gunicorn
RUN pip install gunicorn
# Copy project files
COPY . /app/
# Collect static files
RUN python manage.py collectstatic --noinput

EXPOSE  8000
# Run Gunicorn
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
