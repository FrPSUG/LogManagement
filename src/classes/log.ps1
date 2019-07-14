Class Log {

    $LogPath = $null

    Log ([String]$a){
        if ( -not(test-path -Path $a) ) {
            New-Item -Path $a -ItemType File
            $this.LogPath = $a
        } else {
            $this.LogPath = $a
        }
    }

    Log ([String]$a,[Bool]$FileTimeStamp){
        $leaf =  $(get-date -Format "ddMMyyyy_hhmmss") + "_" + $(split-path $a -Leaf)
        $path = Join-Path -Path (split-path $a) -ChildPath $leaf

        if ( !(test-path $path) ) {
            New-Item -Path $path -ItemType file
            $this.LogPath = $path
        } else {
            $this.LogPath = $path
        }
    }

    Log () {}

    [void] WriteMessage ([String]$m, [Bool]$n){
        If ( $this.LogPath -ne $null ) {
            If ( $n ) {
                $(get-date -Format o) + ' - ' + $m >> $this.LogPath
            } else {
                $m >> $this.LogPath
            }
        }
    }


    [void] WriteMessage ([LogEvent]$m){
        If ( $this.LogPath -ne $null ) {

                $m.GetLogEvent() >> $this.LogPath

        }
    }

}



class LogEvent {

    [datetime] $Date
    [LogEventLevel] $Level
    [String] $Message
    [String] $Separator
    [String] $Source

    LogEvent([LogEventLevel] $Level,[String] $Message, [String] $Source) {

        $this.Date = Get-Date
        $this.Level =$Level
        $this.message = $Message
        $this.source = $Source
        $this.Separator = "`t"
    }

    LogEvent([LogEventLevel] $Level,[String] $Message, [String] $Source, [string] $char) {

        $this.Date = Get-Date
        $this.Level =$Level
        $this.message = $Message
        $this.source = $Source
        $this.Separator = $char
    }


    LogEvent([String] $Message) {

        $this.Date = Get-Date
        $this.Level = [LogEventLevel]::Information
        $this.message = $Message
        $this.source = $null
        $this.Separator = "`t"
    }


    [void] SetSeparator ([String]$char){
        $this.Separator = $char
    }

    [string] GetLogEvent () {

        $timestamp = Get-Date -Date $this.Date -Format o
        $StringBuilder = [System.Text.StringBuilder]::new($timestamp)

        [void]$StringBuilder.Append($this.Separator)
        [void]$StringBuilder.Append($this.level)

        if ($this.source) {
            [void]$StringBuilder.Append($this.Separator)
            [void]$StringBuilder.Append($this.source)
        }
        [void]$StringBuilder.Append($this.Separator)
        [void]$StringBuilder.Append($this.message)
        [void]$StringBuilder.AppendLine()

        return $StringBuilder.ToString()
    }



    [System.Object] ConvertToHashtable () {

        $HashtableLogEvent = @{
                "date" = Get-Date -Date $this.Date -Format 'hh:mm:ss'
                "Level" = $this.Level
                "Source" = $this.source
                "Message" = $this.message
            }

            return $HashtableLogEvent
    }

}



