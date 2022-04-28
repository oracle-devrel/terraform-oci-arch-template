# terraform-oci-arch-template

[![License: UPL](https://img.shields.io/badge/license-UPL-green)](https://img.shields.io/badge/license-UPL-green) [![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=oracle-devrel_terraform-oci-arch-template)](https://sonarcloud.io/dashboard?id=oracle-devrel_terraform-oci-arch-template)

## Introduction
This template repository introduces a few elements which are commonly uses in Terraform repositories developed by the Oracle Reference Architectures team. It explains the purpose of some of these elements, often as comments in the code. It can also be used to understand and test Terraform data sources, which are an import tool to retrieve data about the tenancy and its resources.

## Guidelines


### Repository naming
Our current practice is, in general, to have repositories named `terraform-oci-arch-*`. The suffix is usually the key element or couple of elements of the system.

### Releases 
When making changes to a repository, such as bug fixes or enhancements, we create releases.  
We would usually do the intuitive 1.0 -> 1.1 on a regular enhancement, 1.0 -> 1.0.1 on a very minor fix, 1.0 -> 2.0 in a more major redesign.  
In exceptional situations (e.g. correction of a mistake in a very recent release), we opt to delete the release and recreating.

```
git tag -d v1.1
git push origin :v1.1
```

### Release zip auto-generation
- Note the existence of [orm/provider.tf](orm/provider.tf) and [orm/variables.tf](orm/variables.tf), which are slightly different versions of [provider.tf](provider.tf) and [variables.tf](variables.tf). The orm/ versions of the file are the ones used to build the .zip file, to be used in ORM.
- Refer to https://github.com/oracle-devrel/action-release-zip-maker for further documentation

### Tagging 
See [tags.tf](tags.tf) to understand more of what is the Architecture Center namespace.

### Module usage
Consider if there are remote modules which can be used, such as [Autonomous DB](https://github.com/oracle-devrel/terraform-oci-arch-adb), [OKE](https://github.com/oracle-devrel/terraform-oci-arch-oke), [MySQL DB Service](https://github.com/oracle-devrel/terraform-oci-cloudbricks-mysql-database). 
Explore more of the [Oracle DevRel GitHub Organization](https://github.com/oracle-devrel) for more modules, module usage examples, and repositories overall.

### Deploy button
Here is an example **Deploy to Oracle Cloud** button, with link:  
[![Deploy to Oracle Cloud](https://oci-resourcemanager-plugin.plugins.oci.oraclecloud.com/latest/deploy-to-oracle-cloud.svg)](https://cloud.oracle.com/resourcemanager/stacks/create?region=home&zipUrl=https://github.com/oracle-devrel/terraform-oci-arch-tomcat-autonomous/releases/latest/download/terraform-oci-arch-tomcat-autonomous-stack-latest.zip)

The code and links syntax looks like this:
```
[![Deploy to Oracle Cloud](https://oci-resourcemanager-plugin.plugins.oci.oraclecloud.com/latest/deploy-to-oracle-cloud.svg)](https://cloud.oracle.com/resourcemanager/stacks/create?region=home&zipUrl=https://github.com/oracle-devrel/terraform-oci-arch-tomcat-autonomous/releases/latest/download/terraform-oci-arch-tomcat-autonomous-stack-latest.zip)
```

### Examples folder
TO BE ADDED

### Schema.yaml
TO BE ADDED

### Other
Choose variable names wisely :wink: 