variable "provider_region" {
    description = "Region"
    type        = string
    default     = "us-east-2"
}

variable "instance_ami" {
    description = "EC2 instance AMI"
    type        = string
    default     = "ami-02f3416038bdb17fb"
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
