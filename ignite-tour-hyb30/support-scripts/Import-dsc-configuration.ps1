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
    AutomationAccountName = "dzia4nn5mfajk"
}

Import-AzAutomationDscConfiguration @import -Published