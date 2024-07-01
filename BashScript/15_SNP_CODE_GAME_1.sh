#!/bin/bash

clear

# Define initial variables
game_name="Inox"
level=1

# Function to display level information
function display_level() {
    clear
    echo "Welcome to Level $level"
    echo "You are in the world of $game_name"
    echo
}

# Function to display hints and educational content
function display_hint() {
    case $level in
        1)
            echo "Hint: Look for a file named 'password.txt' in this directory."
            ;;
        2)
            echo "Hint: Check the 'cybersecurity-tutorial.html' file for clues."
            ;;
        3)
            echo "Hint: Explore the 'hidden-folder' for the password."
            ;;
    esac
    echo
}

# Main game loop
while [ $level -le 3 ]; do
    display_level
    display_hint
    read -p "Enter the password to proceed to the next level: " password

    case $level in
        1)
            if [ "$password" = "level1password" ]; then
                echo "Congratulations! You've learned about password security."
                sleep 2
                level=$((level + 1))
            else
                echo "Incorrect password. Try again."
                sleep 2
            fi
            ;;
        2)
            if [ "$password" = "level2password" ]; then
                echo "Great job! You've learned about phishing attacks."
                sleep 2
                level=$((level + 1))
            else
                echo "Incorrect password. Try again."
                sleep 2
            fi
            ;;
        3)
            if [ "$password" = "level3password" ]; then
                echo "Congratulations! You've completed all levels."
                sleep 2
                break
            else
                echo "Incorrect password. Try again."
                sleep 2
            fi
            ;;
    esac
done

clear
echo "Game over!"
echo "Created by R.A.D.T.M"
echo "University: SLIIT"


#END