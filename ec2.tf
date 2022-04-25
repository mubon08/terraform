provider "aws" {
    region = "us-east-2"
}

resource "aws_instance" "terraform-demo" {

    ami = "ami-0c6a6b0e75b2b6ce7"
    instance_type = "t2.nano"  
    key_name = "Devkeys"
    tags = {
      "Name" = "Jenkins"
       Env = "dev"
    }
}  
output "public-ip" {
    value = aws_instance.terraform-demo.public_ip
}  
output "public-dns" {
    value = aws_instance.terraform-demo.public_dns
}  