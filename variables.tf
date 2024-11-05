# Variable file
# --------------

# Main vars
# ---------
variable "aws_region" {
  description = "Region to set deployment in"
  default     = "eu-west-3" # Paris Region
}

# Static routing vars
# --------------------
variable "cidr_x_x_x_x" {
  description = "CIDR on-prem"
  default     = "x.x.x.x/x"
}
