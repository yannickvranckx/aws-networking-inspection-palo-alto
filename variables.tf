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
variable "cidr_153_89_194_0_24" {
  description = "CIDR on-prem"
  default     = "153.89.194.0/24"
}

variable "cidr_172_16_0_0_12" {
  description = "CIDR on-prem"
  default     = "172.16.0.0/12"
}

variable "cidr_192_168_0_0_16" {
  description = "CIDR on-prem"
  default     = "192.168.0.0/16"
}

variable "cidr_153_89_126_0_24" {
  description = "CIDR on-prem"
  default     = "153.89.126.0/24"
}

variable "cidr_10_40_0_0_16" {
  description = "CIDR on-prem"
  default     = "10.40.0.0/16"
}

variable "cidr_10_80_0_0_16" {
  description = "CIDR on-prem"
  default     = "10.80.0.0/16"
}

variable "cidr_10_81_0_0_16" {
  description = "CIDR on-prem"
  default     = "10.81.0.0/16"
}

variable "cidr_10_82_0_0_16" {
  description = "CIDR on-prem"
  default     = "10.82.0.0/16"
}

variable "cidr_10_87_32_0_19" {
  description = "CIDR on-prem"
  default     = "10.87.32.0/19"
}

variable "cidr_10_200_0_0_16" {
  description = "CIDR Azure via DC"
  default     = "10.200.0.0/16"
}

variable "cidr_10_87_0_0_16" {
  description = "CIDR on-prem"
  default     = "10.87.0.0/16"
}

variable "cidr_10_160_4_0_22" {
  description = "CIDR Citrix"
  default     = "10.160.4.0/22"
}

variable "cidr_10_160_8_0_22" {
  description = "CIDR Citrix"
  default     = "10.160.8.0/22"
}

variable "cidr_10_201_0_0_16" {
  description = "CIDR Azure"
  default     = "10.201.0.0/16"
}

variable "cidr_10_122_21_0_24" {
  description = "CIDR Azure"
  default     = "10.122.21.0/24"
}

# VPN routing vars - To be replaced with Propagations post migration
# -------------------------------------------------------------------

variable "cidr_10_197_12_0_24" {
  description = "CIDR OPTISTFM ACC"
  default     = "10.197.12.0/24"
}

variable "cidr_10_198_8_0_24" {
  description = "CIDR OPTISTFM PRD"
  default     = "10.198.8.0/24"
}

variable "cidr_10_197_4_0_23" {
  description = "CIDR ALIGNE ACC"
  default     = "10.197.4.0/23"
}

variable "cidr_10_197_1_0_24" {
  description = "CIDR ALIGNE DEV"
  default     = "10.197.1.0/24"
}

variable "cidr_10_197_2_0_23" {
  description = "CIDR ALIGNE PRD"
  default     = "10.197.2.0/23"
}

variable "cidr_10_197_0_0_24" {
  description = "CIDR ALIGNE SIM"
  default     = "10.197.0.0/24"
}