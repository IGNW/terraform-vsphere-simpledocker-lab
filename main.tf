module "lamp-server" {
  source                  = "github.com/IGNW/terraform-vsphere-lamp"

  hostname                = "lamp"
  domain                  = "ignw.io"
  vsphere_server          = "172.20.1.5"
  vsphere_datacenter      = "pod1-hx-dc"
  vsphere_datastore       = "Primary"
  vsphere_compute_cluster = "pod1-hx"
  vsphere_network         = "vm-network-40"
  disk_template           = "ubuntu1604_template_packer"
  num_cpus                = 2
  memory_mb               = 4000
  root_volume_size        = 50
  vsphere_user            = "administrator@vsphere.local"
  vsphere_password        = "${var.vsphere_password}"
  terraform_password      = "${var.terraform_password}"
}
