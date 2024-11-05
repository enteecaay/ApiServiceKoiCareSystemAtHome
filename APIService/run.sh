#!/bin/bash

# Run migrations before starting the app
dotnet ef database update --no-build

# Start the application
exec dotnet APIService.dll
