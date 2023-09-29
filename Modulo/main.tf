module "ec2" {
  source        = "../Res1"
  for_each      = var.loop_ins
  ami-id        = module.ec2.ins_out
  subnet-id     = each.value.subnet
  instance-type = each.value.ins-type
  instance-name = each.value.ins-name
  owner         = each.key
}
module "s3" {
  source      = "../Res2"
  count       = 2
  bucket_name = var.bucket[count.index]
  tag_name    = var.name[0]
  environment = var.env[0]
  owner       = var.own[0]
}
