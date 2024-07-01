#!/bin/bash

# Check if the target is provided as a command-line argument
if [ $# -ne 1 ]; then
  echo "Usage: $0 <target>"
  exit 1
fi

# Get the target URL or IP address
target="$1"

# Check if nmap is installed
if ! command -v nmap >/dev/null; then
  echo "Error: nmap is not installed. Please install it and try again."
  exit 1
fi

# Check if nessus is installed
if ! command -v nessuscli >/dev/null; then
  echo "Error: nessuscli is not installed. Please install it and try again."
  exit 1
fi

# Function to scan open ports and vulnerabilities
scan_target() {
  local target="$1"
  local open_ports vulnerabilities

  # Scan the target for open ports
  open_ports=$(nmap -sT -p- "$target" | grep "^ *[0-9]" | awk '{print $1}')

  # Scan the target for vulnerabilities using Nessus
  echo "Scanning $target for vulnerabilities..."
  nessuscli scan --target "$target" > /dev/null
  vulnerabilities=$(nessuscli report list | grep "Vulnerability" | awk '{print $1}')

  echo "Open ports on $target:"
  echo "$open_ports"

  echo "Vulnerabilities found on $target:"
  echo "$vulnerabilities"
}

# Transfer files or packets to the target
if [ -z "$open_ports" ]; then
  echo "No open ports found on $target"
else
  for port in $open_ports; do
    echo "Transferring files or packets to $target on port $port"
    
    # Example using scp for file transfer
    # Replace 'source_file' with the file you want to transfer
    # Replace 'username' with your username on the target machine
    scp source_file username@"$target":/path/to/destination/
    
    # You can also use other tools like netcat for packet transfer
    # Replace this with your preferred method
  done
fi

# Perform the scans and display results
scan_target "$target"

#END