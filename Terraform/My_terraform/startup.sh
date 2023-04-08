 #! /bin/bash
 apt update
 apt -y install apache2
 cat <<EOF > /var/www/html/index.html
 <html><body><p>Hello Apache Kanchan Here.</p></body></html>