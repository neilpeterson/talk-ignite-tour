<#

.DESCRIPTION
    Import DSC configuration.

.NOTES
    Author: Neil Peterson
    Intent: Sample to import DSC configuration.
 #>

$import = @{
    SourcePath = "windowsfeaturesupdated.ps1";
    ResourceGroupName = "hyb30-demo";
    AutomationAccountName = "hyb30-demo"
}

Import-AzAutomationDscConfiguration @import -Published