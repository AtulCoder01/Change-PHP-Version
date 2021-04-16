#!/bin/bash

echo "Change PHP Version into CLI..."
echo "sudo update-alternatives --config php"
sudo update-alternatives --config php
echo "  OK!"

echo "Disable the PHP$1 module..."
echo -n "sudo a2dismod php$1"
sudo a2dismod php$1
echo "  OK!"

echo "Restarting Apache2..."
echo -n "sudo systemctl restart apache2"
sudo systemctl restart apache2
echo "  OK!"

echo "Disable the PHP$1 configration..."
echo -n "sudo a2disconf php$1-fpm"
sudo a2disconf php$1-fpm
echo "  OK!"

echo "Restarting Apache2..."
echo -n "sudo systemctl restart apache2"
sudo systemctl restart apache2
echo "  OK!"

echo "Enable the PHP$2 module..."
echo -n "sudo a2enmod php$2"
sudo a2enmod php$2
echo "  OK!"

echo "Restarting Apache2..."
echo -n "sudo systemctl restart apache2"
sudo systemctl restart apache2
echo "  OK!"

echo "Enable the PHP$2 configration..."
echo -n "sudo a2enconf php$2-fpm"
sudo a2enconf php$2-fpm
echo "  OK!"

echo "Restarting Apache2..."
echo -n "sudo systemctl restart apache2"
sudo systemctl restart apache2
echo "  OK!"

echo "Check PHP Version..."
echo "php -v"
php -v
