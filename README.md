##### How to use self signed cert in Consul Mesh with Vault

This repo provides guidance for using an external/offline CA for Consul's Mesh certificates.

It will step through
- Generating a CA
- Creating a PKI mount point in Vault
- Creating a CSR intermediate from the mount point
- Signing the CSR and uploading to the mount point

### Example Steps Using OpenSSL

1. Create a CA
Run the `generate_ca.sh` command, this will output the 

2. Generate the intermediate from Vault
Run the `generate_vault_ca_csr_intermediate.sh` command
This will create the CSR for the intermediate that will be stored in Vault.

3. Sign the intermediate 

Run the `sign_intermediate.sh` command



#### Issues

If you are using auto_config then the agents use mesh certificates too. So those will need to be given a CA that continues to be valid.

### Links

[Custom private key with Consul CA (not Vault)](https://developer.hashicorp.com/consul/docs/secure-mesh/certificate/built-in#specifying-a-custom-private-key-and-root-certificate)

[Github Issue regarding using external CA certificates](https://github.com/hashicorp/consul/issues/11598)

[Readme from unmerged PR](https://github.com/hashicorp/consul/blob/d9185d2a96c68fdb2b413f1d929624da6b1e0906/website/content/docs/connect/ca/vault.mdx#using-an-external-root-ca)


[Code path for Vault CA Provider](https://github.com/hashicorp/consul/blob/main/agent/connect/ca/provider_vault.go#L565)

