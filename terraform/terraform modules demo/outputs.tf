output "public_ip_address" {
  value = aws_instance.my-instance.public_ip
}