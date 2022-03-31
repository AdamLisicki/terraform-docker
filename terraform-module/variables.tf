variable "image" {
  type = string
  default = "adamlisicki/hello_world_nginx"
  description = "Docker Image" 
}

variable "name"{
  type = string
  default = "hello_world"
  description = "Docker container name"
}

variable "port" {
  type = number
  default = 8081
  description = "External port"
}



