provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "my-tf-test-bucket-1239025381"
  acl    = "private"

  tags = {
    Name                 = "My bucket"
    git_commit           = "b64b7044924ded061ced9671ca7e2494d557f001"
    git_file             = "main.tf"
    git_last_modified_at = "2021-10-05 05:06:56"
    git_last_modified_by = "28880387+tsmithv11@users.noreply.github.com"
    git_modifiers        = "28880387+tsmithv11"
    git_org              = "tsmithv11"
    git_repo             = "yor_demo2"
    yor_trace            = "52a2363d-4e47-42f1-afd5-55e8b0fad174"
  }
}
