#!/bin/bash

echo "Change PHP Version into CLI..."
echo "sudo update-alternatives --config php"
sudo update-alternatives --config php
echo "Done!"
echo ""

echo "Disable the PHP$1 module..."
echo "sudo a2dismod php$1"
sudo a2dismod php$1
echo "Done!"
echo ""

echo "Restarting Apache2..."
echo "sudo systemctl restart apache2"
sudo systemctl restart apache2
echo "Done!"
echo ""

echo "Disable the PHP$1 configration..."
echo "sudo a2disconf php$1-fpm"
sudo a2disconf php$1-fpm
echo "Done!"
echo ""

echo "Restarting Apache2..."
echo "sudo systemctl restart apache2"
sudo systemctl restart apache2
echo "Done!"
echo ""

echo "Enable the PHP$2 module..."
echo "sudo a2enmod php$2"
sudo a2enmod php$2
echo "Done!"
echo ""

echo "Restarting Apache2..."
echo "sudo systemctl restart apache2"
sudo systemctl restart apache2
echo "Done!"
echo ""

echo "Enable the PHP$2 configration..."
echo "sudo a2enconf php$2-fpm"
sudo a2enconf php$2-fpm
echo "Done!"
echo ""

echo "Restarting Apache2..."
echo "sudo systemctl restart apache2"
sudo systemctl restart apache2
echo "Done!"
echo ""

echo "Check PHP Version..."
echo "php -v"
php -v
