# Azure Vuln-AD Setup

## Advisory

All the binaries/scripts/code of this should be used for authorized penetration testing and/or educational purposes only. Any misuse of this software will not be the responsibility of the author or of any other collaborator. Use it at your own risk. Use it on your own network and/or with the network owner's permission.

Please also be aware that this script downloads the latest version of https://github.com/WazeHell/vulnerable-AD and executes to setup the vulnerable domain. I advise to review this script yourself before using my script.

## Description
Using the "Run Powershell" artifact in Azure DevTestLabs, this will allow you to quickly **create purpose built vulnerable active directory** environment.

## Why make this script?
When using the "Run Powershell" artifact in Azure, you are limited to stating a URL of where the powershell script is hosted and then any arguments that you want to pass. Additionally, when you also install the "Create Domain" artifact it does not install all the RSAT tools on the server. This script simplies the setup of a vulnerable AD environment by taking the following actions:
- Starts transaction logging and will save to the users Desktop (this will importanly save the output from when vulnerable-ad is run).
- Installs the RSAT tools.
- Downloads and executes vulnerable-ad (link above).
- Stops the transaction logging.
