---
external help file: LogManagement-help.xml
Module Name: LogManagement
online version:
schema: 2.0.0
---

# New-LogMessage

## SYNOPSIS
Append message to Log
Create the log file if does not exists

## SYNTAX

```
New-LogMessage [[-Path] <Object>] [[-message] <Object>]
```

## DESCRIPTION
Append message to Log
Create the log file if does not exists

## EXAMPLES

### EXEMPLE 1
```
New-LogMessage
```

### EXEMPLE 2
```
New-LogMessage -Path c:\mylog.log -message "Bonjour"
```

## PARAMETERS

### -message
Specify message to log
Default is "Hello World!"

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: Hello World!
Accept pipeline input: False
Accept wildcard characters: False
```

### -Path
Specify the full path to the lof
Default: $env:temp/mylog.log

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: "$env:temp/mylog.log"
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
