<#

.DESCRIPTION
    Compile DSC configuration.

.NOTES
    Author: Neil Peterson
    Intent: Sample to demonstrate DSC compilation.
 #>

 $params = @{
    ConfigurationName = "windowsfeaturesupdated";
    ResourceGroupName = "hyb30-demo";
    AutomationAccountName = "dzia4nn5mfajk"
}

Start-AzAutomationDscCompilationJob @params