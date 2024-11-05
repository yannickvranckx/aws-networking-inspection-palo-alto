#Set the provider and your default tags
provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      domain       = "Networking Services"
      created_with = "terraform"
      created_by   = "yannick.vranckx.ext@luminus.be"
      description  = "Inspection Model"
      map-migrated = "mig39446"
    }
  }
}