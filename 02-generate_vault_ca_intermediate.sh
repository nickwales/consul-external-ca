#!/bin/bash

# vault secrets enable -path=connect_root_self_signed pki
# vault write -force connect_root_self_signed/intermediate/generate/internal


vault secrets enable -path=connect/root_self_signed pki
cert=$(vault write -force -format json connect/root_self_signed/intermediate/generate/internal | jq -r .data.csr)

echo "$cert" > csr/vault_intermediate.csr