terraform {
  required_version = ">= 0.13"

  
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 2.16.0"
    }
  }
}


resource "docker_image" "image" {
  name = var.image
}

resource "docker_container" "nginx" {
  image = docker_image.image.latest
  name = var.name
  ports {
    internal = 80
    external = var.port
  }
}
