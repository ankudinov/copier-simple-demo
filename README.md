# CVaaS and AVD Demo, EVPN MLAG

This lab is tested for:  

  Containerlab Version: 0.59.0  
  Codespace Container Size  
    CPUs: 8  
    memory: 32 GB  
    storage: 64 GB  

Last reviewed: 17/12/2024  

> Lab Credentials  
&nbsp;&nbsp;&nbsp;&nbsp;Username: arista  
&nbsp;&nbsp;&nbsp;&nbsp;Password: arista  

## Lab Inventory

This lab has following devices:

| Hostname | Type | OS | Management Address | Login | Password |
| -------- | ---- | -- | ------------------ | ----- | -------- |
| s01 | switch | cEOS-lab, 4.32.3M | 10.0.1.1 | arista | arista |
| s02 | switch | cEOS-lab, 4.32.3M | 10.0.1.2 | arista | arista |
| l01 | switch | cEOS-lab, 4.32.3M | 10.0.2.1 | arista | arista |
| l02 | switch | cEOS-lab, 4.32.3M | 10.0.2.2 | arista | arista |
| l03 | switch | cEOS-lab, 4.32.3M | 10.0.2.3 | arista | arista |
| l04 | switch | cEOS-lab, 4.32.3M | 10.0.2.4 | arista | arista |
| h01 | host | cEOS-lab, 4.32.3M | 10.0.3.1 | arista | arista |
| h02 | host | cEOS-lab, 4.32.3M | 10.0.3.2 | arista | arista |

> To access any device, use `ssh <username>@<hostname>` or simply type `<hostname>` to use the SSH alias.

## How To Use The Lab

- Use `make start` to start the lab.
- `make build` to build configs with AVD. You can skip this step if no changes were made, as configs were pre-generated.
- `make deploy` to send configs to the cEOS-lab switches via eAPI.
- SSH to h01 using `h01` alias and type `test` alias. All ping tests must pass.
- Use ANTA to verify the network state by typing `make test`.
- You can stop the lab any time with `make stop` or print the list of running containers with `make inspect`.
