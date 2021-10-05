resource "aws_s3_bucket" "test_bucket" {
  bucket = "my-tf-test-bucket-123902538"
  acl    = "private" 

  tags = {
    Name                 = "My bucket"
    git_commit           = "bb71a5b5027a9c7da866cf669e7aec207b570f5a"
    git_file             = "main.tf"
    git_last_modified_at = "2021-07-22 06:54:36"
    git_last_modified_by = "28880387+tsmithv11@users.noreply.github.com"
    git_modifiers        = "28880387+tsmithv11"
    git_org              = "tsmithv11"
    git_repo             = "yor_demo2"
    yor_trace            = "52a2363d-4e47-42f1-afd5-55e8b0fad174"
  }
}
