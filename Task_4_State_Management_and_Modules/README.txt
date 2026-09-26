TASK 4 – REMOTE STATE MANAGEMENT & TERRAFORM MODULES
Weeks covered: Week 7 + Week 8

SCREENSHOT CHECKLIST

WEEK 7 – REMOTE STATE

01_Backend_Configuration.png
- VS Code showing the azurerm backend configuration.
- Show storage account, tfstate container and state key.
- Do not show credentials/secrets.

02_Terraform_Init_Remote_State.png
- Terminal showing successful terraform init / state migration.

03_TFState_Container.png
- Azure Storage Account stterraformbaseline01.
- Container: tfstate.
- Show terraform.tfstate if visible.

04_State_Locking.png
- Terminal showing "Acquiring state lock" and "Releasing state lock" during terraform plan.

05_Remote_State_Final_Plan.png
- Successful plan showing no unexpected changes.

WEEK 8 – MODULES

06_Module_Project_Structure.png
- VS Code showing modules/ with network, compute, security and monitoring.

07_Network_Module.png
- network module files: main.tf, variables.tf, outputs.tf.

08_Compute_Module.png
- compute module files.

09_Security_Module.png
- security module files.

10_Monitoring_Module.png
- monitoring module files.

11_Moved_TF.png
- moved.tf showing resource migration into module addresses.

12_Module_Migration_Plan.png
- Terraform plan showing resources moved to module addresses.
- Important: Plan: 0 to add, 0 to change, 0 to destroy.

13_Module_Apply_Success.png
- Successful terraform apply after module migration.

14_Final_No_Changes.png
- Final terraform plan showing infrastructure matches configuration.

IMPORTANT:
- Do not expose private keys, credentials or access tokens.
- The strongest Week 8 evidence is the moved.tf + zero add/change/destroy plan.
- Avoid taking screenshots of unnecessary code; focus on module structure and migration evidence.
