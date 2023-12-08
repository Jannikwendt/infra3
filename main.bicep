param location string = 'Poland Central'
param registry_name string = 'jwendtcr'
param acrAdminUserEnabled bool = true

module registry './modules/container-registry/registry/main.bicep' = {
  name: '${uniqueString(deployment().name, location)}-test-crrmin'
  params: {
    // Required parameters
    name: registry_name
    location: location
    acrAdminUserEnabled: acrAdminUserEnabled
  }
}

