Profile: EEBaseEpisodeOfCare
Parent: EpisodeOfCare
Id: ee-episode-of-care
Title: "EEBase EpisodeOfCare"
Description: "An association between a patient and an organization / healthcare provider(s) during which time encounters may occur. The managing organization assumes a level of responsibility for the patient during this time."
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* identifier MS
* status MS
* type MS
* patient only Reference(EEBasePatient)
* patient MS
* managingOrganization only Reference(EEBaseOrganization)
* managingOrganization MS
* period MS
* careManager only Reference(EEBasePractitioner or EEBasePractitionerRole)
* reason.value only Reference(Condition or Procedure or EEBaseObservation or EEBaseHealthcareService)

Instance: EpisodeOfCarePatient1
InstanceOf: EEBaseEpisodeOfCare
Title:      "Episode of Care example"
Description: "Episode of care care example"
Usage: #example
* id = "eoc1"
* identifier.system = "https://rh.ee/episodeofcare-identifier"
* identifier.value = "123"
* status = #active
* patient = Reference(Patient/pat1)
* managingOrganization = Reference(Organization/rh)
* period.start = "2023-05-09"
