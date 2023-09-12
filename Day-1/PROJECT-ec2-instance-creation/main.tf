provider "aws" {
    region = "ap-south-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-02bb7d8191b50f4bb"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    key_name = "Terraform-key"
    subnet_id = "subnet-0bc534fcf0d9e430f"
    tags = {
        Name = "tf-example"
    }
}