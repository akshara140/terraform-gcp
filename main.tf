provider "google" {
  project = var.project_id
  region  = var.region
}

module "vm" {
  source       = "./modules/vm"
  vm_name      = "tf-vm"
  machine_type = "e2-micro"
  zone         = var.zone
}

module "db" {
  source           = "./modules/db"
  db_instance_name = "tf-sql-db"
  region           = var.region
}

