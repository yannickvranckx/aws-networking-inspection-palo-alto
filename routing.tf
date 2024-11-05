# All the static general routing detailed here - on-prem // DirectConnect
# ------------------------------------------------------------------------

# 
resource "aws_ec2_transit_gateway_route" "cidr_153_89_194_0_24" { # A static route pointing to the DX GW
  destination_cidr_block         = var.cidr_153_89_194_0_24
  transit_gateway_attachment_id  = local.dx_gw
  transit_gateway_route_table_id = local.post_inspection_rt
}

resource "aws_ec2_transit_gateway_route" "cidr_172_16_0_0_12" { # A static route pointing to the DX GW
  destination_cidr_block         = var.cidr_172_16_0_0_12
  transit_gateway_attachment_id  = local.dx_gw
  transit_gateway_route_table_id = local.post_inspection_rt
}

resource "aws_ec2_transit_gateway_route" "cidr_192_168_0_0_16" { # A static route pointing to the DX GW
  destination_cidr_block         = var.cidr_192_168_0_0_16
  transit_gateway_attachment_id  = local.dx_gw
  transit_gateway_route_table_id = local.post_inspection_rt
}

resource "aws_ec2_transit_gateway_route" "cidr_153_89_126_0_24" { # A static route pointing to the DX GW
  destination_cidr_block         = var.cidr_153_89_126_0_24
  transit_gateway_attachment_id  = local.dx_gw
  transit_gateway_route_table_id = local.post_inspection_rt
}

resource "aws_ec2_transit_gateway_route" "cidr_10_40_0_0_16" { # A static route pointing to the DX GW
  destination_cidr_block         = var.cidr_10_40_0_0_16
  transit_gateway_attachment_id  = local.dx_gw
  transit_gateway_route_table_id = local.post_inspection_rt
}

resource "aws_ec2_transit_gateway_route" "cidr_10_80_0_0_16" { # A static route pointing to the DX GW
  destination_cidr_block         = var.cidr_10_80_0_0_16
  transit_gateway_attachment_id  = local.dx_gw
  transit_gateway_route_table_id = local.post_inspection_rt
}

resource "aws_ec2_transit_gateway_route" "cidr_10_81_0_0_16" { # A static route pointing to the DX GW
  destination_cidr_block         = var.cidr_10_81_0_0_16
  transit_gateway_attachment_id  = local.dx_gw
  transit_gateway_route_table_id = local.post_inspection_rt
}

resource "aws_ec2_transit_gateway_route" "cidr_10_82_0_0_16" { # A static route pointing to the DX GW
  destination_cidr_block         = var.cidr_10_82_0_0_16
  transit_gateway_attachment_id  = local.dx_gw
  transit_gateway_route_table_id = local.post_inspection_rt
}

resource "aws_ec2_transit_gateway_route" "cidr_10_87_32_0_19" { # A static route pointing to the DX GW
  destination_cidr_block         = var.cidr_10_87_32_0_19
  transit_gateway_attachment_id  = local.dx_gw
  transit_gateway_route_table_id = local.post_inspection_rt
}

resource "aws_ec2_transit_gateway_route" "cidr_10_200_0_0_16" { # A static route pointing to the DX GW
  destination_cidr_block         = var.cidr_10_200_0_0_16
  transit_gateway_attachment_id  = local.dx_gw
  transit_gateway_route_table_id = local.post_inspection_rt
}

resource "aws_ec2_transit_gateway_route" "cidr_10_87_0_0_16" { # A static route pointing to the DX GW
  destination_cidr_block         = var.cidr_10_87_0_0_16
  transit_gateway_attachment_id  = local.dx_gw
  transit_gateway_route_table_id = local.post_inspection_rt
}

resource "aws_ec2_transit_gateway_route" "cidr_10_160_4_0_22" { # A static route pointing to the DX GW
  destination_cidr_block         = var.cidr_10_160_4_0_22
  transit_gateway_attachment_id  = local.dx_gw
  transit_gateway_route_table_id = local.post_inspection_rt
}

resource "aws_ec2_transit_gateway_route" "cidr_10_160_8_0_22" { # A static route pointing to the DX GW
  destination_cidr_block         = var.cidr_10_160_8_0_22
  transit_gateway_attachment_id  = local.dx_gw
  transit_gateway_route_table_id = local.post_inspection_rt
}

resource "aws_ec2_transit_gateway_route" "cidr_10_201_0_0_16" { # A static route pointing to the DX GW
  destination_cidr_block         = var.cidr_10_201_0_0_16
  transit_gateway_attachment_id  = local.dx_gw
  transit_gateway_route_table_id = local.post_inspection_rt
}

resource "aws_ec2_transit_gateway_route" "cidr_10_122_21_0_24" { # A static route pointing to the DX GW
  destination_cidr_block         = var.cidr_10_122_21_0_24
  transit_gateway_attachment_id  = local.dx_gw
  transit_gateway_route_table_id = local.post_inspection_rt
}

# VPN Static routing is placed here, please note that this configuration will be replaced when segments are migrated to the Palo Alto
# They will be replaced by proper propagation

# OPTISTFM
/*
resource "aws_ec2_transit_gateway_route" "cidr_10_197_12_0_24" { # A static route pointing to OPTISTFM Acceptance - To be replaced after Palo Alto Migration
  destination_cidr_block         = var.cidr_10_197_12_0_24
  transit_gateway_attachment_id  = local.boost_acc_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
*/

/*
resource "aws_ec2_transit_gateway_route" "cidr_10_198_8_0_24" { # A static route pointing to OPTISTFM Production - To be replaced after Palo Alto Migration
  destination_cidr_block         = var.cidr_10_198_8_0_24
  transit_gateway_attachment_id  = local.boost_prd_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
*/


# AlIGNE

resource "aws_ec2_transit_gateway_route" "cidr_10_197_4_0_23" { # A static route pointing to Aligne Acceptance - To be replaced after Palo Alto Migration
  destination_cidr_block         = var.cidr_10_197_4_0_23
  transit_gateway_attachment_id  = local.aligne_acc_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}

resource "aws_ec2_transit_gateway_route" "cidr_10_197_1_0_24" { # A static route pointing to Aligne Development - To be replaced after Palo Alto Migration
  destination_cidr_block         = var.cidr_10_197_1_0_24
  transit_gateway_attachment_id  = local.aligne_dev_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}

resource "aws_ec2_transit_gateway_route" "cidr_10_197_2_0_23" { # A static route pointing to Aligne Production - To be replaced after Palo Alto Migration
  destination_cidr_block         = var.cidr_10_197_2_0_23
  transit_gateway_attachment_id  = local.aligne_prd_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}

resource "aws_ec2_transit_gateway_route" "cidr_10_197_0_0_24" { # A static route pointing to Aligne Sim - To be replaced after Palo Alto Migration
  destination_cidr_block         = var.cidr_10_197_0_0_24
  transit_gateway_attachment_id  = local.aligne_sim_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}