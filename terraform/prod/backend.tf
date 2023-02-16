#provider "yandex" {
#  service_account_key_file = var.service_account_key_file
#  cloud_id                 = var.cloud_id
#  folder_id                = var.folder_id
#  zone                     = var.zone
#}
terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "reddit-terraform-backup"
    region     = "ru-central1"
    key        = "terraform.tfstate"
    access_key = "YCAJEQaMmJDWp1JOsdnWZjpUu"
    secret_key = "YCONTfz5bcXmvElmwGaSeGyxEBuLi12o0fwrNGZg"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
