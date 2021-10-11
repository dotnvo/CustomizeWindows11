function Set-TaskbarSize {
<#  
    .SYNOPSIS
    Enables or disables the Taskbar Size setting

    .DESCRIPTION
    The Set-TaskbarSize cmdlet is used to enable or disable the Taskbar Size setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-TaskbarSize -Enable

    Enables the Taskbar Size setting

    .EXAMPLE
    Set-TaskbarSize -Disable -Verbose

    Disables the Taskbar Size setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Taskbar Size')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Taskbar Size')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}