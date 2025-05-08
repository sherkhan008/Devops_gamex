FROM nginx:alpine
RUN apk add --no-cache curl
COPY ./website /usr/share/nginx/html
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
RUN chmod -R 755 /usr/share/nginx/html
RUN chown -R nginx:nginx /usr/share/nginx/html
HEALTHCHECK --interval=30s --timeout=3s --retries=3 CMD curl -f http://localhost || exit 1