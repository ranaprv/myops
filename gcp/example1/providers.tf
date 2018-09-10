provider "google" {
  credentials = "${file("/home/praveen/gcp/example1/credentials.json")}"
  project     = "${var.project-name}"
  region      = "${var.region}"
}
