FROM python
ENV PYTHONUNBUFFERED=1
WORKDIR /code

# Install dependencies:
COPY ./src/requirements.txt /code/
RUN pip install -r requirements.txt

# Run the application:
COPY ./src/ /code/
CMD python manage.py runserver 0.0.0.0:8000