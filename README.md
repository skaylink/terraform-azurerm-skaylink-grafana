# Skaylink Terraform module; Grafana (Preview)

This module deploys a simple Azure managed Grafana instance and log analytics workspace for your metrics needs.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.9.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_log_analytics_workspace.workspace](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace) | resource |
| [azurerm_resource_group_template_deployment.grafana](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group_template_deployment) | resource |
| [azurerm_role_assignment.grafana_admin](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_user_object_id"></a> [admin\_user\_object\_id](#input\_admin\_user\_object\_id) | The object ID of the user you want to give admin access to the Grafana instance. | `string` | n/a | yes |
| <a name="input_log_analytics_workspace"></a> [log\_analytics\_workspace](#input\_log\_analytics\_workspace) | Whether or not you want to deploy a log analytics workspace for the Grafana instance, set to false if you already have an instance. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | The prefix name you want to use to deploy the resources, typically the name of the project | `string` | n/a | yes |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | The name of the resource group you are deploying the services to. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->