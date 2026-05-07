#!/bin/bash
cd certs/
openssl genrsa -out ca.key 4096

# Create the self-signed Root CA certificate
openssl req -x509 -new -nodes -key ca.key -sha256 -days 3650 \
  -out ca.crt -config ../config/ca_spiffe.conf -extensions v3_ca \
  -subj "/CN=SPIFFE-Root-CA"

