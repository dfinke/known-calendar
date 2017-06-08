function Get-DateEx {    
    Add-Type -Path $PSScriptRoot\Chronic.dll
    $ChronicParserObject = New-Object Chronic.Parser

    $Query = $args -join ' '
    $Response = $ChronicParserObject.Parse($Query)

    if ($Response) {
        $Response.Start
    }
    else {
        Write-Warning -Message "Could not parse: '$($Query)'"
    }
}