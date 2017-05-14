FROM cloudron/base:0.10.0

# Environment variables
ENV domain localhost
ENV LC_CTYPE en_US.UTF-8

# Setup scripts for LibreOffice Online
ADD /scripts/install-libreoffice.sh /
ADD /scripts/start-libreoffice.sh /
ADD server.js /app/code/server.js
RUN bash install-libreoffice.sh

CMD [ "/usr/local/node-4.4.7/bin/node", "/app/code/server.js" ]

# Entry point
CMD bash start-libreoffice.sh
