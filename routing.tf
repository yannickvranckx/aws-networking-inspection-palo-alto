# All the static general routing detailed here - on-prem // DirectConnect
# ------------------------------------------------------------------------

# 
resource "aws_ec2_transit_gateway_route" "cidr_x_x_x" { # A static route pointing to the DX GW
  destination_cidr_block         = var.cidr_x_x_x
  transit_gateway_attachment_id  = local.dx_gw
  transit_gateway_route_table_id = local.post_inspection_rt
}

# PROJECT
/*
resource "aws_ec2_transit_gateway_route" "cidr_x_x_x_project" { # A static route pointing to PROJECT - To be replaced after Palo Alto Migration
  destination_cidr_block         = var.cidr_x_x_x
  transit_gateway_attachment_id  = local.boost_acc_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
*/

/*
resource "aws_ec2_transit_gateway_route" "cidr_x_x_x_project" { # A static route pointing to  PROJECT - To be replaced after Palo Alto Migration
  destination_cidr_block         = var.cidr_x_x_x
  transit_gateway_attachment_id  = local.boost_prd_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
*/
