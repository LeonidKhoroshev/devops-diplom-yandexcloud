terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">=1.4"

  backend "s3" {
    endpoints = {
      s3 = "https://storage.yandexcloud.net"
   }
    bucket                      = "diplom-project-khoroshevlv"
    region                      = "ru-central1"
    key                         = "terraform.tfstate"
    access_key                  = "YC//////////UIo9s"
    secret_key                  = "YCO..................AhxW"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
  }
}

provider "yandex" {
  token                         = var.token
  cloud_id                      = var.cloud_id
  folder_id                     = var.folder_id
  zone                          = var.default_zone
}
