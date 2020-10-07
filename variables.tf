variable "ingress_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [22, 10051, 80]
}

variable "egress_ports" {
  type        = list(number)
  description = "list of engress ports"
  default     = [0]
}

variable "name" {
  description = "Nome da instância"
}

variable "tags" {
  description = "Map de tags da instância e dos volumes"
  default     = {}
}

variable "instance_count" {
  description = "Número de instâncias que serão provisionadas"
  default     = 1
}

variable "region" {
  type = string
  description = "Região para provisionar os recursos"
  default = ""
}

variable "profile" {
  type = string
  description = "Perfil com permissões para provisionar os recursos da AWS"
  default = ""
}
variable "ami" {
  description = "ID da AMI usada para provisionar a instância"
  default = ""
}

variable "instance_type" {
  description = "Tipo (classe) da instância"
  default = ""
}

variable "key_name" {
  type = string
  description = "Nome do Key Pair a ser usado para a instância"
  default     = ""
}

variable "users" {
  type = list
  description = "Lista de users"
  default = ["centos"] 
}

variable "cpu_credits" {
  description = "Opção de créditos de CPU da instância (\"unlimited\" ou \"standard\")"
  default     = ""
}

variable "path_script" {
  type = string
  description = ""
  default = "~/terraform-zabbix/script.sh"
}

variable "ebs_optimized" {
  description = "Controla se a instância será provisionada como EBS-optimized"
  default     = false
}

variable "vpc_id" {
  description = "Lista com maps de configuração do volume raiz da instância"
  type = string
  default = ""
}

variable "subnet_id" {
  type = string
  default = ""
}

variable "ebs_block_device" {
  description = "Lista com maps de configuração de volumes adicionais da instância"
  type        = list
  default     = []
}
