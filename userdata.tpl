
#!/bin/bash 

sudo yum update -y
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo amazon-linux-extras install docker
sudo yum install -y docker
sudo service docker start
sudo usermod -aG docker ec2-user
echo "Docker installation completed" >> /var/log/userdata.log

