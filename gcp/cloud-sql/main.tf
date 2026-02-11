resource "google_sql_database_instance" "mainDb-Instance" {
    name= var.db_instance_name
    database_version = var.database_version
    region = var.region
    project = var.project_id

    settings {
      tier = var.db_machine_type

      ip_configuration {
        private_network = google_compute_network.main_vpc.id
      }
    }

    deletion_protection = var.deletion_protection
    

}