variable "ingress_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [22, 80]
}

variable "egress_ports" {
  type        = list(number)
  description = "list of engress ports"
  default     = [0]
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

variable "private_key_path" {
  type = string
  description = "Chave private para acesso a instância"
  default = "~/zabbix-terraform/keys/id_rsa"
}

variable "users" {
  type = list
  description = "Lista de users"
  default = ["centos"] 
}

variable "public_key_path" {
  type = string
  description = "Chave public que será armazenada na instância"
  default = "~/zabbix-terraform/keys/id_rsa.pub"
}

variable "cpu_credits" {
  description = "Opção de créditos de CPU da instância (\"unlimited\" ou \"standard\")"
  default     = ""
}

variable "access_priv" {
  type = string
  description = ""
  default = "~/zabbix-terraform/keys/id_rsa"
}

variable "path_dir_clone_repo" {
  type = string
  description = ""
  default = "~/zabbix-terraform/keys/keys_acesso.zip"
}

variable "path_script" {
  type = string
  description = ""
  default = "~/zabbix-terraform/script.sh"
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
