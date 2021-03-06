##################################################
## https://github.com/Wxrlds/FedoraSetupScripts ##
##################################################

clear
echo "Proceeding to add 'dft' command to update all dnf and flatpak packages then shutdown the system. Press any key to continue."
read -rsn1
echo "# DoneForToday command" | sudo tee -a /etc/bashrc
echo "alias dft='sudo dnf upgrade && flatpak upgrade && shutdown 0'" | sudo tee -a /etc/bashrc
echo "alias dfty='sudo dnf upgrade -y && flatpak upgrade -y && shutdown 0'" | sudo tee -a /etc/bashrc