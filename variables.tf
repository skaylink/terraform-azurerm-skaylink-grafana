# A Terraform module to create a subset of cloud components
# Copyright (C) 2022 Skaylink GmbH

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

# For questions and contributions please contact info@iq3cloud.com

variable "name" {
  type        = string
  description = "The prefix name you want to use to deploy the resources, typically the name of the project"
}

variable "resource_group" {
  type        = string
  description = "The name of the resource group you are deploying the services to."
}

variable "log_analytics_workspace" {
  type        = bool
  default     = true
  description = "Whether or not you want to deploy a log analytics workspace for the Grafana instance, set to false if you already have an instance."
}

variable "admin_user_object_id" {
  type        = string
  description = "The object ID of the user you want to give admin access to the Grafana instance."
}
