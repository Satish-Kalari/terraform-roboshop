variable "common_tags" {
    default = {
        Project = "roboshop"
        Environment = "dev"
        Terraform = "true"
    }  
}

variable "project_name" {
    type = string
    default = "roboshop"  
}

variable "environment" {
    type = string
    default = "dev"  
}

variable "sg_tags" {
    type = map
    default = {}  
}

variable "mongodb_sg_ingress_rules" {
    type = list
    default = [
    {
        description      = "Aloow Port 80"
        from_port        = 80 
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]

    },
    {
        description      = "Aloow Port 443"
        from_port        = 443 
        to_port          = 443
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }    
]
} 
