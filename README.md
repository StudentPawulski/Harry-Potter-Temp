```
This readme is generated from metadata.yaml. Manual changes to this file will be overwritten
```

# ops-dash ![Badge](https://img.shields.io/badge/version-N/A-brightbreen.svg) ![Badge](https://img.shields.io/badge/region-us_west_1-blue.svg)


## repo_url
  https://chug.git.beanstalkapp.com/ops-dash.git

## description
  The ops-dash is a dashboard built with Smashing that displays
real-time data for the Dev-Ops team.

## contributors 
| Name | Email |
| ---- | ---- |
|Stephen Pawuklski|spawulski@lotlinx.com|
|Ian Mcphillips|imcphillips@lotlinx.com|


## chef_runlist 
- role[base] 
- role[aws-node] 
- role[icinga-monitored] 
- recipe[apache2] 
- recipe[ruby] 

## terraform_strategy
  simple

## terraform 
```
us-west-1: 
  prd: 
    node_count: 1 
    node_type: t2.small
```

## deploy_type
  freestyle
## freestyle_options
```
build_script: ./deployer-assets/build.bash
package_script: ./deployer-assets/package.bash
```
## environment

## port
  80
