# This script moves all of the profile settings into the home directory
# A folder is created to backup all the files that would be overwritten


ARRAY=(".acmTemplate" ".bash_aliases" ".bash_profile" ".bashrc" ".profile" ".vimrc" ".tmux.conf")

# Saves all the profile that was previously there
mkdir $HOME/profile_backup
printf "%s\n" "${ARRAY[@]}" | xargs -I {} mv $HOME/{} $HOME/profile_backup/ 2> /dev/null

# Copies the new profile into the home directory
find . -name ".*" ! -name ".git" ! -name "." | xargs -I {} cp {} $HOME/


