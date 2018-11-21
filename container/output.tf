
output "IPAddress" {
        value = "${docker_container.container_id.ip_address}"
}

output "Name" {
        value = "${docker_container.container_id.name}"
}

