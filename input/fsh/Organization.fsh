Alias: $org-type = http://terminology.hl7.org/CodeSystem/organization-type

/*
* ^compose.include.system = $org-type

* ^compose.include.concept[+].code = #prov
* ^compose.include.concept[=].designation[+].language = #et
* ^compose.include.concept[=].designation[=].value = "Tervishoiuteenuse osutaja"

* ^compose.include.concept[+].code = #govt
* ^compose.include.concept[=].designation[+].language = #et
* ^compose.include.concept[=].designation[=].value = "Riigiasutus"

* ^compose.include.concept[+].code = #ins
* ^compose.include.concept[=].designation[+].language = #et
* ^compose.include.concept[=].designation[=].value = "Kindlustaja"

* ^compose.include.concept[+].code = #other
* ^compose.include.concept[=].designation[+].language = #et
* ^compose.include.concept[=].designation[=].value = "Muu"
*/

Profile: EEBaseOrganization
Parent: Organization
Id: ee-organization
Title: "EEBase Organization"
Description: " Organization is a resource intended for documenting information related to an entity that has been formed for the purpose of achieving some form of collective action. 'Organization' as such has a narrower definition in context of EEBase - in order to be conformant to EEBaseOrganization profile, an organization MUST be registered as a business. Yet, Organization could be used for documenting contact information and/or providing support for other resources that need to reference organizations."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-11-21T13:25:49.780106+00:00"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^publisher = "HL7 Estonia"
//* ^abstract = true
* . ^short = "A grouping of people or organizations with a common purpose without substructure"
* identifier 1.. MS
* identifier.system from EEBaseOrganizationIdentifierDomain (required)
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* active 1.. MS
* active ^short = "Whether the organization's record is in active use"
* active ^definition = "Whether the organization's record is in active use"
* type from EEOrganizationType (extensible)
* name 1.. MS
* contact.address MS
* contact.address only EEBaseAddress
* partOf only Reference(EEBaseOrganization)


Instance: OrganizationRakvereHospital
InstanceOf: EEBaseOrganization
Usage: #example
Description: "Organization Rakvere Hospital"
* id = "rh"
* name = "Rakvere Haigla"
* identifier.system = #https://fhir.ee/sid/org/est/br
* identifier.value = "10856624"
* alias = "RH"
* contact
  * telecom.system = #email
  * telecom.value = "info@rh.ee"
  * address.line = "Lõuna põik 1"
  * address.city = "Rakvere"
  * address.state = "Lääne-Viru"
  * address.country = "EE"
  * address.use = #work
* active = true


Instance: OrganizationITK
InstanceOf: EEBaseOrganization
Usage: #example
Description: "Organization ITK"
* id = "itk"
* name = "Ida-Tallinna Keskhaigla"
* identifier.system = #https://fhir.ee/sid/org/est/br
* identifier.value = "10822068"
* alias = "ITK"
* contact
  * telecom.system = #email
  * telecom.value = "info@itk.ee"
  * address.line = "Ravi tn 18"
  * address.city = "Tallinn"
  * address.state = "Harju"
  * address.country = "EE"
  * address.use = #work  
* active = true

Instance: OrganizationSynlab
InstanceOf: EEBaseOrganization
Usage: #example
Description: "Organization Synlab"
* id = "synlab"
* name = "SYNLAB EESTI OÜ"
* identifier.system = #https://fhir.ee/sid/org/est/br
* identifier.value = "11107913"
* alias = "Synlab"
* contact
  * telecom.system = #email
  * telecom.value = "info@synlab.com"
  * address.line = "Veerenni tn 53a"
  * address.city = "Tallinn"
  * address.country = "EE"
  * address.use = #work  
* active = true

Instance: OrganizationTervisekassa
InstanceOf: EEBaseOrganization
Usage: #example
Description: "Organization Tervisekassa"
* id = "ehif"
* name = "Eesti Tervisekassa"
* identifier.system = #https://fhir.ee/sid/org/est/br
* identifier.value = "74000091"
* alias = "EHIF"
* contact
  * telecom.system = #email
  * telecom.value = "info@tervisekassa.ee"
  * address.line = "Lastekodu 88"
  * address.city = "Tallinn"
  * address.country = "EE"
  * address.use = #work  
* active = true
