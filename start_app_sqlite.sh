#!/bin/bash

set -e
APP_ROOT=/usr/src/webclipboard

rake db:create
rake db:migrate

rails s -b 0.0.0.0

