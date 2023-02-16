variable cloud_id {
  description = "Cloud"
}
variable folder_id {
  description = "Folder"
}
variable zone {
  description = "Zone"
  default     = "ru-central1-a"
}
variable public_key_path {
  description = "~/.ssh/appuser.pub"
}
variable private_key_path {
  description = "~/.ssh/appuser"
}
variable image_id {
  description = "fd8c1jhm6t6tadvh634u"
}
variable subnet_id {
  description = "ru-central1-a"
}
variable service_account_key_file {
  description = "~/.ssh/keys/authorized_key.json"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
variable db_disk_image {
  description = "Disk image for MongoDB"
  default     = "reddit-app-base"
}
variable "access_key" {
  description = "access_key"
}
variable "secret_key" {
  description = "secret_key"
}
variable "bucket_name" {
  description = "bucket_name"
}
