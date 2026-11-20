#!/bin/bash

echo "Starting System Health Check..."

echo "Checking Python installation..."
python3 --version

echo "Checking Git installation..."
git --version

echo "Checking disk space..."
df -h .

echo "System Health Check Completed Successfully!"