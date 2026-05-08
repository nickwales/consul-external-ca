#!/bin/bash

openssl ca -config config/intermediate_spiffe.conf \
      -extensions v3_intermediate_req \
      -days 3650 -notext -md sha256 \
      -in csr/vault_intermediate.csr \
      -out certs/intermediate.cert.pem