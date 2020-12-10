SPS Zone 1 site

# Getting Started

## 0. Getting setup with git version control and running bash scripts.

Though MacOS and Linux users can probably skip this section, it may be worthwhile for Windows users to install a [github for windows](https://desktop.github.com/), which should come with Git Shell. 

## 1. Install Hugo

Running the site locally requires the [Hugo static site framework](https://gohugo.io/).

If you're a Mac/Linux user, we recommend installing Hugo using the [Homebrew](https://brew.sh/) package manager and then `brew install hugo`. If you're a Windows user and use [Chocolatey](https://chocolatey.org/) for package management, run `choco install hugo -confim`. 

If you want to install from source, or prefer another any method, see the [Installation Documentation for Hugo](https://gohugo.io/getting-started/installing/).

## 2. Cloning the Repo

Run `git clone https://github.com/sps-zone-1/site.git` to clone this repo. 

After you clone the repo, you need to include all submodules, which needs to be done manually. In order to grab the submodules, first enter your local copy of the repository (e.g. `cd site` ). Then, run `git submodule init` and then `git submodule update` in order to pull the file contents of the theme and public site submodules. The theme files are especially necessary to test view and test the site locally.

# Updating the Site

*Note: **Please use  `./update-<project/public/theme>-windows.sh` on Windows!** This is to deal with CRLF vs LF line ending discrepancies. *

## 0. Pull changes

 **Always make sure that your local copy is up to date before you start making your own changes!** By running `git status`, you can check if your local copy is up to date. You can then pull remote changes from Github by using `git pull` or `git pull origin main`.

## 1. Adding Pages 

Modify the pages in `/contents`. 

Set `draft = "True"` to keep a page in draft mode (i.e. not visible), which might be useful when multiple people are working on pages that are not yet ready to display on the public site. 

## 2. Testing changes locally

Once the prior steps are completed `hugo server` in the root level of this repo to host the site locally. **Please always do this before deploying!!**

## 3. Deploying to the Public Site (opitonal)

Run `/update-public.sh` (or `./update-public-windows.sh` on windows) to build and deploy the public site. This will first generate the html pages in the `sps-zone-1/sps-zone-1.github.io` repository submodule within the `/public` folder of this repository. Then, the changes will be pushed to the submodule.

This step can be skipped if you don't intend for changes, such as those in draft mode, to be pushed to the public site. Please note that someone else may inadvertently deploy any changes that are not in draft mode to the site. That said, please use draft mode liberally!   

## 4. Pushing changes to the Site generating Repo (this repo)

Great, now you have generated html pages and added them to the public `sps-zone-1/sps-zone-1.github.io` repository. It is equally important to push changes made to markdown files in this repo (`sps-zone-1/site` repository), so that everyone stays on the same page. 

**Please again make sure that your local copy is up to date before you do this!** Just as in step 0, you can make sure of this by pulling any changes from Github by using `git pull` or `git pull origin main`.

Finally, run `./update-project.sh` (or `./update-project-windows.sh` on windows). Feel free to open up this script to see exactly what this script is doing. 

## 5. Update changes to the theme (optional)

Most likely, you will never need to modify the theme repo submodule. However, if you do, then again make sure to test on a locally hosted site, pull remote changes, and only then run `/update-theme.sh` to push changes to the `sps-zone-1/hugo-theme-stack` repository submodule within the `/themes/hugo-whisper-theme` folder of this repository. 
