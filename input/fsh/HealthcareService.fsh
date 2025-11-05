Alias: $service-provision-conditions = http://terminology.hl7.org/CodeSystem/service-provision-conditions

Profile: EEBaseHealthcareService
Parent: HealthcareService
Id: ee-healthcare-service
Title: "EEBase HealthcareService"
Description: "HealthcareService resource describes the details of a single healthcare service or category of services that are provided by an organization at a location. The location of the services could be virtual, as with telemedicine services."
* ^version = "2.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* providedBy only Reference(EEBaseOrganization)
* location only Reference(EEBaseLocation)
* coverageArea only Reference(EEBaseLocation)

Instance: HealthcareServiceExample
InstanceOf: EEBaseHealthcareService
Title:      "Healthcare Service Example"
Description: "Healthcare Service Example"
Usage: #example
* identifier.system = "http://rh.ee/shared-ids"
* identifier.value = "HS-12"
* active = true
* providedBy = Reference(Organization/rh) "Rakvere Haigla"
* category = $SCT#409063005 "Counseling"
* category.text = "Counselling"
* type[0] = $SCT#394913002 "Psychotherapy (specialty)"
* type[+] = $SCT#394587001 "Psychiatry"
* specialty = $SCT#394816006 "Mental illness (specialty) (qualifier value)"
* name = "Consulting psychologists and/or psychology services"
* serviceProvisionCode = $service-provision-conditions#cost "Fees apply"
* appointmentRequired = true
* availability.availableTime[0].daysOfWeek = #wed
* availability.availableTime[=].allDay = true
* availability.availableTime[+].daysOfWeek[0] = #mon
* availability.availableTime[=].daysOfWeek[+] = #tue
* availability.availableTime[=].daysOfWeek[+] = #thu
* availability.availableTime[=].daysOfWeek[+] = #fri
* availability.availableTime[=].availableStartTime = "08:30:00"
* availability.availableTime[=].availableEndTime = "05:30:00"
* availability.availableTime[+].daysOfWeek[0] = #sat
* availability.availableTime[=].daysOfWeek[+] = #fri
* availability.availableTime[=].availableStartTime = "09:30:00"
* availability.availableTime[=].availableEndTime = "04:30:00"
* availability.notAvailableTime[0].description = "Christmas/Boxing Day, Reduced capacity is available during the Christmas period"
* availability.notAvailableTime[=].during.start = "2023-12-25"
* availability.notAvailableTime[=].during.end = "2023-12-26"
* availability.notAvailableTime[+].description = "New Years Day"
* availability.notAvailableTime[=].during.start = "2024-01-01"
* availability.notAvailableTime[=].during.end = "2024-01-01"
