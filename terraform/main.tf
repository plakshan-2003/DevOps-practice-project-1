# Local provider example (for learning without cloud cost)
# if using cloude can get  aws_instance 

resource "local_file" "devops_note" {
  filename = "${path.module}/devops_env.txt"
  content  = "Environment initialized successfully for SLIIT Intern Project!"
}