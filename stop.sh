#!/bin/sh

# Set up path to Moodle code
export MOODLE_DOCKER_WWWROOT=/srv/moodle
# Choose a db server (Currently supported: pgsql, mariadb, mysql, mssql, oracle)
export MOODLE_DOCKER_DB=pgsql

# Shut down and destroy containers
bin/moodle-docker-compose down

