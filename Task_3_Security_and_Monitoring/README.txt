TASK 3 – SECURITY & MONITORING
Weeks covered: Week 5 + Week 6

SCREENSHOT CHECKLIST

01_Managed_Identity_Overview.png
- id-terraform-baseline
- Show identity name, resource group and location.

02_Managed_Identity_Properties.png
- Show relevant identity properties/principal information if visible.
- Do not expose credentials or secrets.

03_RBAC_Role_Assignment.png
- Show Reader role assigned to the managed identity.

04_RBAC_Scope.png
- Show that the Reader role assignment is scoped to rg-terraform-baseline.

05_Log_Analytics_Workspace.png
- law-terraform-baseline
- Show workspace overview, resource group and location.

06_Diagnostic_Setting.png
- vm-diagnostics
- Show target VM and Log Analytics destination.

07_AllMetrics_Configuration.png
- Show AllMetrics enabled for the VM diagnostic setting.

08_Monitoring_Verification.png
- Azure monitoring/metrics view or diagnostic-setting verification.

09_Terraform_Security_Monitoring_Outputs.png
- If useful, show relevant Terraform outputs/state information for the security/monitoring resources.

IMPORTANT:
- Do not show private keys, passwords, access tokens or secrets.
- The current diagnostic configuration uses AllMetrics; do not claim VM log categories are configured.
- Keep screenshots readable and crop unrelated desktop content.
