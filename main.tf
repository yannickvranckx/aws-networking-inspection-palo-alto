#Set the provider and your default tags
provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      domain       = "tag"
      created_with = "tag"
      created_by   = "tag"
      description  = "tag"
      map-migrated = "tag"
    }
  }
}
