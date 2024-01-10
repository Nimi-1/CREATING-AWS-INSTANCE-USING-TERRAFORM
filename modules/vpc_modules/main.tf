resource "aws_vpc" "vpc_main" {
    cidr_block       = var.vpc_cidr
    instance_tenancy = "default"
    tags = {
        Name = "${var.project_name}_vpc"
    }
}


resource "aws_subnet" "subnet_main" {
    vpc_id     = aws_vpc.vpc_main.id
    cidr_block = var.subnet_cidr
    tags = {
        Name = "${var.project_name}_subnet"
    }
}