variable "default_tags" {
    type = map(string)
    default = {
        "tr:financial-identifier": "620111002"
        "tr:application-asset-insight-id": "205419"
        "tr:environment-type": "DEVELOPMENT"
        "tr:service-name": "VM"
        "tr:resource-owner": "leoli2@refinitiv.com"
  }
}

variable "bucket_name" {
  type    = string
  default = "a205419-cvm-ve-bucket-20200730"
}
