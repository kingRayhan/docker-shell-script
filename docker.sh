#!/bin/bash

# Docker Install/Uninstall Script for Ubuntu
# This script installs or uninstalls Docker on Ubuntu

function install_docker {
    echo "Updating package database..."
    sudo apt-get update -y

    echo "Installing prerequisites..."
    sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

    echo "Adding Docker's official GPG key..."
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

    echo "Adding Docker APT repository..."
    sudo add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) \
        stable"

    echo "Updating package database again..."
    sudo apt-get update -y

    echo "Installing Docker..."
    sudo apt-get install -y docker-ce

    echo "Docker installed successfully!"
    docker --version

    ## echo "Create docker group"
    ## sudo groupadd docker

    echo "Adding current user to the docker group..."
    sudo usermod -aG docker $USER

    echo "Docker group addition complete. You may need to log out and back in for changes to take effect."
}

function uninstall_docker {
    echo "Removing Docker..."
    sudo apt-get purge -y docker-ce docker-ce-cli containerd.io
    sudo apt-get autoremove -y
    sudo rm -rf /var/lib/docker

    echo "Docker uninstalled successfully!"
}

function display_help {
    echo "Usage: $0 [option]"
    echo "Options:"
    echo "  install    Install Docker"
    echo "  uninstall  Uninstall Docker"
    echo "  help       Display this help message"
}

# Check if the user is root
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root. Use sudo."
    exit 1
fi

# Main script execution
case "$1" in
    install)
        install_docker
        ;;
    uninstall)
        uninstall_docker
        ;;
    help)
        display_help
        ;;
    *)
        echo "Invalid option. Use 'help' to see available options."
        ;;
esac
