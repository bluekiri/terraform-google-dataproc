output "dataproc_master_instance_names" {
    description = "List of master instance names which have been assigned to the cluster"
    value = "${google_dataproc_cluster.mycluster.master_config.instance_names}"
}