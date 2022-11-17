terraform {
    required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 3.27"
      }
    }

    required_version = ">= 0.14.9"
}

// provedor
provider "aws" {
    profile = "default"
    region = var.region
  
}

// recurso
resource "aws_instance" "app_server" {
    ami = "ami-08c40ec9ead489470"
    instance_type = var.instancia

    key_name = var.chave
    # user_data = <<-EOF
    #                 #!/bin/bash
    #                 cd /home/ubuntu
    #                 git clone https://github.com/marcusaloise/WebPage.git
    #                 cd WebPage
    #                 nohup busybox httpd -f -p 8080 &    
    #                 EOF

    tags = {
      Name = "AluraEstudos"
    }

}

resource "aws_key_pair" "chaveSSH" {
    key_name = var.chave # o nome da sua chave vai aqui
    public_key = file("${var.chave}.pub")
}

output "public_ip" {
  value = aws_instance.app_server.public_ip
}