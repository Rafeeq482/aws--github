#!/bin/bash
set -e

DB_USER="$1"
DB_PASS="$2"
DB_NAME="$3"

# Check if user exists
USER_EXISTS=$(psql -U postgres -tAc "SELECT 1 FROM pg_roles WHERE rolname='${DB_USER}';")
if [ "$USER_EXISTS" != "1" ]; then
    echo "Creating PostgreSQL user: ${DB_USER}"
    psql -U postgres -c "CREATE USER ${DB_USER} WITH ENCRYPTED PASSWORD '${DB_PASS}';"
else
    echo "PostgreSQL user ${DB_USER} already exists. Skipping."
fi

# Check if database exists
DB_EXISTS=$(psql -U postgres -tAc "SELECT 1 FROM pg_database WHERE datname='${DB_NAME}';")
if [ "$DB_EXISTS" != "1" ]; then
    echo "Creating PostgreSQL database: ${DB_NAME}"
    psql -U postgres -c "CREATE DATABASE ${DB_NAME} OWNER ${DB_USER};"
else
    echo "PostgreSQL database ${DB_NAME} already exists. Skipping."
fi
