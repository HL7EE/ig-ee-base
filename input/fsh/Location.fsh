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
Description: "Location resource gives details and position information of a physical place where services are provided, and also where resources and participants may be stored, found, contained or accomodated."
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


Instance: LocationItkED
InstanceOf: EEBaseLocation
Title: "ITK ED"
Description: "Location of the Emergency Department at ITK"
Usage: #example
* id = "itk-ed"
* name = "ITK Emergency Department"
* managingOrganization = Reference(Organization/itk)
* address
  * use = #work
  * text = "Ravi 18, 10138 Tallinn"
  * country = "EE"
* contact
  * telecom 
    * system = #phone
    * value = "6207040"  
