resource "aws_vpc" "luiz_vpc" {
    cidr_block = var.luiz_vpc_cidr_block

    enable_dns_support   = true
    enable_dns_hostnames = true

    tags = {
        Name = "Luiz DEV"
    }
}

resource "aws_internet_gateway" "luiz_igw" {
    vpc_id = aws_vpc.luiz_vpc.id
    tags = {
        Name = "Luiz Gateway"
    }
}

resource "aws_subnet" "luiz_pub_subnet" {
    vpc_id                  = aws_vpc.luiz_vpc.id
    cidr_block              = var.luiz_pub_subnet_cidr_block
    availability_zone       = "us-east-1a"
    map_public_ip_on_launch = true
    tags = {
        Name = "Luiz Public Subnet 1"
    }
}

resource "aws_route_table" "luiz_route_table" {
    vpc_id = aws_vpc.luiz_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.luiz_igw.id
    }

    tags = {
        Name = "Luiz Route Table"
    }
}

resource "aws_route_table_association" "luiz_rt_pub_association" {
    subnet_id      = aws_subnet.luiz_pub_subnet.id
    route_table_id = aws_route_table.luiz_route_table.id
}
