#!/bin/bash

# Level 1
password1="inox123"

# Level 2
password2="cyber456"

# Level 3
password3="security789"

# Function to display Inox in a stylish way with hidden password hint
display_inox() {
    echo -e "\e[36m"
    cat << "EOF"
   ____  _   _ ____  ____  _____ _     _     
  |  _ \| \ | |  _ \|  _ \|_   _| |   (_)    
  | |_) |  \| | | | | | | | | | | |__  _ ___ 
  |  _ <| . ` | | | | | | | | | | '_ \| / __|
  | |_) | |\  | |_| | |_| |_| |_| | |_) | \__ \
  |____/|_| \_|____/|____/|_____|_.__/|_|___/

EOF
    echo -e "\e[0mHint: Password contains 'inox'."
}

# Function to check password with hints
check_password() {
    level=$1
    input_password=$2
    correct_password=$3

    if [ "$input_password" == "$correct_password" ]; then
        echo -e "\e[32mCongratulations! You have successfully entered the password for Level $level."
        case $level in
            1)
                echo -e "\e[32mYou have mastered the art of the Inox pattern.\e[0m"
                ;;
            2)
                echo -e "\e[32mYou are on your way to becoming a cybersecurity expert!\e[0m"
                ;;
            3)
                echo -e "\e[32mYou've unlocked the secrets of fundamental security concepts!\e[0m"
                ;;
        esac
        return 0
    elif [ "$input_password" == "exit" ]; then
        echo "Exiting the game..."
        exit 0
    else
        echo -e "\e[31mIncorrect password. Here's a hint: "
        case $level in
            1)
                echo -e "\e[31mHint: Password contains 'inox'.\e[0m"
                ;;
            2)
                echo -e "\e[31mHint: Think about common cybersecurity terms.\e[0m"
                ;;
            3)
                echo -e "\e[31mHint: Consider fundamental security concepts.\e[0m"
                ;;
        esac
        return 1
    fi
}

# Function to play the game
play_game() {
    level=$1
    password=$2

    echo "Welcome to Level $level. Please enter the password to proceed (or 'exit' to quit the game)."
    read -s input_password

    while ! check_password $level "$input_password" "$password"; do
        read -s input_password
    done

    if [ $level -lt 3 ]; then
        echo "You have successfully entered the password for Level $level. Please wait while you are redirected to the next level..."
        sleep 2
        next_level=$((level + 1))
        next_password="password$next_level"
        clear
        display_inox
        play_game $next_level "${!next_password}"
    else
        echo -e "\e[32mCongratulations! You have successfully completed all levels of the game."
        echo -e "Game created by \e[36mR.A.D.T.M\e[0m, University: \e[36mSLIIT\e[0m"
    fi
}

# Start the game
clear
echo "Welcome to the \e[36mCybersecurity Learning Game\e[0m. Enter 'Inox' to begin (or 'exit' to quit)."
read game_name

if [ "$game_name" == "Inox" ]; then
    clear
    display_inox
    play_game 1 "$password1"
elif [ "$game_name" == "exit" ]; then
    echo "Exiting the game..."
else
    echo "Invalid game name. Exiting..."
fi
