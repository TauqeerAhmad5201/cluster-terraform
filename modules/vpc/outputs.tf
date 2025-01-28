output "main_vpc_id" {
    value = aws_vpc.main.id
}

output "model_hosting_vpc_id" {
    value = aws_vpc.model_hosting.id
}

output "jenkins_vpc_id" {
    value = aws_vpc.jenkins.id
}