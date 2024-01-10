terraform {
    backend "s3" {
        bucket = "buckettoluca"
        key    = "dev/terraform.tfstate"
        region = "us-east-1"
    }
}