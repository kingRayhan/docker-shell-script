# Docker Install/Uninstall Script for Ubuntu

This repository contains a shell script designed to simplify the installation and uninstallation of Docker on Ubuntu systems. With this script, you can easily manage Docker installations without manually following complex steps. It provides a user-friendly interface for both installing and uninstalling Docker, making it a convenient tool for developers and system administrators.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
  - [Installing Docker](#installing-docker)
  - [Uninstalling Docker](#uninstalling-docker)
  - [Help](#help)
- [Running via GitHub Gist](#running-via-github-gist)
- [Explanation](#explanation)
- [Contributing](#contributing)
- [License](#license)

## Prerequisites
To use this script, ensure you have the following:

- **Ubuntu Operating System**: This script is intended for Ubuntu 16.04, 18.04, 20.04, or newer.
- **Root Access**: You must have root privileges or use `sudo` to execute the script.
- **Internet Connection**: Required for downloading Docker packages and keys.


Clone this repository or download the script file directly:

```bash
git clone https://raw.githubusercontent.com/kingRayhan/docker-shell-script
cd docker-shell-script
```

## Usage
The script provides three primary functions:

- **Install Docker**: Installs the latest version of Docker.
- **Uninstall Docker**: Removes Docker and associated files.
- **Help**: Displays usage instructions.



```bash
curl -fsSL https://raw.githubusercontent.com/kingRayhan/docker-shell-script/main/docker.sh | sudo bash -s install
curl -fsSL https://raw.githubusercontent.com/kingRayhan/docker-shell-script/main/docker.sh | sudo bash -s uninstall
curl -fsSL https://raw.githubusercontent.com/kingRayhan/docker-shell-script/main/docker.sh | sudo bash -s help
```
