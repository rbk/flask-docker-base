FROM tiangolo/uwsgi-nginx-flask:python3.7

# Static path
ENV STATIC_PATH /app/public

# uploads
ENV NGINX_MAX_UPLOAD 100m

COPY ./app /app
RUN pip install -r requirements.txt --no-cache-dir