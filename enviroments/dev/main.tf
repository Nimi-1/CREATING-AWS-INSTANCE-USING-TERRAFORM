provider "aws" {
    region = var.region  
}

module "vpc_module" {
    source           = "../../modules/vpc_modules"
    project_name     = var.project_name
    vpc_cidr         = var.vpc_cidr
    subnet_cidr      = var.subnet_cidr
}

module "instance_modules" {
    source          = "../../modules/instance_modules"
    project_name    = var.project_name
    instance_type   = var.instance_type
    ami             = var.ami
    subnet_cidr_id = module.vpc_module.subnet_cidr_id
    enviroment     = var.enviroment
}