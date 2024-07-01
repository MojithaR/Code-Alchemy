#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <target>"
  exit 1
fi

target="$1"
ports="80 443 21 22 25 53 110"  # List of common ports to scan

echo "Scanning $target for open ports..."

for port in $ports; do
  nc -z -v -w 1 "$target" $port 2>&1 | grep "succeeded" && echo "Port $port is open"
done

echo "Port scanning finished."


