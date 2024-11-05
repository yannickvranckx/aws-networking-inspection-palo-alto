locals {
  tgw_id                      = "tgw-122345"        #TGW ID Greenfield
  firewall_vpc                = "tgw-attach-12345" #Firewall Inspection
  inspection_rt               = "tgw-rtb-12345"    # RT ID inspection
  post_inspection_rt          = "tgw-rtb-12345"    # RT ID post inspection
  peering_rt                  = "tgw-rtb-12345"    # RT ID peering
  dx_gw                       = "tgw-attach-12345" # DX Gateway ID
  attachment_tgw              = "tgw-attach-12345" # smi dev attach id
  attachment_tgw_cidr                = "x.x.x.x/x"               # smi dev cidr
