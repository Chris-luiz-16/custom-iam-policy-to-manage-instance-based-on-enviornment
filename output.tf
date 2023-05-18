output "Public_IP_of_dev_Server" {
  value = aws_instance.dev.public_ip
}

output "http_URL_of_dev_server" {
  value = "http://${aws_instance.dev.public_dns}"
}

output "Public_IP_of_prod_Server" {
  value = aws_instance.prod.public_ip
}

output "http_URL_of_prod_server" {
  value = "http://${aws_instance.prod.public_dns}"
}
output "Password_dev" {
  value = aws_iam_user_login_profile.dev.password
}

output "Password_prod" {
  value = aws_iam_user_login_profile.prod.password
}


