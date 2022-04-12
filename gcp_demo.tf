resource "google_service_account" "default" {
  account_id   = "service_account_id"
  display_name = "Service Account"
}

resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
  labels = {
    git_commit           = "1de92a179f468138ca118fbb59afc4872756c34b"
    git_file             = "gcp_demo_tf"
    git_last_modified_at = "2022-04-12-07-53-00"
    git_last_modified_by = "28880387tsmithv11"
    git_modifiers        = "28880387tsmithv11"
    git_org              = "tsmithv11"
    git_repo             = "yor_demo2"
    yor_trace            = "543117f3-aac8-408b-a6dd-c0627230f4d2"
  }
}
