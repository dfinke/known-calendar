function Get-DateEx {    
    Add-Type -Path .\Chronic.dll
    $cp = New-Object Chronic.Parser

    $q = $args -join ' '
    $r = $cp.Parse($q)

    if ($r) {
        $r.Start
    }
    else {
        "Could not parse: '$($q)'"
    }
}