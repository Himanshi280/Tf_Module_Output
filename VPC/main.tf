resource "aws_vpc" "my_vpc" {
  cidr_block = var.cidr

  tags = {
    Name = var.name
    owner = var.owner
  }
#   volume_tags = {
#     Name = var.name
#     owner = var.owner
#   }
}
# "172.16.0.0/16"