variable "tenancy_ocid" {
  description = "OCID da Tenancy"
}

variable "user_ocid" {
  description = "OCID do usuário"
}

variable "fingerprint" {
  description = "Fingerprint da chave"
}

variable "private_key_path" {
  description = "Caminho para a chave privada"
}

variable "region" {
  description = "Região"
}

variable "availability_domain" {
  description = "Domínio de disponibilidade"
}

variable "compartment_id" {
  description = "OCID do compartment"
}

variable "shape" {
  description = "Tipo de forma da instância"
}

variable "private_ip" {
  description = "Endereço IP privado"
}

variable "assign_public_ip" {
  description = "Atribuir IP público"
}

variable "display_name" {
  description = "Nome da instância"
}

variable "shape_config" {
  description = "Configuração da forma da instância"
  type        = object({
    ocpus         = number
    memory_in_gbs = number
  })
}

variable "source_details" {
  description = "Detalhes da origem da instância"
  type        = object({
    source_type = string
    source_id   = string
  })
}

variable "create_vnic_details" {
  description = "Detalhes da criação da VNIC"
  type        = object({
    subnet_id        = string
    private_ip       = string
    assign_public_ip = bool
  })
}
