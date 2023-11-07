provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}

resource "oci_core_instance" "instancia5" {
  count               = 1
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  display_name        = var.display_name
  shape               = var.shape

  shape_config {
    ocpus         = var.shape_config.ocpus
    memory_in_gbs = var.shape_config.memory_in_gbs
  }

  source_details {
    source_type = var.source_details.source_type
    source_id   = var.source_details.source_id
  }

  create_vnic_details {
    subnet_id        = var.create_vnic_details.subnet_id
    private_ip       = var.create_vnic_details.private_ip
    assign_public_ip = var.create_vnic_details.assign_public_ip
  }

  timeouts {
    create = "30m"
  }
}

