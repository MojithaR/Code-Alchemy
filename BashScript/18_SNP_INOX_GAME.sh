#!/bin/bash

# Encryption and decryption functions
encrypt_text() {
    local text="$1"
    local secret_key="$2"
    echo -n "$text" | openssl enc -aes-256-cbc -salt -a -k "$secret_key"
}

decrypt_text() {
    local encrypted_text="$1"
    local secret_key="$2"
    echo -n "$encrypted_text" | openssl enc -aes-256-cbc -d -a -k "$secret_key"
}

# Level 1
password1="inox123"
password1_info="Pattern: 'inox' followed by 3 digits."

# Level 2
plain_text="You can do it"
secret_key="zgSDMeJUSY0XybhPd+1s2w=="
encrypted_text="odwZ4X7jMn3Ub0yHS3bK5A=="
password2_info="Encrypted Text: $encrypted_text\nDecrypt this text using the secret key: '$secret_key' to find the next level password."

# Function to display password information
display_password_info() {
    level=$1
    info_variable="password${level}_info"
    password_info="${!info_variable}"
    
    echo -e "\e[36m"
    cat << "EOF"
  
 ______                               
|      \                              
 \$$$$$$ _______    ______   __    __ 
  | $$  |       \  /      \ |  \  /  \
  | $$  | $$$$$$$\|  $$$$$$\ \$$\/  $$
  | $$  | $$  | $$| $$  | $$  >$$  $$ 
 _| $$_ | $$  | $$| $$__/ $$ /  $$$$\ 
|   $$ \| $$  | $$ \$$    $$|  $$ \$$\
 \$$$$$$ \$$   \$$  \$$$$$$  \$$   \$$
                                      
                                      
                        

EOF
    echo -e "\e[0mInformation: $password_info"
}

# Function to check password with hints
check_password() {
     echo -e "\e[36m"
    cat << "EOF"
  
 __                    _    ___ 
|  |    ___  _ _  ___ | |  |_  |
|  |__ | -_|| | || -_|| |  |  _|
|_____||___| \_/ |___||_|  |___|
                                 
                                      
                        

EOF
    level=$1
    input_password=$2
    correct_password_variable="password$level"

    if [ "$input_password" == "${!correct_password_variable}" ]; then
        echo -e "\e[32mCongratulations! You have successfully entered the password for Level $level."
        echo -e "\e[32mYou've mastered this level's password pattern.\e[0m"
        return 0
    else
        echo -e "\e[31mIncorrect password. Here's a hint:"
        display_password_info $level
        return 1
    fi
}

# Function to play the game
play_game() {
    level=$1
    password_variable="password$level"

    echo "Welcome to Level $level. Please enter the password to proceed."
    read -s input_password

    while ! check_password $level "$input_password"; do
        read -s input_password
    done

    if [ $level -lt 2 ]; then
        echo "You have successfully entered the password for Level $level. Please wait while you are redirected to the next level..."
        sleep 2
        next_level=$((level + 1))
        clear
        display_password_info $next_level
        play_game $next_level
    else
        echo -e "\e[32mCongratulations! You have successfully completed all levels of the game."

            cat << "EOF"
  

 ██▀███        ▄▄▄           ▓█████▄      ▄▄▄█████▓      ███▄ ▄███▓
▓██ ▒ ██▒     ▒████▄         ▒██▀ ██▌     ▓  ██▒ ▓▒     ▓██▒▀█▀ ██▒
▓██ ░▄█ ▒     ▒██  ▀█▄       ░██   █▌     ▒ ▓██░ ▒░     ▓██    ▓██░
▒██▀▀█▄       ░██▄▄▄▄██      ░▓█▄   ▌     ░ ▓██▓ ░      ▒██    ▒██ 
░██▓ ▒██▒ ██▓  ▓█   ▓██▒ ██▓ ░▒████▓  ██▓   ▒██▒ ░  ██▓ ▒██▒   ░██▒
░ ▒▓ ░▒▓░ ▒▓▒  ▒▒   ▓▒█░ ▒▓▒  ▒▒▓  ▒  ▒▓▒   ▒ ░░    ▒▓▒ ░ ▒░   ░  ░
  ░▒ ░ ▒░ ░▒    ▒   ▒▒ ░ ░▒   ░ ▒  ▒  ░▒      ░     ░▒  ░  ░      ░
  ░░   ░  ░     ░   ▒    ░    ░ ░  ░  ░     ░       ░   ░      ░   
   ░       ░        ░  ░  ░     ░      ░             ░         ░   
           ░              ░   ░        ░             ░             
  ██████  ██▓     ██▓ ██▓▄▄▄█████▓                                 
▒██    ▒ ▓██▒    ▓██▒▓██▒▓  ██▒ ▓▒                                 
░ ▓██▄   ▒██░    ▒██▒▒██▒▒ ▓██░ ▒░                                 
  ▒   ██▒▒██░    ░██░░██░░ ▓██▓ ░                                  
▒██████▒▒░██████▒░██░░██░  ▒██▒ ░                                  
▒ ▒▓▒ ▒ ░░ ▒░▓  ░░▓  ░▓    ▒ ░░                                    
░ ░▒  ░ ░░ ░ ▒  ░ ▒ ░ ▒ ░    ░                                     
░  ░  ░    ░ ░    ▒ ░ ▒ ░  ░                                       
      ░      ░  ░ ░   ░                                            
                                                                   
                                                                   
             

EOF
        echo -e "Game created by \e[36mR.A.D.T.M\e[0m, University: \e[36mSLIIT\e[0m"
    fi
}
                         
# Start

