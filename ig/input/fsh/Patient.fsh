//Alias: $EEBase-ESTID = https://fhir.ee/sid/pid/est/ni
//Alias: $EEBase-TISID = https://hl7.ee/fhir/StructureDefinition/EEBase-TISID
Alias: $patient-birthTime = http://hl7.org/fhir/StructureDefinition/patient-birthTime


Extension: ExtensionEEBasePatientAge
Id: ee-patient-age
Title: "Extension EEBase PatientAge"
Description: "Patient age measure and unit"
* ^version = "1.0.0"
* ^context.expression = "Patient.birthDate"
* ^context.type = #element
* ^status = #draft
* ^publisher = "HL7 Estonia"
* ^meta.lastUpdated = "2022-10-07T09:27:34.0440931+00:00"
* value[x] only Age
* value[x].value 1..
* value[x].value ^minValueDecimal = 0
* value[x].value ^maxValueDecimal = 999
* value[x].unit 1..
* value[x].code 1..


ValueSet: EEBaseAdministrativeGender
Id: ee-administrative-gender
Title: "Administrative Gender"
Description: "Administrative Gender"
* ^experimental = false
* ^compose.include.system = $administrative-gender

* ^compose.include.concept[+].code = #male
* ^compose.include.concept[=].designation[+].language = #et
* ^compose.include.concept[=].designation[=].value = "Mees"
* ^compose.include.concept[+].code = #female
* ^compose.include.concept[=].designation[+].language = #et
* ^compose.include.concept[=].designation[=].value = "Naine"
* ^compose.include.concept[+].code = #unknown
* ^compose.include.concept[=].designation[+].language = #et
* ^compose.include.concept[=].designation[=].value = "Tundmatu"


Profile: EEBasePatient
Parent: Patient
Id: ee-patient
Title: "EEBase Patient"
Description: "Demographics and other administrative information about an individual or animal receiving care or other health-related services."
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
//* ^abstract = true
* identifier 1.. MS
* identifier.system from EEBasePatientIdentity (extensible)
/*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    est-id 0..1 and
    tis-id 0..1
* identifier[est-id] only $EEBase-ESTID
* identifier[est-id] ^short = "Estonian personal identification"
* identifier[est-id] ^definition = "Eesti isikukoodi identifikaator"
* identifier[tis-id] only $EEBase-TISID
* identifier[tis-id] ^short = "Person's unique code generated by National Health System"
* identifier[tis-id] ^definition = "Isiku unikaalne tunnus, mille alusel saab teda eristada teistest isikutest TIS-is. Saab kasutada nii välimaalaste kui ka tundmatu isiku jaoks (juhtudel, kui puudub Eesti isikukood). Mõeldud andmevahetuseks Tervise infosüsteemiga."
*/
* active 1.. MS
* name 1.. MS
//* name.text MS
//* name.family MS
//* name.given MS

// >>> added from MPI
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name ^short = "Patient name"
* name ^definition = "Patsiendi nimi"
* name contains official 0..1 MS  and unknown 0..1 MS and other 0..1 
* name[official] ^short = "Ametlik nimi"
* name[official].use = #official (exactly)
* name[official].family 1..1 MS 
* name[official].family ^short = "Perekonnanimi"
* name[official].given 1..1 MS
* name[official].given ^short = "Eesnimi"
* name[official].prefix 0..1 MS
* name[official].period MS
* name[unknown] ^short = "Tundmatu või anonüümse patsiendi nimi"
* name[unknown].use = #nickname (exactly)
* name[unknown].text 1..
* name[unknown].text ^short = "Tundmatu patsiendi hüüdnimi"
* name[unknown].family ..0
* name[unknown].given ..0
* name[unknown].prefix ..0
* name[unknown].suffix ..0
* name[other] ^short = "Teised nimed"
// <<< added from MPI

* telecom MS
* gender MS
* gender ^isModifierReason = "Neede for proper reference ranges"
* gender from EEBaseAdministrativeGender (required)
* birthDate MS
* birthDate.extension ^slicing.discriminator.type = #value
* birthDate.extension ^slicing.discriminator.path = "url"
* birthDate.extension ^slicing.rules = #open
* birthDate.extension contains $patient-birthTime named birthTime 0..1 and ExtensionEEBasePatientAge named age 0..1 MS
* birthDate.extension[birthTime] MS
* birthDate.extension[birthTime].value[x] MS
* birthDate.extension[age] ^isModifier = false

* deceased[x] MS
* address only EEBaseAddress
* address MS
* contact.address only EEBaseAddress
* contact.organization only Reference(EEBaseOrganization)
* generalPractitioner only Reference(EEBasePractitioner or EEBasePractitionerRole)
* generalPractitioner MS
* generalPractitioner ^type.versioning = #independent
* managingOrganization only Reference(EEBaseOrganization)
* link MS
* link.other only Reference(EEBasePatient or EEBaseRelatedPerson)
