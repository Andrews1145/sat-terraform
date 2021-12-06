output "vpc_id" {
  value = aws_vpc.mysatvpc.id
}
output "pubsubnet" {
  value = aws_subnet.myPubSbt.id
}
output "privatesubnet" {
  value = aws_subnet.myPrivateSbt.id
}