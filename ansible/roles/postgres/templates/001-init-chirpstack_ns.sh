#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    create role chirpstack_ns with login password '{{ postgres_chirpstack_ns_password }}';
    create database chirpstack_ns with owner chirpstack_ns;
EOSQL