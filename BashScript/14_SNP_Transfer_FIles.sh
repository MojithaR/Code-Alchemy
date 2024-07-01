#!/bin/bash
#Date: 22 Sep 2023
#Creator: Mojitha
#purpose: Scan any URL/Ip and identify voulnarabilities

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

# Create a timestamp for the log file
timestamp=$(date +"%Y%m%d%H%M%S")

# Define the log file path
log_file="./scan_results_${timestamp}.txt"

# Inform the user that port scanning is starting and redirect output to log file
echo "Scanning $target for open ports..." | tee "$log_file"

# Iterate through each port in the 'ports' list
for port in $ports; do
  # Use 'nc' command to check if the port is open on the target
  result=$(nc -z -v -w 1 "$target" $port 2>&1 | grep "succeeded" && echo "Port $port is open")
  echo "$result" | tee -a "$log_file"
done

# Inform the user that port scanning is finished
echo "Port scanning finished." | tee -a "$log_file"

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
echo "Transferring file to $target on port $transfer_port..." | tee -a "$log_file"
nc -w 3 -v "$target" "$transfer_port" < "$file_to_transfer" 2>&1 | tee -a "$log_file"

# Inform the user that file transfer is finished
echo "File transfer finished." | tee -a "$log_file"

# Print the log file location to the user
echo "Scan and transfer results saved to: $log_file"


#END