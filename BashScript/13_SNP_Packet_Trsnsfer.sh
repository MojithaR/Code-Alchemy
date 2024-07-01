#!/bin/bash

# Check if the script is called with exactly one argument
if [ $# -ne 1 ]; then
  echo "Usage: $0 <target>"
  exit 1
fi

# Assign the first argument to the 'target' variable
target="$1"

# List of common ports to scan
ports="80 443 21 22 25 53 110"

# Prompt the user to enter a list of additional ports to scan
echo -n "Enter a list of additional ports to scan (e.g., 8080 8081): "

# Read the input as an array into 'additional_ports'
read -a additional_ports

# Concatenate the additional ports to the common ports
ports="$ports ${additional_ports[@]}"

# Inform the user that port scanning is starting
echo "Scanning $target for open ports..."

# Iterate through each port in the 'ports' list
for port in $ports; do
  # Use 'nc' command to check if the port is open on the target
  nc -z -v -w 1 "$target" $port 2>&1 | grep "succeeded" && echo "Port $port is open"
done

# Inform the user that port scanning is finished
echo "Port scanning finished."

# File transfer section

# Prompt the user for the file to transfer
echo -n "Enter the path to the file you want to transfer: "
read file_to_transfer

# Check if the file exists
if [ ! -f "$file_to_transfer" ]; then
  echo "File does not exist."
  exit 1
fi

# Prompt the user for the destination port
echo -n "Enter the port for file transfer: "
read transfer_port

# Use 'nc' to send the file to the target
nc -w 3 -v "$target" "$transfer_port" < "$file_to_transfer"

# Inform the user that file transfer is finished
echo "File transfer finished."

#END