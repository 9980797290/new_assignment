terraform {
  backend "s3" {
    bucket = "myjhansi"
    key    = "varshi.tfstate"
    region = "us-east-1"
    dynamodb_table = "jhansi"
  }
}