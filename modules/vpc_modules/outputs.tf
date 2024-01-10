output "vpc_id" {
    value = aws_vpc.vpc_main.id
}

output "subnet_cidr_id" {
    value = aws_subnet.subnet_main.id
}

output "project_name" {
    value = var.project_name
}