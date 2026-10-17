provider "aws" {
  region = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the bucket"
  type        = string
}

resource "aws_s3_bucket" "my_bucket" {
  count = 3
  bucket = "${var.bucket_name}-${count.index}"


 tags = {

  Name = "Thilan bucket"
  Env  = "dev"
 }
}
output "bucket_arn" {
  value = aws_s3_bucket.my_bucket[*].arn
}


