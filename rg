https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/overview?tabs=bicep
https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/learn-bicep?tabs=azure-powershell
https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/deployment-script-template
https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/template-tutorial-deployment-script?tabs=CLI


Limitations
The following limitations apply to tags:
-	Not all resource types support tags. To determine if you can apply a tag to a resource type, we can check here 
-	Each resource, resource group, and subscription can have a maximum of 50 tag name-value pairs. If you need to apply more tags than maximum, use a JSON string for the tag value. The JSON string can contain many of the values that you apply to a single tag name. A resource group or subscription can contain many resources that each have 50 tag name-value.
-	The tag name has a limit of 512 characters and the tag value has a limit of 256 characters
-	Classic resources such as Cloud Service don´t support tags.
-	Azure IP Groups and Azure Firewall Policies don´t support PATCH operations. 
-	Tag names can´t contain these characters: <, >, %, &, \, ?,  /

Azure Resource Manager template specs
Create & deploy template specs - Azure Resource Manager | Microsoft Learn
A template spec is a resource type for storing an Azure Resource Manager template in Azure for later deployment. This resource type enables you to share ARM templates with other users in your org. You can use Azure RBAC. Azure securely stores template specs in resource group. Template specs support versioning. 
Why use template specs?
•	You use standard ARM templates for your template spec.
•	You manage access through Azure RBAC, rather than SAS tokens.
•	Users can only deploy the template spec without having write access to the template
•	You can integrate the template spec into the existing deployment process.
Template specs enable you to create canonical templates and share them with teams in your organization. Template specs are secure because they´re available to ARM for deployment, but not accessible to users without the correct permissions. Users can only need read access to the template spec to deploy its template. 
Required Permissions 
There are two Azure build-in roles defined for template spec:
-	Template Spec Reader
-	Template Spec Contributor 
