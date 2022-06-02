//Instance

resource "google_compute_instance" "default" {
  name          = var.instance_name
  machine_type  = var.instance_type
  zone          = var.zone

  boot_disk {
    initialize_params {
      image = var.instance_image
    }
  }
  network_interface {
    network = var.vpc_name
    subnetwork = var.subnet_self_link
    network_ip = var.address
  }

  metadata_startup_script = "echo hi > /test.txt"

}


// Address

resource "google_compute_address" "default" {
  name         = var.address_name
  subnetwork   = var.subnet_id
  address_type = var.address_type
  address      = var.address
  region       = var.region
}


//Disk (HDD)

resource "google_compute_disk" "default" {
  name  = var.disk_name
  type  = var.disk_type
  size  = var.disk_size
  zone  = var.zone

}

resource "google_compute_attached_disk" "default" {
  disk     = google_compute_disk.default.id
  instance = google_compute_instance.default.id
}