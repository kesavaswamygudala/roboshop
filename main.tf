resource "random_id" "rand" {
  byte_length = 4
}

resource "aws_s3_bucket" "roboshop" {
  bucket = "roboshop-${random_id.rand.hex}"

  tags = {
    Project = "Roboshop"
    Managed = "Terraform"
    Env     = "Practice"
  }
}
