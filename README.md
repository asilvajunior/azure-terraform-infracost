<p align="center">
<img src="assets/images/unicast_logo.png">
</p>

# Automating Cloud Cost Management with Terraform

This repository is part of the presentation **"Automating Cloud Cost Management with Terraform"** presented at the **Cloud Conference Day 2023**. For more information about the presentation, please visit [**here**](https://github.com/asilvajunior/presentations/tree/main/Cloud%20Conference%20Day%202023).

### **GitHub Action Integration**

This code serves as a practical example of how to integrate **Infracost** with your GitHub Action workflow to receive cost estimates directly in Pull Requests.

### **How to Use This Code**

**1. Configuration of Secrets**

The first step for integration is to create the necessary secrets in your project's repository if you don't mind. Be sure to add the following secrets:

- **ARM_CLIENT_ID**: ID for the service principal created in Microsoft Azure.
- **ARM_CLIENT_SECRET**: Secret for the service principal created in Microsoft Azure.
- **ARM_SUBSCRIPTION_ID**: ID of the subscription where you plan to deploy resources.
- **ARM_TENANT_ID**: Tenant ID where you plan to deploy resources.
- **INFRACOST_API_KEY**: Infracost API key for integration.

**2. Using the Cost Management Workflow**

After configuring the secrets, follow the steps below to use the cost management workflow:

- Create a new branch in your repository and make the necessary code changes.
- Create a Pull Request on GitHub with your changes.
- After creating the Pull Request, the PLAN workflow will be automatically triggered.
- You can view the Infracost cost estimate in the comments of the Pull Request.

**3. To destroy resources**

To destroy the resources deployed by the workflow, you need to trigger the destroy action (`destroy.yml`) manually.

Make sure to review the cost estimates to ensure that your changes will not adversely affect the project's budget.

Take advantage of the **Infracost** integration to make informed decisions about the costs associated with changes in cloud infrastructure!

If you have any questions or need additional help, please don't hesitate to contact me.

## :memo: License

This project is under [MIT License](./LICENSE).
