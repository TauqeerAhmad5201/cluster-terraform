# main.tf
module "vpc" {
  source = "./modules/vpc"
}

module "eks" {
  source = "./modules/eks"
}

module "ec2" {
  source = "./modules/ec2"
}

module "rds" {
  source = "./modules/rds"
}

module "amplify" {
  source = "./modules/amplify"
}

module "github_pods" {
  source = "./modules/github-pods"
}