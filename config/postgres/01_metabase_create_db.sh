#!/bin/bash
set -e # exit immediately if a command exits with a non-zero status.

POSTGRES="psql --username $POSTGRES_USER"

# create database for superset
echo "Creating database: $METABASE_DB_NAME"
$POSTGRES <<EOSQL
CREATE DATABASE $METABASE_DB_NAME OWNER $METABASE_DB_USER;
EOSQL
