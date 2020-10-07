# Provisioning zabbix-server using Terraform - AWS

![Badge](https://img.shields.io/badge/terraform-zabbix-red)
![Badge](https://img.shields.io/badge/aws-zabbix-red)

## Dependencies
![Badge](https://img.shields.io/badge/AWS%20-Access--key-blue)

## Terraform Module - AWS - EC2

Example module for provisioning, pay attention to the PATH of the cloned repository on your machine in source

```hcl
module "ec2" {
  source = "../terraform-zabbix/"
  
  name = "Zabbix-server by terraform"
  profile = "CustomProfile"
  ami = "ami-02e98f78"
  instance_type = "t2.micro"
  region = "us-east-1"
  key_name = "my-key"

  vpc_id = "vpc-id"  
  subnet_id = "subnet-id"

  ebs_block_device = [{
    device_name         = "/dev/sda1"
    volume_type         = "standard"
    volume_size         = 10
  }]
 
  tags = {
    Environment = "zabbix by terraform"
  }
}

```
```
terraform init
terraform plan
terraform apply
```
### CPU Credits

If the instance is of type T2 or T3, the variable `cpu_credits` can be used
to enable [T2 / T3 Unlimited] mode[t-unlimited-docs]:

```hcl
module "ec2" {
  # ...

  cpu_credits = "unlimited"
}
```
### Instances Multi

```hcl
module "ec2" {
  # ...

  instance_count = 3
}
```
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ami | ID da AMI usada para provisionar a instância | `any` | n/a | yes |
| cpu\_credits | Opção de créditos de CPU da instância ("unlimited" ou "standard") | `string` | `"standard"` | no |
| disable\_api\_termination | Controla a proteção de destruição (terminate) da instância | `bool` | `true` | no |
| ebs\_block\_device | Lista com maps de configuração de volumes adicionais da instância | `list` | `[]` | yes |
| ebs\_optimized | Controla se a instância será provisionada como EBS-optimized | `bool` | `false` | no |
| instance\_count | Número de instâncias que serão provisionadas | `number` | `1` | no |
| tags | Map de tags da instância e dos volumes | `map` | `{}` | yes |
| instance\_type | Tipo (classe) da instância | `any` | n/a | yes |
| key\_name | Nome do Key Pair a ser usado para a instância | `string` | `""` | yes |
| name | Nome da instância | `any` | ` ` | yes |
| root\_block\_device | Lista com maps de configuração do volume raiz da instância | `list` | n/a | no |
| subnet\_id | ID da subnet onde a instância será provisionada | `string` | `""` | yes |
| vpc\_id | ID da vpc onde a instância será provisionada | `string` | `""` | yes |
| region | region onde será proviosionada | `string` | `""` | yes |
| profile | profile configurado na máquina Access-key e secret-key | `string` | `""` | yes |


## Licença
GLPv3