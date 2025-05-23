provider "aws" {
  region     = "eu-north-1"
}

resource "aws_instance" "web" {
  ami           = "ami-02b59c03f7baf2c13"
  instance_type = "t3.micro"
  key_name      = "demo_key"

  tags = {
    Name = "Terraform-Web"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y nginx"
    ]
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("demo_key.pem")
    host        = self.public_ip
  }
}
