variable "tags" {
  description = "A map of tags and values in the same format as other resources accept. This will be converted into the non-standard format that the aws_autoscaling_group requires."
  type        = map(string)
  default     = {}
}

variable "create" {
  default = true
}

variable "cluster_properties" {
  type = map(string)
}

variable "vpc_security_group_ids" {
  type = list(string)
}

variable "name" {
  description = "The description of the ASG"
}

variable "subnet_ids" {
  description = "The list of subnets where the ASG can reside"
  type        = list(string)
}

variable "iam_instance_profile" {
  description = "The IAM Profile of the autoscaling group instances"
}

variable "enable_mixed_cluster" {
  description = "If true, a mixed instance ASG is created, using the options from 'mixed_cluster_options'"
}

variable "mixed_cluster_instances_distribution" {
  description = "An object defining the on-demand vs. spot composition of a mixed cluster."
  type        = map(string)
}

variable "mixed_cluster_launch_template_override" {
  description = "List of nested arguments provides the ability to specify multiple instance types."
  type        = list(map(string))
}

variable "enable_detailed_monitoring" {
  description = "Data is available in 1-minute periods for an additional cost"
}

