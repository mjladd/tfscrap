output "internal-port" {
    value = docker_container.nginx.ports
}

output "docker-image" {
    value = docker_image.nginx.name
}