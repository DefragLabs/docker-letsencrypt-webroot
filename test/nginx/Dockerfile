FROM nginx
RUN mkdir -p /code
ADD ./test/nginx/entrypoint.sh /code/entrypoint.sh

ENTRYPOINT ["/code/entrypoint.sh"]
