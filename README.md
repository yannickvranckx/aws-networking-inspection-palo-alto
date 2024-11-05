# Repository holding the Routing for the Inspection model with Palo Alto Luminus

This repo is holding the routing for the inspection model with Palo Alto, this holds no deployment code about the inspection setup itself, just the routing.

# Authentication
/oidc/ holds the configuration for the OpenID role and configuration to secure the pipelines

# State
State is stored in Gitlab, with the option to move it to S3 later - OIDC pipeline authentication fails on S3 backend for the moment


# Routing

- rt_firewall_inspection: Inspection routing table, every VPC will be attached to this table. The routing of this table will point everything to the new inspection layer.

- rt_firewall_post_inspection: After inspection from the Palo Alto Firewall, traffic will be arriving here to take a few other routes, on-prem, other VPCs.

- Egress: Please note that the post inspection table does no longer include a route to egress, neither is a egress VPC used. We will still propagate routes into the post inspection for return traffic to arrive to the proper VPC.


# Egress

Egress is handled by the Palo Alto instance itself, the PA instance has an elastic IP to reach the internet. We are not using the NAT Gateway solution with AWS. This changes the egress design a little, we don't need a dedicated egress VPC. This also means that when whitelisting is required, you will have to whitelist the EIPs



# Migration Table to Palo Alto

| Environment           | CIDR              |     Status     |
|-----------------------|-------------------|----------------|
| SMI Development       | 10.196.7.64/26    |   Migrated     |
| SMI Production        | 10.198.4.0/24     |   Migrated     |
| SMI Test              | 10.194.254.0/24   |   Migrated     |
| ESB Sandbox Rosa      | 10.196.1.0/24     |   Migrated     |
| ESB Sandbox Non Rosa  | 10.196.2.0/24     |   Migrated     |
| ESB Test Rosa         | 10.196.4.0/24     |   Migrated     |
| ESB Test Non Rosa     | 10.196.5.0/24     |   Migrated     |
| Gitpod Production     | 10.198.11.0/25    |   Migrated     |
| Automic Test          | 10.196.10.0/24    |   Migrated     |
| Automic Acceptance    | 10.197.10.0/24    |   Migrated     |
| Opti-stfm-Acceptance  | 10.197.12.0/24    |   Migrated     |
| Opti-stfm-Production  | 10.198.8.0/24     |   Migrated     |
| Opti-stfm-Test        | 10.196.8.0/24     |   Migrated     |
| Opti-stfm-Development | 10.196.9.0/24     |   Migrated     |
| Aligne Prod           | 10.197.2.0/23     |  Not Migrated  |
| Aligne Sim            | 10.197.0.0/24     |   Migrated     |
| Aligne Acceptance     | 10.197.4.0/23     |   Migrated     |
| Aligne Development    | 10.197.1.0/24     |   Migrated     |
| Shared Services AD    | 10.198.1.0/25     |   Migrated     |
| Shared Services DNS   | 10.198.1.128.0/25 |   Migrated     |
| Opensearch Test       | 10.196.0.64/26    |   Migrated     |
| Retail Opensearch     | 10.198.0.128/25   |   Migrated     |
| Optigen Opensearch    | 10.198.5.0/25     |   Migrated     |
| Essent Peering        | 10.198.3.0/27     |   Migrated     |
| SAPBW4HANA Production | 10.198.13.0/24    |   Migrated     |
| SAPBW4HANA Development| 10.196.15.0/24    |   Migrated     |
| SAPBW4HANA Acceptance | 10.197.13.0/24    |   Migrated     |
| SAPBW4HANA DR         | 10.198.15.0/24    |   Migrated     |
| NEO SHARED PROD       | 10.191.192.0/20   |   Migrated     |
| NEO SHARED NON PROD   | 10.191.208.0/20   |   Migrated     |
| NEO AI production     | 10.198.16.0/24    |   Migrated     |
| NEO AI acceptance     | 10.197.15.0/24    |   Migrated     |
| NEO AI development    | 10.196.20.0/24    |   Migrated     |
| Open text development | 10.196.19.0/24    |   Migrated     |

# Static routing to on-prem // DX-Connect

| Environment          | CIDR            | Destination  |
|----------------------|-----------------|--------------|
| NRB SAP DC           | 153.89.194.0/24 | DX-Connect   |
| RFC1918 Priv DC      | 172.16.0.0/12   | DX-Connect   |
| RFC1918 Priv DC      | 192.168.0.0/16  | DX-Connect   |