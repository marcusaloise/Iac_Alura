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
    region = "us-east-1"
  
}

// recurso
resource "aws_instance" "app_server" {
    ami = "ami-09d56f8956ab235b3"
    instance_type = "t2.micro"

    key_name = "id_rsa"
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

