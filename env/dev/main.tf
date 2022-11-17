module "aws-dev" {
    source = "../../infra"
    instancia = "t2.micro"
    region = "us-east-1"
    chave = "chave-dev"
}

output "ip_publico" {
    value = module.aws-dev.public_ip
}