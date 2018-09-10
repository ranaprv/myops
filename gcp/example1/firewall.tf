resource "google_compute_firewall" "ssh" {
  name    = "${var.network}-firewall-ssh"
  network = "${google_compute_network.ovirt_network.name}"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}
