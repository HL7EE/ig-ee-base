Profile: EEBaseEpisodeOfCare
Parent: EpisodeOfCare
Id: ee-episode-of-care
Title: "EEBase EpisodeOfCare"
Description: "EEBase EpisodeOfCare"
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