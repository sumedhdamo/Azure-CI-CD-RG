Full CI/CD Setup Summary :

1. GitHub Repository Setup
•	Created GitHub repo: Azure-CI-CD-RG
________________________________________
2. Local Git Environment Setup
•	Installed Git (if not already)
•	Ran:
git config --global user.name "Your Name"
git config --global user.email "your-email"
________________________________________
3. Cloned GitHub Repo Locally
git clone https://github.com/sumedhdamo/Azure-CI-CD-RG.git
________________________________________
4. Created Terraform Files and Folder
•	Folder created:
terraform/
•	Files added:
o	main.tf
o	variables.tf
________________________________________
5. Staged and Pushed Files to GitHub
git add .
git commit -m "Added Terraform files"
git push origin main
________________________________________
6. Created Azure Service Principal
Command used:
az ad sp create-for-rbac --name "github-ci-cd-sp" --role="Contributor" --scopes="/subscriptions/<subscription-id>" --sdk-auth

Output of above command:

  "clientId": "XX XX XX XX",
  "clientSecret": "XX XX XX XX",
  "subscriptionId": "XX XX XX XX",
  "tenantId": "XX XX XX XX",
  "activeDirectoryEndpointUrl": "https://login.microsoftonline.com",
  "resourceManagerEndpointUrl": "https://management.azure.com/",
  "activeDirectoryGraphResourceId": "https://graph.windows.net/",
  "sqlManagementEndpointUrl": "https://management.core.windows.net:8443/",
  "galleryEndpointUrl": "https://gallery.azure.com/",
  "managementEndpointUrl": "https://management.core.windows.net/"
________________________________________
7. Added GitHub Secrets
In GitHub → Settings → Secrets and variables → Actions, you added:
Secret Name
ARM_CLIENT_ID
ARM_CLIENT_SECRET
ARM_SUBSCRIPTION_ID
ARM_TENANT_ID
________________________________________
8. Created GitHub Actions Workflow File
•	Folder created:
.github/workflows/
•	File added:
o	create.yml (Terraform apply workflow)
________________________________________
9. Manually Triggered GitHub Workflow
•	Went to Actions tab
•	Selected “Create RG with Terraform”
•	Clicked “Run workflow”
