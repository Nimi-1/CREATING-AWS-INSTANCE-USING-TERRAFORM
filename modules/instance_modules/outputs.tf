output "ami" {
    value = aws_instance.vm.ami
}

output "instance_type" {
    value = aws_instance.vm.instance_type
}

output "project_name" {
    value = var.project_name
}

