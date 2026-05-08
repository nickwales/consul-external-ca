#!/bin/bash

cat certs/intermediate.cert.pem certs/ca.crt > certs/bundle.pem
vault write connect/root_self_signed/intermediate/set-signed certificate=@./certs/bundle.pem