#!/bin/bash

cat certs/intermediate_3.cert.pem certs/ca.crt > certs/bundle_3.pem
vault write connect/root_self_signed/intermediate/set-signed certificate=@./certs/bundle_3.pem