# NodeJS S2I Sample - Red Hat Openshift
## 1. Configure in package.json
### Configuration in scripts "dev" must specified the --port option
## 2. Configure Dockerfile for the runtime & permissions
### The important thing is the permissions and the CMD instructions must run in "-- --host" so it exposed to network
