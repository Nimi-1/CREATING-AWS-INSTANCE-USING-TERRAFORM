terraform {
    backend "s3" {
        bucket = "buckettoluca"
        key    = "prod/terraform.tfstate"
        region = "us-east-1"
    }
}