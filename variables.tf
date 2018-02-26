variable "cluster_name" {
    description = "The name of the cluster, unique within the project and zoneData"
}

variable "project_id" {
    description = "The project in which the cluster will exist"
}

variable "region_name" {
    description = "The region in which the cluster and associated nodes will be created in"
    default = "global"
}

variable "delete_autogen_bucket" {
    description = "If this is set to true, upon destroying the cluster, if no explicit staging_bucket was specified (i.e. an auto generated bucket was relied upon) then this auto generated bucket will also be deleted as part of the cluster destroy"
    default     = "falses"
}

variable "master_num_instances" {
    description = "Specifies the number of master nodes to create"
    default     = 1
}

variable "master_num_instances" {
    description = "The name of a Google Compute Engine machine type to create for the master"
    default     = "n1-standard-4"
}

variable "master_boot_disk_size_gb" {
    description = "Size of the primary disk attached to each node, specified in GB"
    default     = 10
}

variable "worker_num_instances" {
    description = "Specifies the number of worker nodes to create"
    default     = 2
}

variable "worker_num_instances" {
    description = "The name of a Google Compute Engine machine type to create for the worker nodes"
    default     = "n1-standard-4"
}

variable "worker_boot_disk_size_gb" {
    description = "Size of the primary disk attached to each worker node, specified in GB"
    default     = 10
}

variable "worker_num_local_ssds" {
    description = "The amount of local SSD disks that will be attached to each worker cluster node"
    default     = 0
}

variable "preemptible_num_instances" {
    description = "Specifies the number of preemptible nodes to create"
    default     = 0
}

variable "image_version" {
    description = "The Cloud Dataproc image version to use for the clustere"
    default     = "1.2"
}