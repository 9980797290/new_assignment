resource "aws_instance" "web" {
#   ami           = "ami-0c95d38b24a19de18"
ami=var.ami1
  instance_type = "t2.micro"

  tags = {
    Name = "mounisha"
  }
}

resource "aws_instance" "web1" {
#   ami           = "ami-0c95d38b24a19de18"
count = var.choice ? 1 : 0
ami=var.ami2
  instance_type = "t2.micro"

  tags = {
    Name = "rithesh"
  }
}

