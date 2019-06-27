Function New-LogMessage {
    <#
    .SYNOPSIS
        Append message to Log
        Create the log file if does not exists
    .DESCRIPTION
        Append message to Log
        Create the log file if does not exists
    .PARAMETER Path
        Specify the full path to the lof
        Default: $env:temp/mylog.log
    .PARAMETER Message
        Specify message to log
        Default is "Hello World!"
    .EXAMPLE
        New-LogMessage
    .EXAMPLE
        New-LogMessage -Path c:\mylog.log -message "Bonjour"
    #>
    Param(
        $Path   =   "$env:temp/mylog.log",
        $message=   'Hello World!'
    )
    $Log = [Log]::New($Path)
    $Log.writeMessage($Message,$True)
}
