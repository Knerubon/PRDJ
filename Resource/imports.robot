*** Settings ***

Resource        ../keyword/_init.resource
Resource        ../Resource/Library/_init.resource
Resource        ../Resource/variables/_init.resource

Variables        ./commons.yaml
Variables        ../Resource/configs/${ENV}/env.yaml
Variables        ../Resource/testdata/${ENV}/example_data.yaml

