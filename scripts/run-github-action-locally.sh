#!/bin/bash

# Script to run GitHub Actions workflows locally using act
# https://github.com/nektos/act

# Check if act is installed
if ! command -v act &> /dev/null; then
  echo "The 'act' tool is not installed. Installing..."
  
  # For macOS (using Homebrew)
  if command -v brew &> /dev/null; then
    brew install act
  else
    echo "Please install 'act' manually:"
    echo "macOS: brew install act"
    echo "Linux: https://github.com/nektos/act#installation"
    exit 1
  fi
fi

# Run the GitHub Action workflow
echo "Running GitHub Actions workflow locally..."
act -j build

# If you want to run a specific job, use:
# act -j lint
# act -j build
# act -j deploy

# If you want to run the workflow with push event:
# act push

# For more options:
# act --help
