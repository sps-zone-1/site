# Updating the Site

## Adding Pages 

Modify the pages in `/contents`.

## Deploying to the Public Site

Run `/update-public.sh` to build and deploy the public site. This will first generate the html pages in the `sps-zone-1/sps-zone-1.github.io` repository submodule within the `/public` folder of this repository. Then, the changes will be pushed to the submodule.

## Update this site generating repository

Run `/update-project.sh` to push change in this site generating repository. 

## Update changes to the theme

Run `/update-theme.sh` to push changes to the `sps-yale/hugo-fresh` forked repository submodule within the `/themes/hugo-fresh` folder of this repository. 