output "mod_out" {
  value       = [for i in module.ec2 : i.ami]
}