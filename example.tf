module "hello_world_nginx" {
  source = "./terraform-module"

  image = var.image
  name  = var.name
  port  = var.port
}

output "container_id" {
  value = module.hello_world_nginx.container_id
}

output "ip_address" {
  value = module.hello_world_nginx.ip_address
}

output "hostname" {
  value = module.hello_world_nginx.hostname
}

output "port" {
  value = module.hello_world_nginx.port
}
