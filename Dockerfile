FROM python:3.11.4-alpine
# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1    
ENV PYTHONUNBUFFERED=1           
RUN mkdir /app
WORKDIR /app
COPY / .
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]