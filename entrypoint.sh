#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid
rm -f /myapp/tmp/pids/server.pid

# Run database setup if needed
if ! bundle exec rails db:version > /dev/null 2>&1; then
  echo "Setting up the database..."
  bundle exec rails db:setup
fi

# Then exec the container’s main process
exec "$@"
