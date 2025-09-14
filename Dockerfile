# Base Python image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy dependencies and install
COPY modules/dependencies.txt .
RUN pip install --no-cache-dir -r dependencies.txt

# Copy application and tests
COPY app/ ./app
COPY testsuites/ ./testsuites

# Default command: run tests
CMD ["pytest", "testsuites"]

