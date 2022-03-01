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


