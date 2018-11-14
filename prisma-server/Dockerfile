ARG tag
FROM prismagraphql/prisma:$tag
COPY ./prerun_hook.sh /app/prerun_hook.sh

RUN chmod a+x /app/start.sh
RUN chmod a+x /app/prerun_hook.sh

CMD bash /app/start.sh
