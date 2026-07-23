#!/bin/bash

set -eux

apt-get update -y
apt-get upgrade -y

apt-get install -y nginx

systemctl enable nginx
systemctl start nginx

cat > /var/www/html/index.html <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HUG Lagos/Ibadan Terraform Challenge</title>

    <style>
        body{
            background:#0f172a;
            color:white;
            font-family:Arial,Helvetica,sans-serif;
            display:flex;
            justify-content:center;
            align-items:center;
            height:100vh;
            margin:0;
        }

        .card{
            text-align:center;
            background:#1e293b;
            padding:40px;
            border-radius:12px;
            box-shadow:0 0 20px rgba(0,0,0,.3);
        }

        h1{
            color:#38bdf8;
        }

        p{
            color:#cbd5e1;
        }
    </style>

</head>

<body>

<div class="card">

<h1>Anthony Ajibola-Ajo</h1>

<h2>HUG Lagos/Ibadan Terraform Challenge</h2>

<p>Provisioned with Terraform on AWS</p>

</div>

</body>
</html>
EOF