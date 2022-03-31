module "hello_world_nginx" {
  source = "../"

  image = var.image
  name  = var.name
  port  = var.port
}

output "port" {
  value = module.hello_world_nginx.port
}

