#!/bin/sh

# Set up path to Moodle code
export MOODLE_DOCKER_WWWROOT=/srv/moodle
# Choose a db server (Currently supported: pgsql, mariadb, mysql, mssql, oracle)
export MOODLE_DOCKER_DB=pgsql

export MOODLE_DOCKER_WEB_HOST=129.69.217.173
export MOODLE_DOCKER_WEB_PORT=129.69.217.173:8081

# Ensure customized config.php for the Docker containers is in place
cp config.docker-template.php $MOODLE_DOCKER_WWWROOT/config.php

# Start up containers
bin/moodle-docker-compose up -d

# Wait for DB to come up (important for oracle/mssql)
bin/moodle-docker-wait-for-db

# Shut down and destroy containers
# bin/moodle-docker-compose down

