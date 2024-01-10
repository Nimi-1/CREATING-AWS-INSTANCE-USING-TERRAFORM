provider "aws" {
    region = var.region
}

module "instance_module" {
    source = "../../modules/instance_modules"
    ami = var.ami
    instance_type = var.instance_type
    project_name = var.project_name
    enviroment = var.enviroment
    subnet_cidr_id = module.vpc_module.subnet_cidr_id
}

module "vpc_module" {
    source = "../../modules/vpc_modules"
    project_name = var.project_name
    vpc_cidr = var.vpc_cidr
    subnet_cidr = var.subnet_cidr
}