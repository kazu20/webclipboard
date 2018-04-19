#!/bin/bash

set -e
APP_ROOT=/usr/src/webclipboard

cp $APP_ROOT/config/database.yml_postgres $APP_ROOT/config/database.yml
rake db:create
rake db:migrate

rails s -b 0.0.0.0

