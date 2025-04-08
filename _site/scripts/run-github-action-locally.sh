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

# Set default job
JOB=${1:-build}

# Update Bundler version in Gemfile.lock if needed
if grep -q "BUNDLED WITH" Gemfile.lock && grep -q "1.17.2" Gemfile.lock; then
  echo "Updating Bundler version in Gemfile.lock for local testing..."
  sed -i '' 's/1.17.2/2.4.22/g' Gemfile.lock
fi

# Run the GitHub Action workflow
echo "Running GitHub Actions workflow locally (job: $JOB)..."

# Use --container-architecture flag for M1/M2 Macs
if [[ $(uname -m) == 'arm64' ]]; then
  echo "Detected Apple Silicon, using linux/amd64 architecture for containers..."
  act -j "$JOB" --container-architecture linux/amd64
else
  act -j "$JOB"
fi

# Check if the job ran successfully
if [ $? -ne 0 ]; then
  echo "❌ GitHub Action job '$JOB' failed locally"
  echo "Try running with a specific job: ./$(basename "$0") lint|build|deploy"
  exit 1
else
  echo "✅ GitHub Action job '$JOB' completed successfully"
fi

# If you want to run a specific job, use:
# act -j lint
# act -j build
# act -j deploy

# If you want to run the workflow with push event:
# act push

# For more options:
# act --help
