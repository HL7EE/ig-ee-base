Alias: $obscat = http://terminology.hl7.org/CodeSystem/observation-category

ValueSet: EEBaseObservationCategory
Id: ee-observation-category
Title: "Observation Category"
Description: "Observation category"
* ^experimental = true
* include codes from system $obscat


Profile: EEBaseObservation
Parent: Observation
Id: ee-observation
Title: "EEBase Observation"
Description: "Measurements and simple assertions made about a patient, device or other subject."
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* status MS
* category MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category contains obscat 0..* MS 
* category[obscat].coding.system = $obscat (exactly)
* category[obscat] from EEBaseObservationCategory (required)
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
* code = $SCT#75367002 "Blood Pressure"
* subject = Reference(Patient/pat1)
* effectiveDateTime = "2021-11-23"
* performer = Reference(Organization/rh)
* component[0].code = $SCT#271649006 "Systolic Blood Pressure"
* component[=].valueQuantity.value = 120
* component[=].valueQuantity = UCUM#mm[Hg] "mmHg"
* component[+].code = $SCT#271650006 "Diastolic Blood Pressure"
* component[=].valueQuantity.value = 80
* component[=].valueQuantity = UCUM#mm[Hg] "mmHg"
* component[+].code = $SCT#424724000 "Body position for blood pressure measurement"
* component[=].valueCodeableConcept = $SCT#33586001 "Sitting position"

