resource "aws_eks_cluster" "main_cluster" {
  name     = "main-server-cluster"
  role_arn = aws_iam_role.eks.arn
  vpc_config {
    subnet_ids = [aws_subnet.main.id]
  }
}

resource "aws_eks_cluster" "model_cluster" {
  name     = "model-hosting-cluster"
  role_arn = aws_iam_role.eks.arn
  vpc_config {
    subnet_ids = [aws_subnet.model_hosting.id]
  }
}

resource "aws_eks_cluster" "jenkins_cluster" {
  name     = "jenkins-pipeline-cluster"
  role_arn = aws_iam_role.eks.arn
  vpc_config {
    subnet_ids = [aws_subnet.jenkins.id]
  }
}