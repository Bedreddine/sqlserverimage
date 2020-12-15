FROM --platform=arm64 mcr.microsoft.com/mssql/server

EXPOSE 1433

COPY --chown=mssql:root ./backup/*  /var/opt/mssql/backup/

CMD [ "/opt/mssql/bin/sqlservr" ]