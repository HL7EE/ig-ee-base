ValueSet: EEBaseLocationForm
Id: ee-location-form
Title: "Location Form"
Description: "Location Form"
* ^experimental = false
* ^compose.include.system = http://terminology.hl7.org/CodeSystem/location-physical-type


Profile: EEBaseLocation
Parent: Location
Id: ee-location
Title: "EEBase Location"
Description: "Details and position information for a place where services are provided and resources and participants may be stored, found, contained, or accommodated."
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* address MS
* address only EEBaseAddress
* form MS
* form from EEBaseLocationForm (required)
* managingOrganization MS
* managingOrganization only Reference(EEBaseOrganization)
* partOf only Reference(EEBaseLocation)

