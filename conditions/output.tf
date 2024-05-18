output "instance_ip_addr" {
  value = aws_instance.db.private_ip
}