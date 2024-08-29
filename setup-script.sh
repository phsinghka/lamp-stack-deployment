#!/bin/bash

# Ensures your system packages are up to date.
sudo apt update && sudo apt upgrade -y

# Enable UFW (Uncomplicated Firewall) and allow SSH.
sudo ufw allow OpenSSH
sudo ufw enable


# Install Apache
sudo apt install apache2 -y

# Enable and start Apache
sudo systemctl enable apache2
sudo systemctl start apache2

# Allow HTTP and HTTPS traffic.
sudo ufw allow 'Apache Full'
sudo ufw reload


# Install MySQL
sudo apt install mysql-server -y

# Secure MySQL
sudo mysql_secure_installation <<EOF

y
0
y
y
y
y
EOF

# Install PHP
sudo apt install php libapache2-mod-php php-mysql -y

# Create a PHP file in the Apache root directory.
sudo echo "<?php phpinfo(); ?>" > /var/www/html/info.php

# Creating a sample PHP application and place it in /var/www/html/.
sudo rm /var/www/html/index.html
sudo echo "<?php echo 'Hello World!'; ?>" > /var/www/html/index.php


# Restart Apache to load PHP
sudo systemctl restart apache2

echo "LAMP stack has been successfully installed!"

