FROM gvenzl/oracle-xe:21.3.0-slim-faststart 

ENV ORACLE_PASSWORD=oracle APP_USER=tester APP_USER_PASSWORD=tester

COPY --chown=oracle:dba ./sql/ /container-entrypoint-initdb.d/sql/
COPY --chown=oracle:dba ./import_db.sh /container-entrypoint-initdb.d/

RUN ["container-entrypoint.sh", "--nowait"]
