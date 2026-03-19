using './main.bicep'

// General Parameters
param parLocations = [
  'westus2'
  'eastus2'
]
param parEnableTelemetry = true

param landingZonesOnlineConfig = {
  createOrUpdateManagementGroup: true
  managementGroupName: 'a1280653-0bcc-4703-86e4-d80bd98e37a8'
  managementGroupParentId: '6d3dbd19-d5e8-4da3-acaa-aec6d7044646'
  managementGroupIntermediateRootName: '6966a8a3-5597-49c1-b84a-8c9150a804a3'
  managementGroupDisplayName: 'Online-MG'
  managementGroupDoNotEnforcePolicyAssignments: []
  managementGroupExcludedPolicyAssignments: []
  customerRbacRoleDefs: []
  customerRbacRoleAssignments: []
  customerPolicyDefs: []
  customerPolicySetDefs: []
  customerPolicyAssignments: []
  subscriptionsToPlaceInManagementGroup: []
  waitForConsistencyCounterBeforeCustomPolicyDefinitions: 10
  waitForConsistencyCounterBeforeCustomPolicySetDefinitions: 10
  waitForConsistencyCounterBeforeCustomRoleDefinitions: 10
  waitForConsistencyCounterBeforePolicyAssignments: 40
  waitForConsistencyCounterBeforeRoleAssignments: 40
  waitForConsistencyCounterBeforeSubPlacement: 10
}

// Currently no policy assignments for online landing zones
// When policies are added, specify parameter overrides here
param parPolicyAssignmentParameterOverrides = {
  // No policy assignments in platform-security currently
}
