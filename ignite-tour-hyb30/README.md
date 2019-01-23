## Demo 1 - Configuration, State, Alert

**Prep:**

- Stop IIS on VM, this will surface later in the demos

**DSC:**

- Step through DSC Solution
- Crate  and compile state configuration (scripts)
- Reassign VM to new configuration (manual)

**Inventory and State Tracking:**

- Step through the Inventory and Change Tracking solutions
- Show IIS services in Inventory (should see one stopped)
- Show detected IIS failure in state tracking

## Demo 2 - Log Analytics and Alert

**Monitor Logs Dashboarding**

- Go back through change tracking, show IIS failure again
- Create Log Analytics query to surface systems with failed IIS, pin to Dashboard

**Log analytics query for dashboard:**

```
ConfigurationChange
| where ConfigChangeType == "WindowsServices"
| where SvcName == "W3SVC"
| where SvcState == "Stopped"
| summarize count() by Computer, bin(TimeGenerated, 7d)
| render piechart
```

**Log Analytics and simple alert**

- Create Log Analytics query to surface failed IIS
- Create alert based on query
- Create action group to send email
- Create action group to trigger runbook

**Log analytics query for alert**

```
ConfigurationChange
| where ConfigChangeType == "WindowsServices"
| where SvcName == "W3SVC"
| where SvcState == "Stopped"
| project Computer
```

**Stop IIS on VM**

At this point, stop IIS on a VM. Once completed cary on with these steps while giving the alert action groups an opportunity to run.

**Azure Automation**

- Show Runbook solution
- Show Runbook in detail
- Show job logs
- Show Teams message
- Show Teams email

**File diff**

This is not IIS-related, but a cool solution.

- Show file change solution and changed Linux host contents
- Create log analytics query to surface file changes*

**Log analytics query for alert:**

```
ConfigurationChange
| where ConfigChangeType == "Files"
| where FileSystemPath == "/etc/host.conf"
```
