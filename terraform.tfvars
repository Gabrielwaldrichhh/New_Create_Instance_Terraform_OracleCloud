tenancy_ocid     = ""
user_ocid        = ""
fingerprint      = ""
private_key_path = ""
region           = ""

availability_domain = ""
compartment_id      = ""
display_name        = ""
shape               = ""
private_ip          = ""
assign_public_ip    = false/true

shape_config = {
  ocpus         = 1
  memory_in_gbs = 16
}

source_details = {
  source_type = ""
  source_id   = ""
}

create_vnic_details = {
  subnet_id        = ""
  private_ip       = ""
  assign_public_ip = false/true
}
