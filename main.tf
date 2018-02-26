resource "google_dataproc_cluster" "mycluster" {
    name    = "${var.cluster_name}"
    project = "${var.project_id}"
    region  = "${var.region_name}"

    #TODO    
    #labels {
    #    foo = "bar"
    #}

    cluster_config {
        delete_autogen_bucket = ${var.delete_autogen_bucket}
        #TODO - default to ""?
        #staging_bucket        = "dataproc-staging-bucket"

        master_config {
            num_instances     = ${var.master_num_instances}
            machine_type      = "${var.master_machine_type}"
            disk_config {
                boot_disk_size_gb = ${var.master_boot_disk_size_gb}
            }
        }

        worker_config {
            num_instances     = ${var.worker_num_instances}
            machine_type      = "${var.worker_machine_type}"
            disk_config {
                boot_disk_size_gb = ${var.worker_boot_disk_size_gb}
                num_local_ssds    = ${var.worker_num_local_ssds}
            }
        }

        preemptible_worker_config {
            num_instances     = ${var.preemptible_num_instances}
        }

        # Override or set some custom properties
        software_config {
            image_version       = "${var.image_version}"
            override_properties = {
                #TODO
                #"dataproc:dataproc.allow.zero.workers" = "true"
            }
        }

        gce_cluster_config {
            #network = "${google_compute_network.dataproc_network.name}"
            
            #TODO
            #tags    = ["foo", "bar"]
        }

    }
}