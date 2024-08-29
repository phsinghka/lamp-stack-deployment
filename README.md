# LAMP Stack Deployment with Automated Script

## Overview
This repository contains the necessary files and script to deploy a LAMP stack on an Ubuntu 20.04 server.

## Project Structure
- `setup-script.sh`: The Bash script that automates the deployment.

## Deployment Instructions
1. Clone the repository to your server.
   ```bash
   git clone https://github.com/phsinghka/lamp-stack-deployment.git

2. Clone the repository to your server.
   ```bash
   cd lamp-stack-deployment
   chmod +x setup-script.sh
   ./setup-script.sh

## Security Enhancements
- SSH key-based authentication is recommended.
- UFW is configured to allow only necessary traffic.
- SSL certificates are installed using Let’s Encrypt.

