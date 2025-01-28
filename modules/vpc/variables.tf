variable "main_vpc_cidr" {
    description = "CIDR block for the main VPC"
    type        = string
    default     = "10.0.0.0/16"
}

variable "model_hosting_vpc_cidr" {
    description = "CIDR block for the model hosting VPC"
    type        = string
    default     = "10.1.0.0/16"
}

variable "jenkins_vpc_cidr" {
    description = "CIDR block for the Jenkins VPC"
    type        = string
    default     = "10.2.0.0/16"
}