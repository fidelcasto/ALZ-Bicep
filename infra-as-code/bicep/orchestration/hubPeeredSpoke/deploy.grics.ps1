az login

az deployment mg create `
    --template-file C:/TFS/GitHub/ALZ-Bicep/infra-as-code/bicep/orchestration/hubPeeredSpoke/hubPeeredSpoke.bicep `
    --parameters @C:/TFS/GitHub/ALZ-Bicep/infra-as-code/bicep/orchestration/hubPeeredSpoke/parameters/hubPeeredSpoke.parameters.grics.json `
    --location canadacentral `
    --management-group-id [...]