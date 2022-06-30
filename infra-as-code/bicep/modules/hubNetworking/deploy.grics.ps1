az login
$ConnectivitySubscriptionId="450978e3-2c7e-4a77-8303-6846668ac2c3"
az account set --subscription $ConnectivitySubscriptionId

az group create --location canadacentral `
   --name rgPOCHub

az deployment group create `
   --resource-group rgPOCHub  `
   --template-file C:\TFS\GitHub\ALZ-Bicep\infra-as-code\bicep\modules\hubNetworking\hubNetworking.bicep `
   --parameters @C:\TFS\GitHub\ALZ-Bicep\infra-as-code\bicep\modules\hubNetworking\parameters\hubNetworking.parameters.grics.json