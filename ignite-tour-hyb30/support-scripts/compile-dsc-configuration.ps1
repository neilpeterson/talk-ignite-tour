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
    AutomationAccountName = "hyb30-demo"
}

Start-AzAutomationDscCompilationJob @params