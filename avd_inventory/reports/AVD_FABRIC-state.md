# Validate State Report

**Table of Contents:**

- [Validate State Report](validate-state-report)
  - [Test Results Summary](#test-results-summary)
  - [Failed Test Results Summary](#failed-test-results-summary)
  - [All Test Results](#all-test-results)

## Test Results Summary

### Summary Totals

| Total Tests | Total Tests Passed | Total Tests Failed | Total Tests Skipped |
| ----------- | ------------------ | ------------------ | ------------------- |
| 248 | 212 | 12 | 24 |

### Summary Totals Device Under Test

| Device Under Test | Total Tests | Tests Passed | Tests Failed | Tests Skipped | Categories Failed | Categories Skipped |
| ------------------| ----------- | ------------ | ------------ | ------------- | ----------------- | ------------------ |
| l01 | 48 | 42 | 2 | 4 | MLAG, System | Hardware |
| l02 | 48 | 41 | 3 | 4 | Interfaces, MLAG, System | Hardware |
| l03 | 48 | 41 | 3 | 4 | Interfaces, MLAG, System | Hardware |
| l04 | 48 | 42 | 2 | 4 | MLAG, System | Hardware |
| s01 | 28 | 23 | 1 | 4 | System | Hardware |
| s02 | 28 | 23 | 1 | 4 | System | Hardware |

### Summary Totals Per Category

| Test Category | Total Tests | Tests Passed | Tests Failed | Tests Skipped |
| ------------- | ----------- | ------------ | ------------ | ------------- |
| BGP | 36 | 36 | 0 | 0 |
| Connectivity | 64 | 64 | 0 | 0 |
| Hardware | 24 | 0 | 0 | 24 |
| Interfaces | 70 | 68 | 2 | 0 |
| MLAG | 4 | 0 | 4 | 0 |
| Routing | 38 | 38 | 0 | 0 |
| System | 12 | 6 | 6 | 0 |

## Failed Test Results Summary

| ID | Device Under Test | Categories | Test | Description | Inputs | Result | Messages |
| -- | ----------------- | ---------- | ---- | ----------- | ------ | -------| -------- |
| 37 | l01 | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | - | FAIL | MLAG status is not OK: {'state': 'inactive', 'negStatus': 'connecting', 'localIntfStatus': 'up', 'peerLinkStatus': 'up'} |
| 47 | l01 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'NTP starting...' |
| 78 | l02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel10 - SERVER_h01 = 'up' | FAIL | The following interface(s) are not in the expected state: ['Port-Channel10 is down/lowerLayerDown'] |
| 85 | l02 | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | - | FAIL | MLAG status is not OK: {'state': 'inactive', 'negStatus': 'connecting', 'localIntfStatus': 'up', 'peerLinkStatus': 'up'} |
| 95 | l02 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'NTP starting...' |
| 126 | l03 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel20 - SERVER_h02 = 'up' | FAIL | The following interface(s) are not in the expected state: ['Port-Channel20 is down/lowerLayerDown'] |
| 133 | l03 | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | - | FAIL | MLAG status is not OK: {'state': 'inactive', 'negStatus': 'connecting', 'localIntfStatus': 'up', 'peerLinkStatus': 'up'} |
| 143 | l03 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'NTP starting...' |
| 181 | l04 | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | - | FAIL | MLAG status is not OK: {'state': 'inactive', 'negStatus': 'connecting', 'localIntfStatus': 'up', 'peerLinkStatus': 'up'} |
| 191 | l04 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'NTP starting...' |
| 219 | s01 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'NTP starting...' |
| 247 | s02 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'NTP starting...' |

## All Test Results

| ID | Device Under Test | Categories | Test | Description | Inputs | Result | Messages |
| -- | ----------------- | ---------- | ---- | ----------- | ------ | -------| -------- |
| 1 | l01 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP EVPN Peer: s01 (IP: 100.64.255.1) | PASS | - |
| 2 | l01 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP EVPN Peer: s02 (IP: 100.64.255.2) | PASS | - |
| 3 | l01 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: l02 (IP: 100.65.2.1) | PASS | - |
| 4 | l01 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: s01 (IP: 100.65.0.0) | PASS | - |
| 5 | l01 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: s02 (IP: 100.65.0.2) | PASS | - |
| 6 | l01 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet1 - Remote: s01 Ethernet1 | PASS | - |
| 7 | l01 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet2 - Remote: s02 Ethernet1 | PASS | - |
| 8 | l01 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet3 - Remote: l02 Ethernet3 | PASS | - |
| 9 | l01 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet4 - Remote: l02 Ethernet4 | PASS | - |
| 10 | l01 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.3) - Destination: l01 Loopback0 (IP: 100.65.255.3) | PASS | - |
| 11 | l01 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.3) - Destination: l02 Loopback0 (IP: 100.65.255.4) | PASS | - |
| 12 | l01 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.3) - Destination: l03 Loopback0 (IP: 100.65.255.5) | PASS | - |
| 13 | l01 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.3) - Destination: l04 Loopback0 (IP: 100.65.255.6) | PASS | - |
| 14 | l01 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.3) - Destination: s01 Loopback0 (IP: 100.64.255.1) | PASS | - |
| 15 | l01 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.3) - Destination: s02 Loopback0 (IP: 100.64.255.2) | PASS | - |
| 16 | l01 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet1 (IP: 100.65.0.1) - Destination: s01 Ethernet1 (IP: 100.65.0.0) | PASS | - |
| 17 | l01 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet2 (IP: 100.65.0.3) - Destination: s02 Ethernet1 (IP: 100.65.0.2) | PASS | - |
| 18 | l01 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab. |
| 19 | l01 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab. |
| 20 | l01 | Hardware | VerifyTemperature | Verifies the device temperature. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab. |
| 21 | l01 | Hardware | VerifyTransceiversManufacturers | Verifies if all transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab. |
| 22 | l01 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet1 - P2P_s01_Ethernet1 = 'up' | PASS | - |
| 23 | l01 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet10 - SERVER_h01 = 'up' | PASS | - |
| 24 | l01 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet2 - P2P_s02_Ethernet1 = 'up' | PASS | - |
| 25 | l01 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet3 - MLAG_l02_Ethernet3 = 'up' | PASS | - |
| 26 | l01 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet4 - MLAG_l02_Ethernet4 = 'up' | PASS | - |
| 27 | l01 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback0 - ROUTER_ID = 'up' | PASS | - |
| 28 | l01 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback1 - VXLAN_TUNNEL_SOURCE = 'up' | PASS | - |
| 29 | l01 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback101 - DIAG_VRF_VRF1 = 'up' | PASS | - |
| 30 | l01 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel10 - SERVER_h01 = 'up' | PASS | - |
| 31 | l01 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel3 - MLAG_l02_Port-Channel3 = 'up' | PASS | - |
| 32 | l01 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan100 - VLAN100 = 'up' | PASS | - |
| 33 | l01 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan3000 - MLAG_L3_VRF_VRF1 = 'up' | PASS | - |
| 34 | l01 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4093 - MLAG_L3 = 'up' | PASS | - |
| 35 | l01 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4094 - MLAG = 'up' | PASS | - |
| 36 | l01 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vxlan1 = 'up' | PASS | - |
| 37 | l01 | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | - | FAIL | MLAG status is not OK: {'state': 'inactive', 'negStatus': 'connecting', 'localIntfStatus': 'up', 'peerLinkStatus': 'up'} |
| 38 | l01 | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | Routing protocol model: multi-agent | PASS | - |
| 39 | l01 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.64.255.1 - Peer: s01 | PASS | - |
| 40 | l01 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.64.255.2 - Peer: s02 | PASS | - |
| 41 | l01 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.254.3 - Peer: l01 | PASS | - |
| 42 | l01 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.254.5 - Peer: l03 | PASS | - |
| 43 | l01 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.255.3 - Peer: l01 | PASS | - |
| 44 | l01 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.255.4 - Peer: l02 | PASS | - |
| 45 | l01 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.255.5 - Peer: l03 | PASS | - |
| 46 | l01 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.255.6 - Peer: l04 | PASS | - |
| 47 | l01 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'NTP starting...' |
| 48 | l01 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 49 | l02 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP EVPN Peer: s01 (IP: 100.64.255.1) | PASS | - |
| 50 | l02 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP EVPN Peer: s02 (IP: 100.64.255.2) | PASS | - |
| 51 | l02 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: l01 (IP: 100.65.2.0) | PASS | - |
| 52 | l02 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: s01 (IP: 100.65.0.4) | PASS | - |
| 53 | l02 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: s02 (IP: 100.65.0.6) | PASS | - |
| 54 | l02 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet1 - Remote: s01 Ethernet2 | PASS | - |
| 55 | l02 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet2 - Remote: s02 Ethernet2 | PASS | - |
| 56 | l02 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet3 - Remote: l01 Ethernet3 | PASS | - |
| 57 | l02 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet4 - Remote: l01 Ethernet4 | PASS | - |
| 58 | l02 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.4) - Destination: l01 Loopback0 (IP: 100.65.255.3) | PASS | - |
| 59 | l02 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.4) - Destination: l02 Loopback0 (IP: 100.65.255.4) | PASS | - |
| 60 | l02 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.4) - Destination: l03 Loopback0 (IP: 100.65.255.5) | PASS | - |
| 61 | l02 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.4) - Destination: l04 Loopback0 (IP: 100.65.255.6) | PASS | - |
| 62 | l02 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.4) - Destination: s01 Loopback0 (IP: 100.64.255.1) | PASS | - |
| 63 | l02 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.4) - Destination: s02 Loopback0 (IP: 100.64.255.2) | PASS | - |
| 64 | l02 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet1 (IP: 100.65.0.5) - Destination: s01 Ethernet2 (IP: 100.65.0.4) | PASS | - |
| 65 | l02 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet2 (IP: 100.65.0.7) - Destination: s02 Ethernet2 (IP: 100.65.0.6) | PASS | - |
| 66 | l02 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab. |
| 67 | l02 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab. |
| 68 | l02 | Hardware | VerifyTemperature | Verifies the device temperature. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab. |
| 69 | l02 | Hardware | VerifyTransceiversManufacturers | Verifies if all transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab. |
| 70 | l02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet1 - P2P_s01_Ethernet2 = 'up' | PASS | - |
| 71 | l02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet10 - SERVER_h01 = 'up' | PASS | - |
| 72 | l02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet2 - P2P_s02_Ethernet2 = 'up' | PASS | - |
| 73 | l02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet3 - MLAG_l01_Ethernet3 = 'up' | PASS | - |
| 74 | l02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet4 - MLAG_l01_Ethernet4 = 'up' | PASS | - |
| 75 | l02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback0 - ROUTER_ID = 'up' | PASS | - |
| 76 | l02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback1 - VXLAN_TUNNEL_SOURCE = 'up' | PASS | - |
| 77 | l02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback101 - DIAG_VRF_VRF1 = 'up' | PASS | - |
| 78 | l02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel10 - SERVER_h01 = 'up' | FAIL | The following interface(s) are not in the expected state: ['Port-Channel10 is down/lowerLayerDown'] |
| 79 | l02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel3 - MLAG_l01_Port-Channel3 = 'up' | PASS | - |
| 80 | l02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan100 - VLAN100 = 'up' | PASS | - |
| 81 | l02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan3000 - MLAG_L3_VRF_VRF1 = 'up' | PASS | - |
| 82 | l02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4093 - MLAG_L3 = 'up' | PASS | - |
| 83 | l02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4094 - MLAG = 'up' | PASS | - |
| 84 | l02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vxlan1 = 'up' | PASS | - |
| 85 | l02 | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | - | FAIL | MLAG status is not OK: {'state': 'inactive', 'negStatus': 'connecting', 'localIntfStatus': 'up', 'peerLinkStatus': 'up'} |
| 86 | l02 | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | Routing protocol model: multi-agent | PASS | - |
| 87 | l02 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.64.255.1 - Peer: s01 | PASS | - |
| 88 | l02 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.64.255.2 - Peer: s02 | PASS | - |
| 89 | l02 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.254.3 - Peer: l01 | PASS | - |
| 90 | l02 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.254.5 - Peer: l03 | PASS | - |
| 91 | l02 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.255.3 - Peer: l01 | PASS | - |
| 92 | l02 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.255.4 - Peer: l02 | PASS | - |
| 93 | l02 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.255.5 - Peer: l03 | PASS | - |
| 94 | l02 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.255.6 - Peer: l04 | PASS | - |
| 95 | l02 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'NTP starting...' |
| 96 | l02 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 97 | l03 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP EVPN Peer: s01 (IP: 100.64.255.1) | PASS | - |
| 98 | l03 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP EVPN Peer: s02 (IP: 100.64.255.2) | PASS | - |
| 99 | l03 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: l04 (IP: 100.65.2.5) | PASS | - |
| 100 | l03 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: s01 (IP: 100.65.0.8) | PASS | - |
| 101 | l03 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: s02 (IP: 100.65.0.10) | PASS | - |
| 102 | l03 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet1 - Remote: s01 Ethernet3 | PASS | - |
| 103 | l03 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet2 - Remote: s02 Ethernet3 | PASS | - |
| 104 | l03 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet3 - Remote: l04 Ethernet3 | PASS | - |
| 105 | l03 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet4 - Remote: l04 Ethernet4 | PASS | - |
| 106 | l03 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.5) - Destination: l01 Loopback0 (IP: 100.65.255.3) | PASS | - |
| 107 | l03 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.5) - Destination: l02 Loopback0 (IP: 100.65.255.4) | PASS | - |
| 108 | l03 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.5) - Destination: l03 Loopback0 (IP: 100.65.255.5) | PASS | - |
| 109 | l03 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.5) - Destination: l04 Loopback0 (IP: 100.65.255.6) | PASS | - |
| 110 | l03 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.5) - Destination: s01 Loopback0 (IP: 100.64.255.1) | PASS | - |
| 111 | l03 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.5) - Destination: s02 Loopback0 (IP: 100.64.255.2) | PASS | - |
| 112 | l03 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet1 (IP: 100.65.0.9) - Destination: s01 Ethernet3 (IP: 100.65.0.8) | PASS | - |
| 113 | l03 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet2 (IP: 100.65.0.11) - Destination: s02 Ethernet3 (IP: 100.65.0.10) | PASS | - |
| 114 | l03 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab. |
| 115 | l03 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab. |
| 116 | l03 | Hardware | VerifyTemperature | Verifies the device temperature. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab. |
| 117 | l03 | Hardware | VerifyTransceiversManufacturers | Verifies if all transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab. |
| 118 | l03 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet1 - P2P_s01_Ethernet3 = 'up' | PASS | - |
| 119 | l03 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet2 - P2P_s02_Ethernet3 = 'up' | PASS | - |
| 120 | l03 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet20 - SERVER_h02 = 'up' | PASS | - |
| 121 | l03 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet3 - MLAG_l04_Ethernet3 = 'up' | PASS | - |
| 122 | l03 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet4 - MLAG_l04_Ethernet4 = 'up' | PASS | - |
| 123 | l03 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback0 - ROUTER_ID = 'up' | PASS | - |
| 124 | l03 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback1 - VXLAN_TUNNEL_SOURCE = 'up' | PASS | - |
| 125 | l03 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback101 - DIAG_VRF_VRF1 = 'up' | PASS | - |
| 126 | l03 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel20 - SERVER_h02 = 'up' | FAIL | The following interface(s) are not in the expected state: ['Port-Channel20 is down/lowerLayerDown'] |
| 127 | l03 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel3 - MLAG_l04_Port-Channel3 = 'up' | PASS | - |
| 128 | l03 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan200 - VLAN200 = 'up' | PASS | - |
| 129 | l03 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan3000 - MLAG_L3_VRF_VRF1 = 'up' | PASS | - |
| 130 | l03 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4093 - MLAG_L3 = 'up' | PASS | - |
| 131 | l03 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4094 - MLAG = 'up' | PASS | - |
| 132 | l03 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vxlan1 = 'up' | PASS | - |
| 133 | l03 | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | - | FAIL | MLAG status is not OK: {'state': 'inactive', 'negStatus': 'connecting', 'localIntfStatus': 'up', 'peerLinkStatus': 'up'} |
| 134 | l03 | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | Routing protocol model: multi-agent | PASS | - |
| 135 | l03 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.64.255.1 - Peer: s01 | PASS | - |
| 136 | l03 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.64.255.2 - Peer: s02 | PASS | - |
| 137 | l03 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.254.3 - Peer: l01 | PASS | - |
| 138 | l03 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.254.5 - Peer: l03 | PASS | - |
| 139 | l03 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.255.3 - Peer: l01 | PASS | - |
| 140 | l03 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.255.4 - Peer: l02 | PASS | - |
| 141 | l03 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.255.5 - Peer: l03 | PASS | - |
| 142 | l03 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.255.6 - Peer: l04 | PASS | - |
| 143 | l03 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'NTP starting...' |
| 144 | l03 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 145 | l04 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP EVPN Peer: s01 (IP: 100.64.255.1) | PASS | - |
| 146 | l04 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP EVPN Peer: s02 (IP: 100.64.255.2) | PASS | - |
| 147 | l04 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: l03 (IP: 100.65.2.4) | PASS | - |
| 148 | l04 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: s01 (IP: 100.65.0.12) | PASS | - |
| 149 | l04 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: s02 (IP: 100.65.0.14) | PASS | - |
| 150 | l04 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet1 - Remote: s01 Ethernet4 | PASS | - |
| 151 | l04 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet2 - Remote: s02 Ethernet4 | PASS | - |
| 152 | l04 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet3 - Remote: l03 Ethernet3 | PASS | - |
| 153 | l04 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet4 - Remote: l03 Ethernet4 | PASS | - |
| 154 | l04 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.6) - Destination: l01 Loopback0 (IP: 100.65.255.3) | PASS | - |
| 155 | l04 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.6) - Destination: l02 Loopback0 (IP: 100.65.255.4) | PASS | - |
| 156 | l04 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.6) - Destination: l03 Loopback0 (IP: 100.65.255.5) | PASS | - |
| 157 | l04 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.6) - Destination: l04 Loopback0 (IP: 100.65.255.6) | PASS | - |
| 158 | l04 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.6) - Destination: s01 Loopback0 (IP: 100.64.255.1) | PASS | - |
| 159 | l04 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Loopback0 (IP: 100.65.255.6) - Destination: s02 Loopback0 (IP: 100.64.255.2) | PASS | - |
| 160 | l04 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet1 (IP: 100.65.0.13) - Destination: s01 Ethernet4 (IP: 100.65.0.12) | PASS | - |
| 161 | l04 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet2 (IP: 100.65.0.15) - Destination: s02 Ethernet4 (IP: 100.65.0.14) | PASS | - |
| 162 | l04 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab. |
| 163 | l04 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab. |
| 164 | l04 | Hardware | VerifyTemperature | Verifies the device temperature. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab. |
| 165 | l04 | Hardware | VerifyTransceiversManufacturers | Verifies if all transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab. |
| 166 | l04 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet1 - P2P_s01_Ethernet4 = 'up' | PASS | - |
| 167 | l04 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet2 - P2P_s02_Ethernet4 = 'up' | PASS | - |
| 168 | l04 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet20 - SERVER_h02 = 'up' | PASS | - |
| 169 | l04 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet3 - MLAG_l03_Ethernet3 = 'up' | PASS | - |
| 170 | l04 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet4 - MLAG_l03_Ethernet4 = 'up' | PASS | - |
| 171 | l04 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback0 - ROUTER_ID = 'up' | PASS | - |
| 172 | l04 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback1 - VXLAN_TUNNEL_SOURCE = 'up' | PASS | - |
| 173 | l04 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback101 - DIAG_VRF_VRF1 = 'up' | PASS | - |
| 174 | l04 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel20 - SERVER_h02 = 'up' | PASS | - |
| 175 | l04 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel3 - MLAG_l03_Port-Channel3 = 'up' | PASS | - |
| 176 | l04 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan200 - VLAN200 = 'up' | PASS | - |
| 177 | l04 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan3000 - MLAG_L3_VRF_VRF1 = 'up' | PASS | - |
| 178 | l04 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4093 - MLAG_L3 = 'up' | PASS | - |
| 179 | l04 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4094 - MLAG = 'up' | PASS | - |
| 180 | l04 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vxlan1 = 'up' | PASS | - |
| 181 | l04 | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | - | FAIL | MLAG status is not OK: {'state': 'inactive', 'negStatus': 'connecting', 'localIntfStatus': 'up', 'peerLinkStatus': 'up'} |
| 182 | l04 | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | Routing protocol model: multi-agent | PASS | - |
| 183 | l04 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.64.255.1 - Peer: s01 | PASS | - |
| 184 | l04 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.64.255.2 - Peer: s02 | PASS | - |
| 185 | l04 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.254.3 - Peer: l01 | PASS | - |
| 186 | l04 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.254.5 - Peer: l03 | PASS | - |
| 187 | l04 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.255.3 - Peer: l01 | PASS | - |
| 188 | l04 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.255.4 - Peer: l02 | PASS | - |
| 189 | l04 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.255.5 - Peer: l03 | PASS | - |
| 190 | l04 | Routing | VerifyRoutingTableEntry | Verifies that the provided routes are present in the routing table of a specified VRF. | Route: 100.65.255.6 - Peer: l04 | PASS | - |
| 191 | l04 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'NTP starting...' |
| 192 | l04 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 193 | s01 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP EVPN Peer: l01 (IP: 100.65.255.3) | PASS | - |
| 194 | s01 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP EVPN Peer: l02 (IP: 100.65.255.4) | PASS | - |
| 195 | s01 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP EVPN Peer: l03 (IP: 100.65.255.5) | PASS | - |
| 196 | s01 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP EVPN Peer: l04 (IP: 100.65.255.6) | PASS | - |
| 197 | s01 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: l01 (IP: 100.65.0.1) | PASS | - |
| 198 | s01 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: l02 (IP: 100.65.0.5) | PASS | - |
| 199 | s01 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: l03 (IP: 100.65.0.9) | PASS | - |
| 200 | s01 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: l04 (IP: 100.65.0.13) | PASS | - |
| 201 | s01 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet1 - Remote: l01 Ethernet1 | PASS | - |
| 202 | s01 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet2 - Remote: l02 Ethernet1 | PASS | - |
| 203 | s01 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet3 - Remote: l03 Ethernet1 | PASS | - |
| 204 | s01 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet4 - Remote: l04 Ethernet1 | PASS | - |
| 205 | s01 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet1 (IP: 100.65.0.0) - Destination: l01 Ethernet1 (IP: 100.65.0.1) | PASS | - |
| 206 | s01 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet2 (IP: 100.65.0.4) - Destination: l02 Ethernet1 (IP: 100.65.0.5) | PASS | - |
| 207 | s01 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet3 (IP: 100.65.0.8) - Destination: l03 Ethernet1 (IP: 100.65.0.9) | PASS | - |
| 208 | s01 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet4 (IP: 100.65.0.12) - Destination: l04 Ethernet1 (IP: 100.65.0.13) | PASS | - |
| 209 | s01 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab. |
| 210 | s01 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab. |
| 211 | s01 | Hardware | VerifyTemperature | Verifies the device temperature. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab. |
| 212 | s01 | Hardware | VerifyTransceiversManufacturers | Verifies if all transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab. |
| 213 | s01 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet1 - P2P_l01_Ethernet1 = 'up' | PASS | - |
| 214 | s01 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet2 - P2P_l02_Ethernet1 = 'up' | PASS | - |
| 215 | s01 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet3 - P2P_l03_Ethernet1 = 'up' | PASS | - |
| 216 | s01 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet4 - P2P_l04_Ethernet1 = 'up' | PASS | - |
| 217 | s01 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback0 - ROUTER_ID = 'up' | PASS | - |
| 218 | s01 | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | Routing protocol model: multi-agent | PASS | - |
| 219 | s01 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'NTP starting...' |
| 220 | s01 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 221 | s02 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP EVPN Peer: l01 (IP: 100.65.255.3) | PASS | - |
| 222 | s02 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP EVPN Peer: l02 (IP: 100.65.255.4) | PASS | - |
| 223 | s02 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP EVPN Peer: l03 (IP: 100.65.255.5) | PASS | - |
| 224 | s02 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP EVPN Peer: l04 (IP: 100.65.255.6) | PASS | - |
| 225 | s02 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: l01 (IP: 100.65.0.3) | PASS | - |
| 226 | s02 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: l02 (IP: 100.65.0.7) | PASS | - |
| 227 | s02 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: l03 (IP: 100.65.0.11) | PASS | - |
| 228 | s02 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: l04 (IP: 100.65.0.15) | PASS | - |
| 229 | s02 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet1 - Remote: l01 Ethernet2 | PASS | - |
| 230 | s02 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet2 - Remote: l02 Ethernet2 | PASS | - |
| 231 | s02 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet3 - Remote: l03 Ethernet2 | PASS | - |
| 232 | s02 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet4 - Remote: l04 Ethernet2 | PASS | - |
| 233 | s02 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet1 (IP: 100.65.0.2) - Destination: l01 Ethernet2 (IP: 100.65.0.3) | PASS | - |
| 234 | s02 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet2 (IP: 100.65.0.6) - Destination: l02 Ethernet2 (IP: 100.65.0.7) | PASS | - |
| 235 | s02 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet3 (IP: 100.65.0.10) - Destination: l03 Ethernet2 (IP: 100.65.0.11) | PASS | - |
| 236 | s02 | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: P2P Interface Ethernet4 (IP: 100.65.0.14) - Destination: l04 Ethernet2 (IP: 100.65.0.15) | PASS | - |
| 237 | s02 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab. |
| 238 | s02 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab. |
| 239 | s02 | Hardware | VerifyTemperature | Verifies the device temperature. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab. |
| 240 | s02 | Hardware | VerifyTransceiversManufacturers | Verifies if all transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab. |
| 241 | s02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet1 - P2P_l01_Ethernet2 = 'up' | PASS | - |
| 242 | s02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet2 - P2P_l02_Ethernet2 = 'up' | PASS | - |
| 243 | s02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet3 - P2P_l03_Ethernet2 = 'up' | PASS | - |
| 244 | s02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet4 - P2P_l04_Ethernet2 = 'up' | PASS | - |
| 245 | s02 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback0 - ROUTER_ID = 'up' | PASS | - |
| 246 | s02 | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | Routing protocol model: multi-agent | PASS | - |
| 247 | s02 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'NTP starting...' |
| 248 | s02 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
