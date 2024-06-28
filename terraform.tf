terraform {
  required_version = ">= 1.3.7"

    required_provider {
        aws = {
        source = "registry.terraform.io/hashicorp/aws"
        }
    }
}
