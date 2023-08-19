FROM overleaf

ENV ENABLED_LINKED_FILE_TYPES=project_file,project_output_file
ENV ENABLE_CONVERSIONS=true
ENV EMAIL_CONFIRMATION_DISABLED=true
ENV TEXMFVAR=/var/lib/sharelatex/tmp/texmf-var
ENV EXTERNAL_AUTH=none

ENV REDIS_PORT=6379
ENV REDIS_HOST=localhost

ENV PROJECT_NAME=overleaf
ENV V1_HISTORY_URL=http://localhost:3100/api
ENV SHARELATEX_LISTEN_IP=0.0.0.0
ENV SHARELATEX_APP_NAME="Underleaf"
ENV SHARELATEX_REDIS_HOST=localhost
ENV SHARELATEX_MONGO_URL=mongodb://localhost:27017/sharelatex
ENV SHARELATEX_PORT=80

RUN curl -s https://raw.githubusercontent.com/overleaf/overleaf/main/server-ce/nginx/sharelatex.conf | sed "0,/80/s//${SHARELATEX_PORT}/" > /etc/nginx/sites-enabled/sharelatex.conf

EXPOSE ${SHARELATEX_PORT}
