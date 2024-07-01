bash
#!/bin/bash

# Function to display the game name
display_name() {
    echo "Inox"
    sleep 1
    echo "Inox" | sed 's/./*/g'
    sleep 1
    echo "Inox" | sed 's/./& /g'
}

# Function to display the password hint
display_password_hint() {
    echo "Password Hint: The password is stored in a file named 'password.txt'."
    echo "You can find this file in the current directory or in a hidden directory."
}

# Function to display the level completion message
display_level_completion() {
    echo "Congratulations! You have successfully completed Level $1."
    echo "You have learned the following:"
    echo "1. The importance of strong passwords."
    echo "2. The concept of password cracking."
    echo "3. The use of special characters in passwords."
    echo "Now, let's move on to the next level."
}

# Function to display the game creator
display_creator() {
    echo "Game Creator: R.A.D.T.M"
    echo "University: SLIIT"
}

# Main game loop
while true; do
    clear
    display_name
    read -p "Enter the password to proceed to the next level: " password

    if [ "$password" == "password" ]; then
        display_level_completion 1
        break
    else
        echo "Incorrect password. Please try again."
        sleep 2
    fi
done

while true; do
    clear
    display_password_hint
    read -p "Enter the password to proceed to the next level: " password

    if [ "$password" == "password123!" ]; then
        display_level_completion 2
        break
    else
        echo "Incorrect password. Please try again."
        sleep 2
    fi
done

while true; do
    clear
    display_password_hint
    read -p "Enter the password to proceed to the next level: " password

    if [ "$password" == "P@ssw0rd!" ]; then
        display_level