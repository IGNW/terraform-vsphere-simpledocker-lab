module "lamp-server" {
  source                  = "github.com/IGNW/terraform-vsphere-lamp"

  hostname                = "lamp"
  domain                  = "ignw.io"
  vsphere_server          = "10.254.252.5"
  vsphere_datacenter      = "POC-Lab"
  vsphere_datastore       = "IGNW-POC"
  vsphere_compute_cluster = "POC"
  vsphere_network         = "ignw-poc|vesta-devops|servers"
  disk_template           = "CentOS7_base_template"
  num_cpus                = 2
  memory_mb               = 4000
  root_volume_size        = 20
  vsphere_user            = "administrator@vsphere.local"
  vsphere_password        = "${var.vsphere_password}"
  terraform_password      = "${var.terraform_password}"
}
