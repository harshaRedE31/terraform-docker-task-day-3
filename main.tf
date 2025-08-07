# Configures the required providers for Terraform
terraform {
  required_providers {
    # Specifies the Docker provider
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

# Configures the Docker provider to connect to the local Docker daemon
provider "docker" {}

# Defines a Docker image resource to be pulled from Docker Hub
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# Defines a Docker container resource to be created from the nginx image
resource "docker_container" "nginx_container" {
  # This creates a dependency on the docker_image resource
  image = docker_image.nginx.image_id
  name  = "tutorial-nginx-container"

  # Maps port 8000 on your machine to port 80 in the container
  ports {
    internal = 80
    external = 8002
  }
}