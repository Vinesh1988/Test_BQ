resource "google_bigquery_dataset" "default" {
    description                 = var.description
    location                    = var.location
    default_table_expiration_ms = var.duration
    for_each=toset(var.dtname)
    dataset_id                  = join("_",[var.id,each.value,var.env])
    friendly_name               = join("_",[var.id,each.value,var.env])

}


