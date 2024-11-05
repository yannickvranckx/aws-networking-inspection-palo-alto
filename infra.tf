# All associations and propagations detailed below - Static routes per project
# -----------------------------------------------------------------------------

# SMI DEV Routing
resource "aws_ec2_transit_gateway_route_table_association" "smi_dev" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.smi_dev_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "smi_dev" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.smi_dev_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "smi_dev" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.smi_dev_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}


# SMI Prod Routing
resource "aws_ec2_transit_gateway_route_table_association" "smi_prd" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.smi_prd_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "smi_prd" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.smi_prd_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "smi_prd" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.smi_prd_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}


# SMI Test Routing
resource "aws_ec2_transit_gateway_route_table_association" "smi_tst" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.smi_tst_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "smi_tst" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.smi_tst_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "smi_tst" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.smi_tst_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}


# ESB Sandbox Routing Rosa
resource "aws_ec2_transit_gateway_route_table_association" "esb_sandbox_rosa" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.esb_sandbox_rosa
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "esb_sandbox_rosa" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.esb_sandbox_rosa
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "esb_sandbox_rosa" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.esb_sandbox_rosa_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}


# ESB Sandbox Routing Non-Rosa
resource "aws_ec2_transit_gateway_route_table_association" "esb_sandbox_non_rosa" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.esb_sandbox_non_rosa
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "esb_sandbox_non_rosa" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.esb_sandbox_non_rosa
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "esb_sandbox_non_rosa" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.esb_sandbox_non_rosa_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}


# ESB Test Routing Rosa
resource "aws_ec2_transit_gateway_route_table_association" "esb_test_rosa" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.esb_test_rosa_id
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "esb_test_rosa" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.esb_test_rosa_id
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "esb_test_rosa" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.esb_test_rosa_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}


# ESB Test Routing Non-Rosa
resource "aws_ec2_transit_gateway_route_table_association" "esb_test_non_rosa" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.esb_test_non_rosa_id
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "esb_test_non_rosa" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.esb_test_non_rosa_id
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "esb_test_non_rosa" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.esb_test_non_rosa_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}


# Gitpod Production Routing
resource "aws_ec2_transit_gateway_route_table_association" "gitpod_production" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.gitpod_production
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "gitpod_production" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.gitpod_production
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "gitpod_production" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.gitpod_production_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# Automic Test Routing
resource "aws_ec2_transit_gateway_route_table_association" "automic_tst" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.automic_tst_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "automic_tst" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.automic_tst_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "automic_tst" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.automic_tst_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# Automic Acceptance Routing
resource "aws_ec2_transit_gateway_route_table_association" "automic_acc" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.automic_acc_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "automic_acc" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.automic_acc_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "automic_acc" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.automic_acc_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# Accenture VPN Routing
resource "aws_ec2_transit_gateway_route_table_association" "accenture_vpn_az1" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.accenture_vpn_attach_az1
  transit_gateway_route_table_id = local.inspection_rt
}

resource "aws_ec2_transit_gateway_route_table_association" "accenture_vpn_az2" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.accenture_vpn_attach_az2
  transit_gateway_route_table_id = local.inspection_rt
}

# Boost Production Routing
resource "aws_ec2_transit_gateway_route_table_association" "boost_prd" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.boost_prd_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "boost_prd" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.boost_prd_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "boost_prd" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.boost_prd_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

resource "aws_ec2_transit_gateway_route" "boost_prd_proxy" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.boost_prd_proxy_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# Boost Test Routing
resource "aws_ec2_transit_gateway_route_table_association" "boost_tst" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.boost_tst_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "boost_tst" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.boost_tst_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "boost_tst" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.boost_tst_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}
resource "aws_ec2_transit_gateway_route" "boost_tst_pilot" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.boost_tst_pilot_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# Boost Acceptance Routing
resource "aws_ec2_transit_gateway_route_table_association" "boost_acc" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.boost_acc_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "boost_acc" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.boost_acc_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "boost_acc" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.boost_acc_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}
resource "aws_ec2_transit_gateway_route" "boost_acc_pilot_a" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.boost_acc_pilot_a_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# Boost Development Routing
resource "aws_ec2_transit_gateway_route_table_association" "boost_dev" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.boost_dev_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "boost_dev" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.boost_dev_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "boost_dev" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.boost_dev_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}
resource "aws_ec2_transit_gateway_route" "boost_dev_proxy" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.boost_dev_proxy_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}
resource "aws_ec2_transit_gateway_route" "boost_dev_pilot" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.boost_dev_pilot_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# ESB Acceptance ROSA Routing
resource "aws_ec2_transit_gateway_route_table_association" "esb_acc_rosa" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.esb_acceptance_rosa_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "esb_acc_rosa" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.esb_acceptance_rosa_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "esb_acc_rosa" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.esb_acceptance_rosa_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# ESB Acceptance DASE Routing
resource "aws_ec2_transit_gateway_route_table_association" "esb_acc_dase" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.esb_acceptance_dase_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "esb_acc_dase" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.esb_acceptance_dase_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "esb_acc_dase" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.esb_acceptance_dase_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# ESB Production ROSA Routing
resource "aws_ec2_transit_gateway_route_table_association" "esb_prod_rosa" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.esb_production_rosa_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "esb_prod_rosa" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.esb_production_rosa_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "esb_prod_rosa" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.esb_production_rosa_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# ESB Production DASE Routing
resource "aws_ec2_transit_gateway_route_table_association" "esb_prod_dase" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.esb_production_dase_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "esb_prod_dase" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.esb_production_dase_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "esb_prod_dase" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.esb_production_dase_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# Opensearch Test Routing
resource "aws_ec2_transit_gateway_route_table_association" "opensearch_test" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.opensearch_test_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "opensearch_test" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.opensearch_test_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "opensearch_test" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.opensearch_test_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# Shared Services DNS
resource "aws_ec2_transit_gateway_route_table_association" "shared_services" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.shared_services_dns_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "shared_services" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.shared_services_dns_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "shared_services" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.shared_services_dns_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# Shared Services ADDC
resource "aws_ec2_transit_gateway_route_table_association" "shared_services_addc" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.shared_services_addc_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "shared_services_addc" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.shared_services_addc_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "shared_services_addc" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.shared_services_addc_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# Aligne SIM
resource "aws_ec2_transit_gateway_route_table_association" "aligne_sim" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.aligne_sim_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "aligne_sim" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.aligne_sim_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "aligne_sim" { # A static route pointing to Aligne Acceptance - To be replaced after Palo Alto Migration
  destination_cidr_block         = local.aligne_sim_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# Aligne Acceptance
resource "aws_ec2_transit_gateway_route_table_association" "aligne_acceptance" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.aligne_acc_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "aligne_acceptance" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.aligne_acc_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "aligne_acceptance" { # A static route pointing to Aligne Acceptance - To be replaced after Palo Alto Migration
  destination_cidr_block         = local.aligne_acc_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# Aligne Development
resource "aws_ec2_transit_gateway_route_table_association" "aligne_development" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.aligne_dev_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "aligne_development" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.aligne_dev_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "aligne_development" { # A static route pointing to Aligne Acceptance - To be replaced after Palo Alto Migration
  destination_cidr_block         = local.aligne_dev_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}


# KairosGenAI-tst Routing
resource "aws_ec2_transit_gateway_route_table_association" "kairosgenai_tst" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.kairosgenai_tst_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "kairosgenai_tst" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.kairosgenai_tst_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "kairosgenai_tst" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.kairosgenai_tst_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# SAP BW4HANA - Development
resource "aws_ec2_transit_gateway_route_table_association" "sapbw4hana_dev" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.sapbw4hana_dev_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "sapbw4hana_dev" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.sapbw4hana_dev_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "sapbw4hana_dev" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.sapbw4hana_dev_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# SAP BW4HANA - Acceptance
resource "aws_ec2_transit_gateway_route_table_association" "sapbw4hana_acc" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.sapbw4hana_acc_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "sapbw4hana_acc" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.sapbw4hana_acc_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "sapbw4hana_acc" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.sapbw4hana_acc_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# SAP BW4HANA - Production
resource "aws_ec2_transit_gateway_route_table_association" "sapbw4hana_prd" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.sapbw4hana_prd_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "sapbw4hana_prd" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.sapbw4hana_prd_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "sapbw4hana_prd" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.sapbw4hana_prd_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# SAP BW4HANA - DR
resource "aws_ec2_transit_gateway_route_table_association" "sapbw4hana_dr" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.sapbw4hana_prd_dr_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "sapbw4hana_dr" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.sapbw4hana_prd_dr_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "sapbw4hana_dr" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.sapbw4hana_prd_dr_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# OPENSEARCH PRD
resource "aws_ec2_transit_gateway_route_table_association" "opensearch_prd" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.opensearch_prd_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "opensearch_prd" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.opensearch_prd_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "opensearch_prd" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.opensearch_prd_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# OPTIGEN PRD
resource "aws_ec2_transit_gateway_route_table_association" "optigen_prd" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.optigen_prd_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "optigen_prd" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.optigen_prd_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "optigen_prd" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.optigen_prd_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# Neo Shared - Non Production
resource "aws_ec2_transit_gateway_route_table_association" "neo_shared_non_prod" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.neo_non_prd_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "neo_shared_non_prod" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.neo_non_prd_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "neo_shared_non_prod" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.neo_non_prd_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# Neo Shared - Production
resource "aws_ec2_transit_gateway_route_table_association" "neo_shared_prod" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.neo_prd_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "neo_shared_prod" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.neo_prd_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "neo_shared_prod" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.neo_prd_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# Neo AI - Production
resource "aws_ec2_transit_gateway_route_table_association" "neo_ai_prod" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.neo_ai_prd_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "neo_ai_prod" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.neo_ai_prd_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "neo_ai_prod" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.neo_ai_prd_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# Neo AI - Acceptance
resource "aws_ec2_transit_gateway_route_table_association" "neo_ai_acc" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.neo_ai_acc_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "neo_ai_acc" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.neo_ai_acc_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "neo_ai_acc" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.neo_ai_acc_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# Neo AI - Development - Application
resource "aws_ec2_transit_gateway_route_table_association" "neo_ai_dev" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.neo_ai_dev_app_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "neo_ai_dev" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.neo_ai_dev_app_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "neo_ai_dev" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.neo_ai_dev_app_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# Neo AI - Development - Platform
resource "aws_ec2_transit_gateway_route_table_association" "neo_ai_platform_dev" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.neo_ai_platform_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "neo_ai_platform_dev" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.neo_ai_platform_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "neo_ai_platform_dev" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.neo_ai_platform_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# Open Text Development
resource "aws_ec2_transit_gateway_route_table_association" "opentext_dev" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.open_text_dev_attach
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route_table_propagation" "opentext_dev" { # Propagation of VPC CIDR to the Post-Inspection Route Table
  transit_gateway_attachment_id  = local.open_text_dev_attach
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "opentext_dev" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.open_text_dev_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}

# All peering (transit gateway, VPN gateways) detailed below
# -----------------------------------------------------------

# Essent Peering
resource "aws_ec2_transit_gateway_route_table_association" "essent_peering" { # Association of Route Table to Inspection VPC
  transit_gateway_attachment_id  = local.essent_peering_id
  transit_gateway_route_table_id = local.inspection_rt
}
resource "aws_ec2_transit_gateway_route" "essent_peering_post_inspection" { # Adding a static route to the post-inspection, because peering-attachments cannot be propagated
  destination_cidr_block         = local.essent_peering_cidr
  transit_gateway_attachment_id  = local.essent_peering_id
  transit_gateway_route_table_id = local.post_inspection_rt
}
resource "aws_ec2_transit_gateway_route" "essent_peering" { # A static return route to force traffic back to the Inspection layer (TO BE REMOVED AFTER MIGRATION)
  destination_cidr_block         = local.essent_peering_cidr
  transit_gateway_attachment_id  = local.firewall_vpc
  transit_gateway_route_table_id = local.peering_rt
}
