#!/bin/bash

# Run migrations before starting the app
dotnet ef database update --project ./Domain --startup-project ./APIService

# Start the application
exec dotnet APIService.dll
