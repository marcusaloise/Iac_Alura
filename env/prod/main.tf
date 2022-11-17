module "aws-prod" {
  source = "../../infra"
  instancia = "t2.micro"
  region = "us-east-1"
  chave = "iac2prod"
}

output "ip_publico" {
  value = module.aws-prod.public_ip
}