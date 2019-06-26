# LogManagement

Community module to create and manage log files

## Requirements

Please vote and submit your ideas in issues.

### Milestone 1

* Test Driven Development (build Pester tests first)
* Use PowerShell Classes
* 2 commands:
   * Write Log
   * Rotate Log
* Support Pipeline
* Support Windows PowerShell/PSCore
* Support Windows/Linux
* Support for different timezone, UTC by default
* Log format support: CSV, XML, JSON
* File name Format:
   * Default: `<scriptname><delimiter><datetime><delimiter>.log`
   * Example: 
* Log line Format
   * Default: `<datetime><delimiter><messagetype><delimiter><source><delimiter><message>`
   * Example: 
* Logs should be parsable
* Support for Header and Footer parameter
* LICENSE file: MIT
* CHANGELOG file
* CONTRIBUTIONS file
* Azure DevOps CI/CD
   * Modules: InvokeBuild, BuildHelpers, PSdepend, PSDepend
   * Tasks: build, test, clean, deploy, analyze

### Milestone 2


* Ship log to EventLog
* Email Log

## Commands

* Write-LogMessage
* Rotate-LogMessage
