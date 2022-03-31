<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_docker"></a> [docker](#requirement\_docker) | ~> 2.16.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_docker"></a> [docker](#provider\_docker) | ~> 2.16.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [docker_container.nginx](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/container) | resource |
| [docker_image.image](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/image) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_image"></a> [image](#input\_image) | Docker Image | `string` | `"adamlisicki/hello_world_nginx"` | no |
| <a name="input_name"></a> [name](#input\_name) | Docker container name | `string` | `"hello_world"` | no |
| <a name="input_port"></a> [port](#input\_port) | External port | `number` | `8081` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_container_id"></a> [container\_id](#output\_container\_id) | n/a |
| <a name="output_hostname"></a> [hostname](#output\_hostname) | n/a |
| <a name="output_ip_address"></a> [ip\_address](#output\_ip\_address) | n/a |
| <a name="output_port"></a> [port](#output\_port) | n/a |
<!-- END_TF_DOCS -->