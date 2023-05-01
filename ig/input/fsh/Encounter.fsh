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
* include codes from system https://terminology.hl7.org/5.1.0/CodeSystem-v2-0430.html
* include codes from system EEBaseModeOfArrival


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

Profile: EEBaseEncounter
Parent: Encounter
Id: ee-encounter
Title: "EEBase Encounter"
Description: "EEBase Encounter"
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 EE"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $encounter-modeOfArrival named modeOfArrival 0..* and
    $encounter-associatedEncounter named associatedEncounter 0..*
* extension[modeOfArrival].valueCoding from EEBaseModeOfArrival (extensible)
* extension[modeOfArrival] ^definition = "Esimesel külastusel tavaliselt registreeritakse kas tuli ise, kiirabiga või teisiti."
* extension[modeOfArrival] ^min = 0
* extension[modeOfArrival] ^isModifier = false
* extension[modeOfArrival] ^binding.description = "The method that the patient arrived at the facility."
* extension[associatedEncounter] ^min = 0
* extension[associatedEncounter] ^isModifier = false
* extension[associatedEncounter].value[x] only Reference(EEBaseEncounter)
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
