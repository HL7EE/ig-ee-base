Alias: $degreeLicenseCertificate = http://terminology.hl7.org/CodeSystem/v2-0360

ValueSet: EEBaseDegreeLicenseCertificate
Id: ee-degree-license-certificate
Title: "Qualification"
Description: "Qualification based on the education"
* ^experimental = true
* ^compose.include.system = $degreeLicenseCertificate

* ^compose.include.concept[+].code = #MD
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
Description: "A person who is directly or indirectly involved in the provisioning of healthcare or related services."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2022-11-21T13:15:21.1820806+00:00"
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* identifier 1.. MS
* identifier.system 1.. MS
* identifier.system from EEBasePractitionerIdentity (required)
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


Instance: PractitionerD05647
InstanceOf: EEBasePractitioner
Usage: #example
Description: "Practitioner D05647"
* id = "D05647"
* identifier[0].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "D05647"
* identifier[+].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "XXXXXXXXXXX1"
* active = true
* name.family = "Arst"
* name.given = "Hea"
* qualification[degree].code.text = "pediaatria"
* qualification[degree].code = http://terminology.hl7.org/CodeSystem/v2-0360#MD "Doctor of Medicine"

Instance: PractitionerD04281
InstanceOf: EEBasePractitioner
Usage: #example
Description: "Practitioner D04281"
* id = "D04281"
* identifier[0].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "D04281"
* identifier[+].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "XXXXXXXXXXX2"
* active = true
* name.family = "Arst"
* name.given = "Hea"

Instance: PractitionerN12770
InstanceOf: EEBasePractitioner
Usage: #example
Description: "Practitioner N12770"
* id = "N12770"
* identifier[0].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "N12770"
* identifier[+].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "YYYYYY3"
* active = true
* name.family = "Õde"
* name.given = "Tubli"


Instance: PractitionerN13001
InstanceOf: EEBasePractitioner
Usage: #example
Description: "Practitioner N13001"
* id = "N13001"
* identifier[0].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "N13001"
* identifier[+].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "YYYYYY4"
* active = true
* name.family = "Õde"
* name.given = "Tubli"

Instance: PractitionerN00778
InstanceOf: EEBasePractitioner
Usage: #example
Description: "Practitioner N00778"
* id = "N00778"
* identifier[0].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "N00778"
* identifier[+].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "YYYYYY5"
* active = true
* name.family = "Õde"
* name.given = "Tubli"


Instance: PractitionerN14105
InstanceOf: EEBasePractitioner
Usage: #example
Description: "Practitioner N14105"
* id = "N14105"
* identifier[0].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "N14105"
* identifier[+].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "YYYYYY6"
* active = true
* name.family = "Õde"
* name.given = "Tubli"

