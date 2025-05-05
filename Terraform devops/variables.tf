variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "project_name" {
  description = "Project name to be used for resource naming"
  type        = string
  default     = "demo-ecs"
}

variable "container_port" {
  description = "Port exposed by the docker image"
  type        = number
  default     = 80
}

variable "container_image" {
  description = "Docker image to be deployed"
  type        = string
  default     = "nginx:latest"
}

variable "container_cpu" {
  description = "CPU units for the container"
  type        = number
  default     = 256
}

variable "container_memory" {
  description = "Memory for the container"
  type        = number
  default     = 512
}