resource "google_compute_instance" "ovirt-engine-instance" {
  name = "ovirt-engine"

  ## for a setup having multiple instances of the same type, you can do
  ## the following, there would be 2 instances of the same configuration
  ## provisioned
  # count        = 1
  # name         = "${var.instance-name}-${count.index}"
  machine_type = "${var.vm_type["512gig"]}"

  zone = "${var.region}"

  tags = [
    "${var.network}-firewall-ssh",
    "${var.network}-firewall-http",
    "${var.network}-firewall-https",
    "${var.network}-firewall-icmp",
    "${var.network}-firewall-postgresql",
    "${var.network}-firewall-openshift-console",
    "${var.network}-firewall-secure-forward",
  ]

  boot_disk {
  initialize_params {
    image = "${var.os["centos7"]}"
    }
  }


  metadata {
    hostname = "ovirt-engine-instance"
  }

  network_interface {
    subnetwork = "${google_compute_subnetwork.ovirt_network_subnetwork.name}"


  }
}
