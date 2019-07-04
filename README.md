[![Build Status](https://dev.azure.com/frpsug/LogManagement/_apis/build/status/FrPSUG.LogManagement?branchName=master)](https://dev.azure.com/frpsug/LogManagement/_build/latest?definitionId=1&branchName=master)

# LogManagement

Community module to create and manage log files

## Use cases

* Log during script runtime
* Performance aspects to keep in mind
   * High volume of write to disk
   * Support for multiple write at the same time to same file (add retries too ?)

## Requirements

Please vote and submit your ideas in issues.

### Milestone 1

* Test Driven Development (build Pester tests first)
* Use PowerShell Classes
* 2 commands:
   * Write Log (used to write in a new or existing log file)
   * Rotate Log (used to delete old logs, specified by a specific date or number of days)
* Support Pipeline
* Support Windows PowerShell/PSCore
* Support Windows/Linux
* Support for different timezone, UTC by default
* Log format support: CSV
* File name Format:
   * Default: `<scriptname><delimiter><datetime><delimiter>.log`
   * Example:
* Log line Format
   * Default: `<datetime><delimiter><messagetype><delimiter><source><delimiter><message>`
   * Example:
* Logs should be parsable
* Support for Header and Footer parameter
* Handle when file is currently in use

### Milestone 2

* Log format:  XML, JSON
* Ship log to EventLog
* Email Log
* Summarize log performance
  * How long the log ran
  * How long each steps ran
* Log parser

### Other needs

* LICENSE file: MIT
* CHANGELOG file
* CONTRIBUTIONS file
* Azure DevOps CI/CD
   * Modules: InvokeBuild, BuildHelpers, PSdepend, PSDeploy
   * Tasks: build, test, clean, deploy, analyze

## Commands

* Write-LogMessage
* Rotate-LogMessage


## To validate

* Support for Credential
* Support for PSDrive

## Contribution

### Fork the repo, edit and push back

1. Fork the repository
1. Clone locally
1. Run `build.ps1 -InstallDependencies`
   1. NOTE: You need to do this only the first time
1. Run `build.ps1 -task clean,build,test` each time you modify the code

### Pull the changes to your fork

```
# Assuming you have a fork and did a git clone locally
# Navigate to your local copy
# Make sure you don't have pending changes (push them first if its the case)
# Add the remote source repo here we call it "upstream"
git remote add upstream https://github.com/FrPSUG/LogManagement.git

# retrieve the changes from upstream
git fetch upstream

# updating your fork from original repo to keep up with their changes
git pull upstream master

# to push the code to your fork:
git push
```

