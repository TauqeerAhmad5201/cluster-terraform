variable "region" {
    description = "The AWS region to deploy resources"
    type        = string
    default     = "us-east-1"
}

variable "vpc_cidr_blocks" {
    description = "CIDR blocks for the VPCs"
    type        = map(string)
    default = {
        main           = "10.0.0.0/16",
        model_hosting  = "10.1.0.0/16",
        jenkins        = "10.2.0.0/16"
    }
}

variable "eks_cluster_names" {
    description = "Names of the EKS clusters"
    type        = map(string)
    default = {
        main_cluster    = "main-server-cluster",
        model_cluster   = "model-hosting-cluster",
        jenkins_cluster = "jenkins-pipeline-cluster"
    }
}

variable "db_instance_class" {
    description = "The instance class for the RDS instance"
    type        = string
    default     = "db.t3.micro"
}

variable "db_allocated_storage" {
    description = "The allocated storage for the RDS instance"
    type        = number
    default     = 20
}

variable "db_username" {
    description = "The username for the RDS instance"
    type        = string
    default     = "admin"
}

variable "db_password" {
    description = "The password for the RDS instance"
    type        = string
    default     = "securepassword"
}

variable "ec2_instance_count" {
    description = "The number of EC2 instances to launch"
    type        = number
    default     = 3
}

variable "ec2_instance_type" {
    description = "The instance type for the EC2 instances"
    type        = string
    default     = "t3.medium"
}

variable "ec2_ami" {
    description = "The AMI ID for the EC2 instances"
    type        = string
    default     = "ami-12345678"
}