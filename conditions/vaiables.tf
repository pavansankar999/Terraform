variable "ami_id" {
    type = string
    default = "ami-048f4445314bcaa09"
    description = "THIS IS RHEL 9 AMI ID"
  
}

variable environment {
    
    default = "prod"
    
}
variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "EC2 instance type"
  
}
variable "ec2_tags" {
    type = map
    default = {
        project = "expense"
        component = "backend"
        Environment = "dev"
        Name = "expense-backend-dev"
        purpose = "terraform-practice"
    }
    
}
variable "from_port" {
    type = number
    default = 22
    description = "Port to allow inbound traffic"
}
variable "to_port" {
    type = number
    default = 22
    description = "Port to allow inbound traffic"
}
variable "cicd_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}
variable "sg_tags" {
    type = map
    default = {
        project = "expense"
        component = "backend"
        Environment = "dev"
        Name = "expense-backend-dev"
        purpose = "terraform-practice"
    }
    
}