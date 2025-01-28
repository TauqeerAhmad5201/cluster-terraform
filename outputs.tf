# Output VPC IDs from VPC module
output "main_vpc_id" {
    description = "ID of the main VPC"
    value       = module.vpc.main_vpc_id
}

output "model_hosting_vpc_id" {
    description = "ID of the model hosting VPC"
    value       = module.vpc.model_hosting_vpc_id
}

output "jenkins_vpc_id" {
    description = "ID of the jenkins VPC"
    value       = module.vpc.jenkins_vpc_id
}

# Output EKS cluster names and endpoints
output "main_cluster_endpoint" {
    description = "Endpoint for main EKS cluster"
    value       = module.eks.main_cluster.endpoint
}

output "model_cluster_endpoint" {
    description = "Endpoint for model hosting EKS cluster"
    value       = module.eks.model_cluster.endpoint
}

output "jenkins_cluster_endpoint" {
    description = "Endpoint for jenkins EKS cluster"
    value       = module.eks.jenkins_cluster.endpoint
}

# Output RDS endpoint
output "database_endpoint" {
    description = "The connection endpoint for the RDS instance"
    value       = module.rds.postgres.endpoint
}

# Output Amplify app details
output "amplify_app_id" {
    description = "ID of the Amplify app"
    value       = module.amplify.frontend.id
}

output "amplify_app_default_domain" {
    description = "Default domain of the Amplify app"
    value       = module.amplify.frontend.default_domain
}