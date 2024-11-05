#!/bin/bash
set -e

# Ensure tools are in path
export PATH="$PATH:/root/.dotnet/tools"

until dotnet ef database update --project ./Domain --startup-project ./APIService; do
    >&2 echo "SQL Server is starting up - retrying in 5 seconds..."
    sleep 5
done

>&2 echo "SQL Server is up - executing command"
exec dotnet APIService.dll