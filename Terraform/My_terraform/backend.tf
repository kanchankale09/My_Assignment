terraform {
  backend "gcs" {
    bucket      = "terrbucket"
    prefix      = "terra-backend"
    credentials = "credentials.json"
  }
}