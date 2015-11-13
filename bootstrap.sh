#!/bin/bash -x

if [ -z "$RAILS_ENV" ]; then
  RAILS_ENV=development
fi
RACK_ENV=$RAILS_ENV

export RAILS_ENV
export RACK_ENV

if grep -q docker /proc/1/cgroup >/dev/null 2>&1; then
  BUNDLE_OPTS="--path=vendor/bundle"
fi

bundle="bundle exec"
rake="bin/rake"

bundle check $BUNDLE_OPTS || bundle install $BUNDLE_OPTS


$rake -t \
  db:create \
  db:schema:load \
  db:migrate \
  db:seed
