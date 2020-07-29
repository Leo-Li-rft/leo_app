variable "default_tags" {
    type = map(string)
    default = {
        "tr:financial-identifier": "620111002"
        "tr:application-asset-insight-id": "205419"
        "tr:environment-type": "DEVELOPMENT"
        "tr:service-name": "VM"
  }
}
