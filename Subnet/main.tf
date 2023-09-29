resource "aws_subnet" "my_subnet" {
  vpc_id            = var.vpc
  cidr_block        = var.cidr
  availability_zone = var.zone

 tags = {
    Name = var.name
    owner = var.owner

  }
#   volume_tags = {
#     Name = var.name
#     owner = var.owner
#   }
}
# "172.16.10.0/24"