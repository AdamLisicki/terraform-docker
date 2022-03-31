output "container_id" {
  value = docker_container.nginx.id
}

output "ip_address" {
  value = docker_container.nginx.ip_address
}

output "hostname" {
  value = docker_container.nginx.hostname
}

output "port" {
  value = docker_container.nginx.ports[0].external
}
