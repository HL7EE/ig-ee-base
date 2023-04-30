CodeSystem: EEBaseIdentitySystem
Id: ee-identity-system
Title: "Identity Systems"
Description: "Identity system acceptable for organization identification"
* ^caseSensitive = false
* ^experimental = true
* #https://fhir.ee/sid/org/est/br
    "Estonian Business Register Code" 
    "Äriregistri number"
* #https://fhir.ee/sid/org-est-medre
    "License number provided by The National Institute for Health Development"  
    "Terviseameti litsentsi number"
* #https://fhir.ee/sid/org/vatin
    "VAT identification number"
    "KMKR"
* #https://fhir.ee/sid/pid/est/ni
    "Estonian personal national identification code"
    "Isikukood"
* #https://fhir.ee/sid/pid/est/medre
    "Healthcare professional number provided by The National Institute for Health Development"
    "Tervishoiutäätaja TAM kood"


ValueSet: EEBaseOrganizationIdentity
Id: ee-organization-identity
Title: "Organization Identity Systems"
Description: "Identity system acceptable for organization identification"
* ^experimental = true
* include codes from system EEBaseIdentitySystem where concept = #https://fhir.ee/sid/org-est-medre and concept = #https://fhir.ee/sid/org/est/br and concept = #https://fhir.ee/sid/org/vatin

ValueSet: EEBasePatientIdentity
Id: ee-patient-identity
Title: "Person Identity Systems"
Description: "Identity system acceptable for organization identification"
* ^experimental = true
* include codes from system EEBaseIdentitySystem where concept = #https://fhir.ee/sid/pid/est/ni
