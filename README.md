# What is this?
This is a project to support QA. It has the necessary sources and base contents to:
- Commit / Promote / Deploy a wide range of sample metadata
- Create scratch orgs with features enabled to create/modify/deploy the metadata from and to those orgs.

# What are the prerequisites?
- SFDX cli setup (see google how to set it up)
- Git available on machine (run cli command git -v; error? you don't have it. Check google how to get it)
- Dev Hub (trial org, playground, dev edition; enable dev hub)
- use sfdx force:auth:login to authenticate the devhub
- Clone the ctx2 repo

# What do I need to do:
On a high level the steps are:
- Spin up scratch orgs (Dev, Test, Prod)
- Push the metadata into the new scratch org
- Add scratch orgs to Copado as org creds
- Create empty repo
- Set up copado pipeline

# Salesforce DX Project: Next Steps

Now that you’ve created a Salesforce DX project, what’s next? Here are some documentation resources to get you started.

## How Do You Plan to Deploy Your Changes?

Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

## Configure Your Salesforce DX Project

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

## Read All About It

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)
