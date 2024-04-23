data "aws_s3_bucket" "selected" {
  bucket = "dev-yuji-tfstate"
}

resource "aws_s3_bucket_versioning" "tfstate_versioning" {
  bucket = data.aws_s3_bucket.selected.id

  versioning_configuration {
    status = "Enabled"
  }
}
