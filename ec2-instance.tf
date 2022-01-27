provider "aws" {
        access_key = "AKIA2QZ3M7OMCQQM423M"
        secret_key = "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"
        region = "ap-south-1"
}
resource "aws_instance" "myfirst_instance" {
        ami = "ami-0af25d0df86db00c1"
        count = 1
        key_name = "key"
        instance_type = "t2.micro"
        security_groups = ["my_security_group"]
        tags = {
                Name = "terraform_instance"
        }
}
