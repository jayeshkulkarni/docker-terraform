# output the container ip and name

output "IPAddress" {
	value = "${module.container.IPAddress}"
}

output "name" {
	value = "${module.container.Name}"
}

