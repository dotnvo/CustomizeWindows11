function Get-TaskbarSize {
<#  
    .SYNOPSIS
    Queries the current setting of Taskbar Size

    .DESCRIPTION
    The Get-TaskbarSize cmdlet is used to query the current setting of the Taskbar Size

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-TaskbarSize

    Determines the current Taskbar Size

    .EXAMPLE
    Get-TaskbarSize -Verbose

    Determines the current Taskbar Size, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -Parameter $PSBoundParameters
}