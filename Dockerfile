FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY app /usr/share/nginx/html

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -qO- http://127.0.0.1/ >/dev/null || exit 1
