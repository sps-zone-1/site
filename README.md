# Updating the Site

## Adding Pages 

Modify the pages in `/contents`. Set `draft = "True"` to keep a page in draft mode (i.e. not visible), which might be useful when multiple people are working on pages that are not yet ready to display on the public site. 

## Testing changes locally

Run `hugo server` in the root level of this repo to host the site locally. **Please always do this before deploying!!**

## Deploying to the Public Site

Run `/update-public.sh` to build and deploy the public site. This will first generate the html pages in the `sps-zone-1/sps-zone-1.github.io` repository submodule within the `/public` folder of this repository. Then, the changes will be pushed to the submodule.

## Update this site generating repository

Run `/update-project.sh` to push change in this site generating repository. 

## Update changes to the theme

Run `/update-theme.sh` to push changes to the `sps-zone-1/hugo-whisper-theme` forked repository submodule within the `/themes/hugo-whisper-theme` folder of this repository. 

## Updating the site as a Windows user

Follow the above steps but run '/update-public-windows.sh' to build and deploy the site. Then run '/update-project-windows.sh' to push your changes. Similarly, if updating the theme run '/update-theme-windows.sh'.

This is because the windows files use CRLF endings, rather than LF endings (so that they can run on Windows). The autocrlf line stops the conversion of the files to LF format so that they will run properly (the value is set to false).

## Git Pull

It is also good to run 'git pull origin master' in the terminal to make sure you have an updated version of the repository before making any changes. 
