#resource <resource-type> <resource-name>
resource "aws_security_group" "allow_ssh {
    name= "allow-ssh"
    description = "Allowing ssh access"

    ingress {
        from_port        = 20
        to_port          = 20
        protocol         = "                                 "
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
  }
  egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
  }

    tag = {
        name = "allow_ssh"
        createdby = "Sindhu"
    }
}