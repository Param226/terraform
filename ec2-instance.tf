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
# resource “aws_security_group" "my_security_group" {
#         name = "my_security_group"
#         description = "security group for terraform ec2 instance"
#         ingress {
#                 from_port = 8080
#                 to_port = 8080
#                 protocol = "tcp"
#                 cidr_blocks = ["0.0.0.0/0]
#         }
#         ingress {
#                 from_port = 22
#                 to_port = 22
#                 protocol = "tcp"
#                 cidr_blocks = ["0.0.0.0/0]
#         }
#         egress {
#                 from_port   = 0
#                 to_port     = 65535
#                 protocol    = "tcp"
#                 cidr_blocks = ["0.0.0.0/0"]
#         }
#         tags {
#                 name = "my_security_group"
#         }
# }
