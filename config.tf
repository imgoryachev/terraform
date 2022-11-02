terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  token                    = "y0_AgAAAAAF-iSuAATuwQAAAADS4lwJMNcemp1sRNKi93B7yjgLtyQNd0w"
  cloud_id                 = "b1g6d4vgtjmffh3gvpnb"
  folder_id                = "b1gqrdopu5ud97k191qu"
  zone                     = "ru-central1-b"
}

/*
resource "yandex_compute_instance" "default" {
  name        = "test"
  platform_id = "standard-v1"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "image_id"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.foo.id}"
  }
  metadata = {
    foo      = "bar"
    ssh-keys = "ubuntu:${file("/home/bloodon/.ssh/id_rsa.pub")}"
  }
}
*/