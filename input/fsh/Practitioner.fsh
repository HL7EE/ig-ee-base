Alias: $degreeLicenseCertificate = http://terminology.hl7.org/CodeSystem/v2-0360

ValueSet: EEBaseDegreeLicenseCertificate
Id: degree-license-certificate
Title: "Qualification"
Description: "Qualification based on the education"
* ^experimental = true
* ^compose.include.system = $degreeLicenseCertificate

* ^compose.include.concept[+].code = #PN
* ^compose.include.concept[=].designation[+].language = #et
* ^compose.include.concept[=].designation[=].value = "Eriõde"
* ^compose.include.concept[+].code = #RN
* ^compose.include.concept[=].designation[+].language = #et
* ^compose.include.concept[=].designation[=].value = "Õde"

Profile: EEBasePractitioner
Parent: Practitioner
Id: ee-practitioner
Title: "EEBase Practitioner"
Description: "This profile defines the EE Base constraints and extensions on the Practitioner resource for the minimal set of data to query and retrieve practitioner information. The profile defines a structure that localises core concepts, including identifiers and terminology, for use in an Estonian context for practitioner."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2022-11-21T13:15:21.1820806+00:00"
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* identifier 1.. MS
* identifier.system 1.. MS
* identifier.system from EEBasePractitionerIdentifierDomain (required)
* identifier.value 1.. MS
* identifier.value ^short = "Eesti isikukood või tervishoiutöötaja kood"
* name 1..1 MS
* name.family 1.. MS
* name.given 1..1 MS
* address only EEBaseAddress
* qualification.issuer only Reference(EEBaseOrganization)
* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "code.coding.system"
* qualification ^slicing.rules = #open
* qualification contains
    degree 0..1 MS
* qualification[degree].code from EEBaseDegreeLicenseCertificate (extensible)
* qualification[degree].code.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0360" (exactly)
* qualification[degree].code ^short = "Qualification, education, license"


Instance: PractitionerD99876
InstanceOf: EEBasePractitioner
Usage: #example
Description: "Practitioner D99876"
* id = "D99876"
* identifier[0].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "D99876"
* identifier[+].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "35006080229"
* active = true
* name.family = "Arst"
* name.given = "Paavo"
* qualification[degree].code.text = "pediaatria"
* qualification[degree].code = http://terminology.hl7.org/CodeSystem/v2-0360#MD "Doctor of Medicine"

Instance: PractitionerD98765
InstanceOf: EEBasePractitioner
Usage: #example
Description: "Practitioner D98765"
* id = "D98765"
* identifier[0].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "D98765"
* identifier[+].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "489050599952"
* active = true
* name.family = "Arst"
* name.given = "Ly"

Instance: PractitionerN98765
InstanceOf: EEBasePractitioner
Usage: #example
Description: "Practitioner N98765"
* id = "N98765"
* identifier[0].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "N98765"
* identifier[+].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "49806307018"
* active = true
* name.family = "Õde"
* name.given = "Laura"
* qualification.code = $degreeLicenseCertificate#PN "Advanced Practice Nurse"


Instance: PractitionerN99876
InstanceOf: EEBasePractitioner
Usage: #example
Description: "Practitioner N99876"
* id = "N99876"
* identifier[0].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "N99876"
* identifier[+].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "38001010015"
* active = true
* name.family = "Õde"
* name.given = "Kari"
* qualification.code = $degreeLicenseCertificate#RN "Registered Nurse"
