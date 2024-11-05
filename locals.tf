locals {
  tgw_id                      = "tgw-122345"        #TGW ID Greenfield
  firewall_vpc                = "tgw-attach-12345" #Firewall Inspection
  inspection_rt               = "tgw-rtb-12345"    # RT ID inspection
  post_inspection_rt          = "tgw-rtb-12345"    # RT ID post inspection
  peering_rt                  = "tgw-rtb-12345"    # RT ID peering
  dx_gw                       = "tgw-attach-12345" # DX Gateway ID
  smi_dev_attach              = "tgw-attach-12345" # smi dev attach id
  smi_dev_cidr                = "x.x.x.x/x"               # smi dev cidr
  smi_prd_attach              = "tgw-attach-12345" # smi prd attach id
  smi_prd_cidr                = "x.x.x.x/x"                # smi prd cidr
  smi_tst_attach              = "tgw-attach-12345" # smi tst attach id
  smi_tst_cidr                = "10.194.254.0/24"              # smi tst cidr
