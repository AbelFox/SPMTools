<#
.SYNOPSIS

.DESCRIPTION

.PARAMETER

.EXAMPLE

.EXAMPLE

.NOTES


#>
Function New-Company {
    [cmdletBinding()] 
    Param(
	    [Parameter(Mandatory=$True)] 
        [string]$CompanyName,

        [Parameter(Mandatory=$false)]
        [switch]$ADDS,

        [Parameter(Mandatory=$false)]
        [switch]$OnPremExchange,

        [Parameter(Mandatory=$false)]
        [switch]$OnPremSkype,

        [Parameter(Mandatory=$false)]
        [switch]$ExchangeOnline,

        [Parameter(Mandatory=$false)]
        [switch]$SkypeOnline
    )
    
    #Initial Variable
    $CompanyObj = @{
        Domain = $false
        OnPremServices = @{
            ExchangeUri = $false
            SkypeUri = $false
            CredentialName = $false
        }
        O365 = $false
    }

    $script:Config.Companies.Add($CompanyName,$CompanyObj)
    Write-SPMTConfiguration
}