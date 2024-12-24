#!/bin/bash

# Update the package list
apt-get update

# Install nginx
apt-get install -y nginx

# Start nginx service
systemctl start nginx

# Enable nginx to start on boot
systemctl enable nginx

# Create a custom index.html
cat > /var/www/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
 <title>Welcome to Nginx</title>
</head>
<body>
 <h1>Welcome to Devansh Exam on AWS EC2 configured via terraform!</h1>
 <p>If you see this page, the nginx web server is successfully installed and working. All the configuration is applied by Devansh Pandey via terraform. Thank You</p>
</body>
</html>
EOF
