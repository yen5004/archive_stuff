cat << 'EOF' > cmd_logr_install.sh
# Install logger script
echo "###########_Custom Script Below_###########" | tee -a ~/.zshrc
echo "# Script created by Franco M." | tee -a ~/.zshrc
echo "###########_Custom Script Below_###########" | tee -a ~/.bashrc
echo "# Script created by Franco M." | tee -a ~/.bashrc

# Prompt username
echo "Please enter your username"

#Read user input 
read -r name

# Store username in the .zshrc
echo "export NAME=$name" >> ~/.zshrc

# Display time in terminal
# echo 'RPROMPT="[%D{%m/%f/%Y}|%D{%L:%M}]"' >> ~/.zshrc
echo 'RPROMPT="[%D{%d%b%Y}|%D{%L:%M}]"' >> ~/.zshrc

# Send logs to a file with time stamp
echo 'test "$(ps -ocommand= -p $PPID | awk '\''{print $1}'\'')" == '\''script'\'' || (script -a -f $HOME/log/$(date +"%F")_shell.log)' >> ~/.zshrc

# Confirm user is stored and display IP info and more
echo "echo TED-User: $NAME" >> ~/.zshrc
echo "ifconfig" >> ~/.zshrc
echo 'note="Use EXIT to close Log Script"' >> ~/.zshrc
echo "NOTE: Use EXIT to close Log Script"
echo 'echo $note' >> ~/.zshrc

# Store username in the .bashrc
echo "export NAME=$name" >> ~/.bashrc
# echo 'RPROMPT="[%D{%m/%f/%Y}|%D{%L:%M}]"' >> ~/.bashrc
echo 'RPROMPT="[%D{%d%b%Y}|%D{%L:%M}]"' >> ~/.bashrc  

# Sent logs to a file with time stamp
echo 'test "$(ps -ocommand= -p $PPID | awk '\''{print $1}'\'')" == '\''script'\'' || (script -a -f $HOME/log/$(date +"%F")_shell.log)' >> ~/.bashrc

#Confirm user is stored and display IP info and more
echo "TED-User: $NAME" >> ~/.bashrc
echo 'note="use exit to  close script"' >> ~/.bashrc
echo 'echo $note' >> ~/.bashrc
echo "Command logger install complete"
echo "cmd_logr_install.sh finished!"

EOF

