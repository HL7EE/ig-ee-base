
CodeSystem: TestIdentitySystem1
Id: test-identity-system-1
Title: "Identity Systems"
Description: "Identity system acceptable for organization identification"
* ^caseSensitive = false
* ^experimental = true
* #https://fhir.ee/sid/org/est/br
    "Estonian Business Register Code" 
    "Äriregistri number"
* #urn:pin:org:vatin
    "VATIN" 
 

ValueSet: OrganizationIdentity1
Id: organization-identity-1
Title: "Organization Identity Systems"
Description: "Identity systems acceptable for the organization identification"
* ^experimental = true
* include codes from system TestIdentitySystem1 where concept = #https://fhir.ee/sid/org/est/br and concept = #urn:pin:org:vatin


Profile: TestOrganization1
Parent: Organization
Id: test-organization-1
Title: "TestOrganization1"
Description: "TestOrganization1"
* identifier.system from OrganizationIdentity1 (required)

Instance: ExampleOrg1
InstanceOf: TestOrganization1
Usage: #example
Description: "Org1"
* id = "example-org-1"
* name = "Org1"
* identifier.system = "https://fhir.ee/sid/org/est/br"
* identifier.value = "10856624"

Instance: ExampleOrg2
InstanceOf: TestOrganization1
Usage: #example
Description: "Org2"
* id = "example-org-2"
* name = "Org2"
* identifier.system = #urn:pin:org:vatin
* identifier.value = "10856624"

