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
}