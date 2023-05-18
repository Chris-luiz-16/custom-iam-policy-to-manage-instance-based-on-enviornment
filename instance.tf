# Creating ec2-instance Webserver-prod

resource "aws_instance" "prod" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key
  vpc_security_group_ids = ["sg-09a5a43f8400c81c4"]
  user_data              = file("userdata.sh")
  tags = {
    "Name"    = "Webserver-prod"
    "Env"     = "Prod"
    "Project" = "Uber"
  }
}
# Creating ec2-instance Webserver-dev

resource "aws_instance" "dev" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key
  vpc_security_group_ids = ["sg-09a5a43f8400c81c4"]
  user_data              = file("userdata.sh")
  tags = {
    "Name"    = "Webserver-dev"
    "Env"     = "Dev"
    "Project" = "Uber"

  }
}
