Alias: $obscat = http://terminology.hl7.org/CodeSystem/observation-category

Profile: EEBaseObservation
Parent: Observation
Id: ee-observation
Title: "EEBase Observation"
Description: "Observation represents one of the most important and central units of healthcare data exchange - different kinds of observations varying from clinical findings and measurements to social history. The resource is designed to cover a wide variety of use cases and as a result, at its simplest, a resource instance can consist of only a code, value, and status flag. The granularity of instance highly depends on the use case, therefore the minimal viable data considered is a decision that needs to be made during profiling process."
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* status MS
* category MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains obscat 0..* MS 
* category.coding[obscat].system = $obscat (exactly)
* category.coding[obscat] from $observation-category (required)
* code MS
* subject only Reference(EEBasePatient or Group or Device or EEBaseLocation or EEBaseOrganization or Procedure or EEBasePractitioner or Medication or Substance or BiologicallyDerivedProduct or NutritionProduct)
* subject MS
* encounter only Reference(EEBaseEncounter)
* encounter MS
* effective[x] MS
* performer only Reference(EEBasePractitioner or EEBasePractitionerRole or EEBaseOrganization or CareTeam or EEBasePatient or EEBaseRelatedPerson)
* performer MS
* value[x] MS
* dataAbsentReason MS
* interpretation MS
* bodySite MS
* bodyStructure MS
* specimen MS
* hasMember only Reference(QuestionnaireResponse or MolecularSequence or EEBaseObservation)
* derivedFrom only Reference(DocumentReference or ImagingStudy or ImagingSelection or QuestionnaireResponse or EEBaseObservation or MolecularSequence or GenomicStudy)
* component MS
* triggeredBy
  * observation only Reference(EEBaseObservation)

Instance: BloodPressure
InstanceOf: EEBaseObservation
Title:          "Vital Signs - Blood pressure observation"
Description:    "Blood Pressure example"
Usage: #example
* status = #final
* code = $LN#85354-9 "Blood pressure panel with all children optional"
* category = $obscat#vital-signs
* subject = Reference(Patient/pat1)
* effectiveDateTime = "2021-11-23"
* performer = Reference(Organization/rh)
* component[0].code = $LN#8480-6 "Systolic blood pressure"
* component[=].valueQuantity.value = 120
* component[=].valueQuantity = UCUM#mm[Hg] "mmHg"
* component[+].code = $LN#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity.value = 80
* component[=].valueQuantity = UCUM#mm[Hg] "mmHg"
* component[+].code = $SCT#424724000 "Body position for blood pressure measurement"
* component[=].valueCodeableConcept = $SCT#33586001 "Sitting position"

