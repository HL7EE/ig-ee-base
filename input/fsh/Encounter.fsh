Alias: $encounter-modeOfArrival = http://hl7.org/fhir/StructureDefinition/encounter-modeOfArrival
Alias: $encounter-associatedEncounter = http://hl7.org/fhir/StructureDefinition/encounter-associatedEncounter

Extension: ExtensionEEBaseModeOfArrival
Id: ee-mode-of-arrival
Title: "EEBase ModeOfArrival"
Description: "The method that the patient arrived at the facility."
Parent: http://hl7.org/fhir/StructureDefinition/encounter-modeOfArrival
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* ^context.type = #element
* ^context.expression = "Encounter"
* . ^short = "The method that the patient arrived at the facility."
* . ^definition = "Esimesel külastusel tavaliselt registreeritakse kas tuli ise, kiirabiga või teisiti."
* value[x] only Coding
* value[x] from $mode-of-arrival (extensible)


/*
Extension: EEBaseAssociatedEncounter
Id: ee-encounter-associatedEncounter
Title: "Encounter Associated Encounter"
Description: "This encounter occurs within the scope of the referenced encounter."
//* ^url = "http://hl7.org/fhir/StructureDefinition/encounter-associatedEncounter"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.5.1269"
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2015-02-21"
* ^publisher = "HL7 International / FHIR Infrastructure"
* ^contact.telecom.system = #url
//* ^contact.telecom.value = "http://hl7.org/Special/committees/fiwg"
* ^jurisdiction = $m49.htm#001
* ^context.type = #element
* ^context.expression = "Encounter"
* . 0..1
* . ^short = "Associated Encounter"
* . ^definition = "This encounter occurs within the scope of the referenced encounter."
//* url = "http://hl7.org/fhir/StructureDefinition/encounter-associatedEncounter" (exactly)
* value[x] 1..
* value[x] only Reference(EEBaseEncounter)
*/

Profile: EEBaseEncounter
Parent: Encounter
Id: ee-encounter
Title: "EEBase Encounter"
Description: "Encounter is an interaction between a patient and healthcare provider(s) to provide healthcare service(s) or assess a patient's health status. There are many types of encounters (such as ambulatory, inpatient, home visits, emergency and the like) which is the reason why the resource encompasses the lifecycle from pre-admission to the actual encounter (for ambulatory encounters) and admission, stay and discharge (for inpatient encounters). Encounter is primarily used to record information about the actual activities that occurred, where Appointment is used to record planned activities."
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    ExtensionEEBaseModeOfArrival named modeOfArrival 0..1 and
    $encounter-associatedEncounter named associatedEncounter 0..1
* status MS
* class MS
* class from $encounter-class (extensible)
* priority from $act-priority (extensible)
* subject only Reference(Group or EEBasePatient)
* episodeOfCare only Reference(EEBaseEpisodeOfCare)
* participant.actor only Reference(EEBasePractitioner or EEBasePractitionerRole or EEBaseRelatedPerson)
* serviceType only CodeableReference(EEBaseHealthcareService)
* reason.value only CodeableReference(Condition or DiagnosticReport or EEBaseObservation or ImmunizationRecommendation or Procedure)
* admission.origin only Reference(EEBaseLocation or EEBaseOrganization)
* admission.destination only Reference(EEBaseLocation or EEBaseOrganization)
* location.location only Reference(EEBaseLocation)
* serviceProvider only Reference(EEBaseOrganization)
* partOf only Reference(EEBaseEncounter)
* partOf ^short = "Reference to previous encounter"
* partOf ^definition = "Viide eelmisele külastusele"

Instance: EncounterPatient1
InstanceOf: EEBaseEncounter
Title:      "Inpatient encounter of Mart Mets"
Description: "Inpatient encounter of Mart Mets"
Usage: #example
* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP 
//"Inpatient encounter"
* subject = Reference(Patient/pat1)
* actualPeriod.start = "2023-05-09"
* episodeOfCare[0] = Reference(EpisodeOfCarePatient1)
* serviceProvider = Reference(Organization/rh)
* extension[modeOfArrival].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0430#A "Ambulance"
* location[0].location.display = "Emergency Waiting Room"
* location[=].status = #active
* location[=].period.start = "2023-05-09T19:00:00+02:00"
