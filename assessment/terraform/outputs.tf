output "ec2_instance_id" {
  value = aws_instance.wazuh.id
}

output "private_ip" {
  value = aws_instance.wazuh.private_ip
}
