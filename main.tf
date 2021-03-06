
# Download ghost latest docker image and run it using terraform

module "image" {
	source = "./image"
	image = "${lookup(var.image, var.env)}"
}

module "container" {
	source = "./container"
	image = "${module.image.image_out}"
	container_name = "${lookup(var.container_name,var.env)}"
	int_port = "${lookup(var.int_port,var.env)}"
	ext_port = "${lookup(var.ext_port,var.env)}"
}

