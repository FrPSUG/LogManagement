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
   * Rotate Log (used to 
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
