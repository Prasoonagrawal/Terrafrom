


resource "null_resource"  "nullremote1" {

depends_on = [
  aws_volume_attachment.ebs_att
]

connection {
    type     = "ssh"
    user     = "ec2-user"
private_key=file("D:/Arth/Terraform/terraform-training-ws/Terraform_key.pem")
  host     = aws_instance.webos1.public_ip
  }

provisioner "remote-exec" {
    inline = [
      "sudo yum  install httpd  -y",
      "sudo  yum  install php  -y",
      "sudo systemctl start httpd",
      "sudo systemctl start httpd",
 "sudo mkfs.ext4 /dev/xvdc",
      "sudo  mount /dev/xvdc  /var/www/html",
  "sudo yum install git -y",
      "sudo git clone https://github.com/vimallinuxworld13/gitphptest.git   /var/www/html/web"

    ]
  }

}




