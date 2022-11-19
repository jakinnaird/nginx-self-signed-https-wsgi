This is a small docker image which can be used as a reverse proxy before your
local WSGI running service. It acts as a HTTPS terminating proxy.

Based on the fine work of https://github.com/foxylion/docker-nginx-self-signed-https

## Usage

```bash
docker run -d --name app-proxy --net host \
           -e REMOTE_URL=http://127.0.0.1:8000 \
           jakinnaird/nginx-self-signed-https-wsgi:latest
```

Note: This is running the container on the host network. It is required that
port 80 and 443 are not used by any other application. Also this does only work
when Docker can be ran natively. This won't work on Mac OS X and Windows.
