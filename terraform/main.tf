terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
    }
  }
}

provider "docker" {}

resource "docker_image" "smart_parking" {
  name = "wiembennasser/smart-parking:latest"
}

resource "docker_container" "smart_parking" {
  name  = "smart-parking-terraform"
  image = docker_image.smart_parking.image_id

  ports {
    internal = 3000
    external = 3001
  }
}