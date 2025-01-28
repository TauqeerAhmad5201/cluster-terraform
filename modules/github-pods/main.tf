resource "null_resource" "spaces_builder" {
  provisioner "local-exec" {
    command = "echo 'Deploying Spaces Builder on GitHub Pods'"
  }
}