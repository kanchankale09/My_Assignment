resource "google_sql_database" "database" {
  name     = var.db_name
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_database_instance" "instance" {
  name             = "kksqldb"
  region           = "us-central1"
  database_version = "MYSQL_5_7"
  settings {
    tier = "db-f1-micro"
    ip_configuration {
         ipv4_enabled = "true"

        authorized_networks {
        value           = "0.0.0.0/0"
        name            = "authnet"
        
                          }
   
                    }
            }

  deletion_protection  = "true"
}

resource "google_sql_user" "users" {
  name     = var.db_user
  instance = google_sql_database_instance.instance.name
  host     = var.db_host
  password = var.db_pwd
}