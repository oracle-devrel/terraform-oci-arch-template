## Copyright © 2022, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

output "test" {
  value = data.oci_identity_region_subscriptions.home_region_subscriptions
}

# The output "test" above can be used to test a chosen data source
# It is also printed when we execute 'terraform plan'

output "generated_ssh_private_key" {
  value     = tls_private_key.public_private_key_pair.private_key_pem
  sensitive = true
}

# to get the private key, run the following
#     terraform console
#     nonsensitive(tls_private_key.public_private_key_pair.private_key_pem)