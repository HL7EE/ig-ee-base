Profile: EEBaseHealthcareService
Parent: HealthcareService
Id: ee-healthcare-service
Title: "EEBase HealthcareService"
Description: "The details of a healthcare service available at a location."
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* providedBy only Reference(EEBaseOrganization)
* providedBy MS 
* category MS 
* specialty MS 
* location only Reference(EEBaseLocation)
* coverageArea only Reference(EEBaseLocation)
