resource "aws_sqs_queue" "main" {
  name = "${terraform.workspace}-udated-resource-sqs"
}

#${terraform.workspace} = static reference to my workspace name