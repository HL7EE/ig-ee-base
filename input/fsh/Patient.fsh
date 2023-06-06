Alias: $patient-birthTime = http://hl7.org/fhir/StructureDefinition/patient-birthTime


Extension: ExtensionEEBasePatientAge
Id: ee-patient-age
Title: "EEBase PatientAge"
Description: "Patient age measure and unit"
* ^version = "1.0.0"
* ^context.expression = "Patient.birthDate"
* ^context.type = #element
* ^status = #draft
* ^publisher = "HL7 Estonia"
* ^meta.lastUpdated = "2022-10-07T09:27:34.0440931+00:00"
* value[x] only Age
* value[x].value 1..
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
* ^compose.include.concept[+].code = #other
* ^compose.include.concept[=].designation[+].language = #et
* ^compose.include.concept[=].designation[=].value = "Muu"
* ^compose.include.concept[+].code = #unknown
* ^compose.include.concept[=].designation[+].language = #et
* ^compose.include.concept[=].designation[=].value = "Tundmatu"


Profile: EEBasePatient
Parent: Patient
Id: ee-patient
Title: "EEBase Patient"
Description: "Patient is a FHIR resource intended for documenting demographical and/or administrative information about the individual on the receiving end of healthcare services. In context of Estonian healthcare data exchange, the patient MUST be identifiable by Person Identity System."
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* identifier 1.. MS
* identifier.system from EEBasePatientIdentity (required)
* identifier.system 1.. MS
* identifier.value 1.. MS
* active 1.. MS
* name MS
* name.use 1..1 MS
* name.text MS
* name.family MS
* name.given MS

// >>> added from MPI
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name ^short = "Patient name"
* name ^definition = "Patsiendi nimi"
* name contains official 0..1 MS  and nickname 0..1 MS //and other 0..1 
* name[official] ^short = "Ametlik nimi"
* name[official].use = #official (exactly)
* name[official].family 1..1 MS 
* name[official].family ^short = "Perekonnanimi"
* name[official].given 1..1 MS
* name[official].given ^short = "Eesnimi"
* name[official].prefix 0..1 MS
* name[official].period MS
* name[nickname] ^short = "Tundmatu või anonüümse patsiendi nimi"
* name[nickname].use = #nickname (exactly)
* name[nickname].text 1.. MS
* name[nickname].text ^short = "Tundmatu patsiendi hüüdnimi"
* name[nickname].family ..0
* name[nickname].given ..0
* name[nickname].prefix ..0
* name[nickname].suffix ..0
//* name[other] ^short = "Teised nimed"
// <<< added from MPI

* telecom MS
* telecom.system 1..1 MS 
* telecom.value 1..1 MS 
* telecom.use MS
* telecom.period MS 

* gender MS
* gender ^isModifierReason = "Needed for proper reference ranges"
* gender from EEBaseAdministrativeGender (required)
* birthDate MS
* birthDate.extension ^slicing.discriminator.type = #value
* birthDate.extension ^slicing.discriminator.path = "url"
* birthDate.extension ^slicing.rules = #open
* birthDate.extension contains $patient-birthTime named birthTime 0..1 and ExtensionEEBasePatientAge named age 0..1 and ExtensionEEBaseDateAccuracyIndicator named accuracyIndicator 0..1
* birthDate.extension[birthTime] MS
* birthDate.extension[birthTime].value[x] MS
* birthDate.extension[birthTime] ^short = "Sünniaeg"
* birthDate.extension[age] ^isModifier = false
* birthDate.extension[age] ^short = "Vanus"
* birthDate.extension[accuracyIndicator] ^isModifier = false
* birthDate.extension[accuracyIndicator] ^short = "Kuupäeva täpsuse indikaator"
* deceased[x] MS
* deceased[x].extension ^slicing.discriminator.type = #value
* deceased[x].extension ^slicing.discriminator.path = "url"
* deceased[x].extension ^slicing.rules = #open
* deceased[x].extension contains ExtensionEEBaseDateAccuracyIndicator named accuracyIndicator 0..1
* address MS
* address only EEBaseAddress
/** address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "country"
* address ^slicing.rules = #open
* address ^short = "Patsiendi aadressid. Eristatakse riigikoodi alusel. Riigikoodiks tuleb kasutada 2 kohalist ISO 3166 koodi"
* address contains EEBaseAddressEE named ee 0..* MS and EEBaseAddressNonEE named other 0..*

* address[ee].country = "EE"
* address[ee] only EEBaseAddressEE
* address[ee] only EEBaseAddressEE
*/
//* address[other] only EEMpiForeignerAddress

* contact.address only EEBaseAddress
* contact.organization only Reference(EEBaseOrganization)
* generalPractitioner only Reference(EEBasePractitioner or EEBasePractitionerRole)
* generalPractitioner MS
* generalPractitioner ^type.versioning = #independent
* managingOrganization only Reference(EEBaseOrganization)
* link MS
* link.other only Reference(EEBasePatient or EEBaseRelatedPerson)


Instance: PatientJohnDoe
InstanceOf: EEBasePatient
Title: "John Doe (foreign patient)"
Description: "Foreigner with minimal dataset."
Usage: #example
* id = "pat2"
* active = true
* identifier[0]
  * system = "https://fhir.ee/sid/pid/usa/ppn"
  * value = "N857623628"
* identifier[+]
  * system = "https://fhir.ee/sid/pid/est/prn/90006399"
  * value = "983453-4363-634-63423457-325"
* name[0]
  * use = #usual
  * given = "John"
  * family = "Doe"
* gender = #male
* address[0]
  * use = #temp
  * country = "US"
  * state = "FL"
  * district = "Orange County"
  * city = "Orlando"
  * line = "5601 Universal Blvd"
  * postalCode = "32819"
  * text = "5601 Universal Blvd, Orlando, FL 32819, USA"

Instance: PatientMartMets
InstanceOf: EEBasePatient
Title: "Mart Mets (verified patient)"
Description: "Estonian citizen"
Usage: #example
* id = "pat1"
* active = true
* identifier[0]
  * system = "https://fhir.ee/sid/pid/est/ni"
  * value = "37302102711"
* identifier[+]
  * system = "https://fhir.ee/sid/pid/est/ppn"
  * value = "K0307337"
  * period.end = "2023-12-28"
  * assigner.display = "Estonian Police and Board Agency"
* name[official]
  * given = "Mart"
  * family = "Mets"
* gender = #male
* birthDate = "1973-02-10"
  * extension[accuracyIndicator].valueCoding = EEBaseDateAccuracyIndicator#AAA "Day, month and year are accurate"
* address[0]
  * use = #work
  * country = "EE"
  * state = "Harju"
  * city = "Tallinn"
  * postalCode = "14215"
  * text = "Harju maakond, Tallinn, Lasnamäe linnaosa, Valukoja tn 10"
  * extension[ads].valueCoding = EEBaseADS#2280361
  * extension[ehak].valueCoding = https://fhir.ee/sid/ehak#0387 

Instance: PatientShadow
InstanceOf: EEBasePatient
Title: "Unknown patient"
Description: "Patient that can not be recognized during admission"
Usage: #example
* id = "patunk"
* active = false
* identifier[0]
  * system = "https://fhir.ee/sid/pid/est/mr"
  * value = "74569215-34534563-mfhsjq"
* name[nickname]
  * text = "Tundmatu naine"
* gender = #female
* birthDate 
  * extension[accuracyIndicator].valueCoding = EEBaseDateAccuracyIndicator#UUU
  * extension[age].valueAge = $UCUM#a "years"
    * value = 40
