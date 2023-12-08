param location string
param containerRegistryName string
param acrAdminUserEnabled bool = true

module registry './modules/container-registry/registry/main.bicep' = {
  name: '${uniqueString(deployment().name, location)}-test-crrmin'
  params: {
    // Required parameters
    name: containerRegistryName
    location: location
    acrAdminUserEnabled: acrAdminUserEnabled
  }
}

