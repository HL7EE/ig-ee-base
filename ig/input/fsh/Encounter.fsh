Alias: $encounter-modeOfArrival = http://hl7.org/fhir/StructureDefinition/encounter-modeOfArrival
Alias: $encounter-associatedEncounter = http://hl7.org/fhir/StructureDefinition/encounter-associatedEncounter

CodeSystem: EEBaseModeOfArrival
Id: ee-mode-of-arrival
Title: "Mode Of Arrival"
Description: "The content of this code system is intended to supplement HL7's code system arrivalMode (version 2.1.0) with one additional code ('PV') for using in ValueSets"
* ^experimental = false
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* ^purpose = "Underlying Master Code System for V2 table 0430 (Mode of Arrival Code)"
* ^caseSensitive = false
* ^content = #complete
* #PV "Police Vehicle" "Police Vehicle"


ValueSet: EEBaseModeOfArrival
Id: ee-mode-of-arrival
Title: "Mode Of Arrival"
Description: "Mode Of Arrival"
* ^experimental = false
* ^copyright = "This value set includes content from HL7 Terminology, which is copyright © 2002+ HL7"
* include codes from valueset http://terminology.hl7.org/ValueSet/v2-0430
* include codes from system EEBaseModeOfArrival

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
* value[x] from EEBaseModeOfArrival (extensible)


ValueSet: EEBaseEncounterClass
Id: ee-encounter-class
Title: "Encounter Class"
Description: "Encounter Class"
* ^experimental = false
* include codes from valueset http://terminology.hl7.org/ValueSet/encounter-class

ValueSet: EEBaseActPriority
Id: ee-act-priority
Title: "Act Priority"
Description: "Act Priority"
* ^experimental = false
* include codes from valueset http://terminology.hl7.org/ValueSet/v3-ActPriority

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
Description: "An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient. Encounter is primarily used to record information about the actual activities that occurred, where Appointment is used to record planned activities."
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    ExtensionEEBaseModeOfArrival named modeOfArrival 0..1 MS and
    $encounter-associatedEncounter named associatedEncounter 0..1
* status MS
* priority from EEBaseActPriority (extensible)
* subject only Reference(Group or EEBasePatient)
* episodeOfCare only Reference(EEBaseEpisodeOfCare)
* participant.actor only Reference(EEBasePractitioner or EEBasePractitionerRole or EEBaseRelatedPerson)
//* reason.value only CodeableReference(Condition or DiagnosticReport or EEBaseObservation or ImmunizationRecommendation or Procedure)
* admission.origin only Reference(EEBaseLocation or EEBaseOrganization)
* admission.destination only Reference(EEBaseLocation or EEBaseOrganization)
* location.location only Reference(EEBaseLocation)
* serviceProvider only Reference(EEBaseOrganization)
* partOf only Reference(EEBaseEncounter)
* partOf ^short = "Reference to previous encounter"
* partOf ^definition = "Viide eelmisele külastusele"

