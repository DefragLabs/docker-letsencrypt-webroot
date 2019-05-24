FROM nginx
RUN mkdir -p /code
ADD ./nginx/entrypoint.sh /code/entrypoint.sh

ENTRYPOINT ["/code/entrypoint.sh"]
