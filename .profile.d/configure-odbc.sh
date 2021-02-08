#!/bin/bash


export ODBCSYSINI=${HOME}/.apt/usr/lib/odbc/conf/

export INFORMIXDIR=/app/venv/Lib/site-packages/onedb-odbc-driver

export LD_LIBRARY_PATH=${INFORMIXDIR}/lib:${INFORMIXDIR}/lib/esql:${INFORMIXDIR}/lib/cli

mkdir -p /etc

echo "[ODBC Driver 17 for SQL Server]
Description=Microsoft ODBC Driver 17 for SQL Server
Driver=/app/.apt/usr/lib/libmsodbcsql-17.5.so.2.1
UsageCount=1
" > ${ODBCSYSINI}/odbc.ini
