module "aws-dev" {
    source = "../../infra"
    instancia = "t2.micro"
    region = "us-east-1"
    chave = "iac2dev"
}