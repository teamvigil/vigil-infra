terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-3"  # Paris
}

# Module pour créer un serveur de base de données
module "database" {
  source = "../modules/database"

  environment_name = "staging"
  db_instance_type = "db.t4g.micro"
}
