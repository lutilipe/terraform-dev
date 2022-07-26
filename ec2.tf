resource "aws_instance" "mc_server" {
    ami = var.instance_ami
    instance_type = var.instance_type
    key_name = data.aws_key_pair.dev_luiz.key_name

    subnet_id = aws_subnet.luiz_pub_subnet.id
    vpc_security_group_ids = [aws_security_group.luiz_dev_security_gp.id]

    tags = {
        Name = var.instance_name
    }
}

resource "aws_eip" "luiz_dev_eip" {
    instance = aws_instance.mc_server.id
    vpc      = true
}
