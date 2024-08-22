#!/bin/bash

#update the package list
apt-get update

#install Nginx
apt-get install -y nginx

#Create HTML

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Red Lettering</title>
    <style>
        body {
            color: red;
        }
    </style>
</head>
<body>
    <h1>Niklas skapade denna sida</h1>
    <p>This is a paragraph with red text.</p>
</body>
</html>
EOF