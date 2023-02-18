provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}
terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "reddit-terraform-backup"
    region     = "ru-central1"
    key        = "terraform.tfstate"
    access_key = "access_key"
    secret_key = "secret_key"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
