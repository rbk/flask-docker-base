# README

How to setup a Flask api on Digital ocean using Docker.

## Usage

### Build

`docker build -t simpleflask .`

### Run

`docker run --name rbk1 --rm -p 8181:80 simpleflask`

### Deploy

1. VM with docker and nginx
2. setup proxy to run docker through sub domains

#### NGINX config

```config
server {
    listen 80;
    server_name {YOUR-DOMAIN};

    location / {
        proxy_pass http://localhost:{YOUR-PORT};
    }   
}
```