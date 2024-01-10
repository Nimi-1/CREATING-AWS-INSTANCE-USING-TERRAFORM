resource "aws_instance" "vm" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = var.subnet_cidr_id
    user_data = file("${path.module}/userdata.sh")
    tags = {
        Name = "${var.project_name}_vm"
        Enviroment = var.enviroment
    }
}