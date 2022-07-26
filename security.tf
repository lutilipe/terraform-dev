resource "aws_security_group" "luiz_dev_security_gp" {
    name        = "luiz_dev_security_gp"
    description = "Allows SSH"
    vpc_id      = aws_vpc.luiz_vpc.id

    ingress {
        protocol    = "tcp"
        from_port   = 22
        to_port     = 22
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        protocol    = "-1"
        from_port   = 0
        to_port     = 0
        cidr_blocks = ["0.0.0.0/0"]
    }
}
