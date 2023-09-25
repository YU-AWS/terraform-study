resource "aws_s3_bucket" "tfstate" {
  bucket = "${var.env}-${var.name}-tfstate"
}

resource "aws_s3_bucket_versioning" "tfstate_versioning" {
  bucket = aws_s3_bucket.tfstate.id

  versioning_configuration {
     status = "Enabled"
  }
}