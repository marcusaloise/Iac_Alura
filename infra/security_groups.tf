resource "aws_security_group" "grupo_de_acesso" {
  name = "acesso_geral"
  description = "grupo do Dev"
  ingress{
      cidr_blocks = [ "0.0.0.0/0" ]
      ipv6_cidr_blocks = [ "::/0" ]
      from_port = 0
      to_port = 0
      protocol = "-1"
    }
    egress{
      cidr_blocks = [ "0.0.0.0/0" ]
      ipv6_cidr_blocks = [ "::/0" ]
      from_port = 0
      to_port = 0
      protocol = "-1"
    }
    tags = {
      Name = "acess_groups"
    }
}