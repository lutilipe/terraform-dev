variable "provider_region" {
    description = "Region"
    type        = string
    default     = "us-east-1"
}

variable "instance_ami" {
    description = "EC2 instance AMI"
    type        = string
    default     = "ami-052efd3df9dad4825"
}

variable "instance_type" {
    description = "EC2 instance type"
    type        = string
    default     = "t2.micro"
}

variable "instance_name" {
    description = "EC2 instance name"
    type        = string
    default     = "@mc/server - PROD"
}

variable "luiz_vpc_cidr_block" {
    description = "VPC CIDR block"
    type        = string
    default     = "10.0.0.0/16"
}

variable "luiz_pub_subnet_cidr_block" {
    description = "Public subnet 1 CIDR block"
    type        = string
    default     = "10.0.1.0/24"
}