module "hello_world_nginx" {
  source = "./terraform-module"

  image = var.image
  name  = var.name
  port  = var.port
}
