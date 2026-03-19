using './main.bicep'

// General Parameters
param parLocations = [
  'westus2'
  'eastus2'
]
param parEnableTelemetry = true

param platformSecurityConfig = {
  createOrUpdateManagementGroup: true
  managementGroupName: 'dc85dbf7-e161-4704-9638-22670f48a0e1'
  managementGroupParentId: 'b7ae5801-bb40-4750-b35d-ddd75e1dbcc8'
  managementGroupIntermediateRootName: '6966a8a3-5597-49c1-b84a-8c9150a804a3'
  managementGroupDisplayName: 'Security-MG'
  managementGroupDoNotEnforcePolicyAssignments: []
  managementGroupExcludedPolicyAssignments: []
  customerRbacRoleDefs: []
  customerRbacRoleAssignments: []
  customerPolicyDefs: []
  customerPolicySetDefs: []
  customerPolicyAssignments: []
  subscriptionsToPlaceInManagementGroup: ['a0db544f-153c-4da2-a43d-e2e947dc7be6']
  waitForConsistencyCounterBeforeCustomPolicyDefinitions: 30
  waitForConsistencyCounterBeforeCustomPolicySetDefinitions: 30
  waitForConsistencyCounterBeforeCustomRoleDefinitions: 30
  waitForConsistencyCounterBeforePolicyAssignments: 30
  waitForConsistencyCounterBeforeRoleAssignments: 30
  waitForConsistencyCounterBeforeSubPlacement: 30
}

// Only specify the parameters you want to override - others will use defaults from JSON files
param parPolicyAssignmentParameterOverrides = {
  // No policy assignments in platform-security currently
}
