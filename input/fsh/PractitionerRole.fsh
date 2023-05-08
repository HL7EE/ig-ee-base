//Alias: $practitioner-role = http://hl7.ee/fhir/ValueSet/practitioner-role
//Alias: $c80-practice-codes = http://hl7.ee/fhir/ValueSet/c80-practice-codes

CodeSystem: EEBaseOccupation
Id:         ee-occupation
Title:     "Eesti ametite klassifikaator"
Description: "Eesti ametite klassifikaator"
* ^experimental = true
* ^caseSensitive = false
* #22122501 "Pediaater"
* #22121101 "Allergoloog-immunoloog"
* #22120901 "Kardioloog"
* #22210502 "Õde"
* #PN "Advanced Practice Nurse"

ValueSet: EEBaseOccupation
Id: ee-occupation
Title: "Occupation"
Description: "Ametinimetus"
* ^experimental = true
//* include codes from system SCT where concept descendent-of #14679004 "Occupation"
* include codes from system EEBaseOccupation
//* include codes from system http://terminology.hl7.org/CodeSystem/v2-0360 where concept = #PN "Advanced Practice Nurse"

CodeSystem: EEBaseJobType
Id:         ee-job-type
Title:     "Type of job"
Description: "Type of job (aka 'TIS erialade loend' in Estonian)"
* ^experimental = true
* ^caseSensitive = false
* #E170 "Kardioloogia"
* #E290 "Pediaatria"
* #E670 "Pediaatria allergoloogia lisapädevusega"
* #N100 "Intensiivõendus"
* #N200 "Kliiniline õendus"
* #N300 "Terviseõendus"
* #N500 "Õde"

ValueSet: EEBaseJobType
Id: ee-job-type
Title: "Type of job"
Description: "Type of job (aka 'eriala, kutse' in Estonian)"
* ^experimental = true
* include codes from system EEBaseJobType

ValueSet: EEBaseSpecialty
Id: ee-specialty
Title: "Specialty"
Description: "Specialty (aka 'tegevusvaldkond' in Estonian)"
* ^experimental = true
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* include codes from system $SCT where concept descendent-of #394658006 "Clinical specialty"

ValueSet: EEBasePractitionerRole
Id: ee-practitioner-role
Title: "Practitioner role"
Description: "The role of practitioner in the healthcare facility."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/practitioner-role


Profile: EEBasePractitionerRole
Parent: PractitionerRole
Id: ee-practitioner-role
Title: "EEBase PractitionerRole"
Description: "A specific set of Roles/Locations/specialties/services that a practitioner may perform at an organization for a period of time."
* ^meta.lastUpdated = "2022-09-26T08:01:30.1809509+00:00"
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 EE"
* active 1.. MS
* practitioner 1.. MS
* practitioner only Reference(EEBasePractitioner)
* practitioner.reference MS
* organization 1.. MS
* organization only Reference(EEBaseOrganization)
* organization.reference MS
* location only Reference(EEBaseLocation)
* healthcareService only Reference(EEBaseHealthcareService)
//* code MS
//* code from $practitioner-role (required)
* code 1.. MS
* code ^short = "Tervishoiutöötaja roll TTO-s"
* code ^slicing.discriminator.type = #value
* code ^slicing.discriminator.path = "coding.system"
* code ^slicing.rules = #open
* code contains
    role 1..1 MS and
    tor 0..1 MS
* code[role].coding.system = "http://terminology.hl7.org/CodeSystem/practitioner-role" (exactly)
* code[role] ^short = "Roll TTO-s"
* code[role] from EEBasePractitionerRole (extensible)
* code[tor].coding.system = "https://fhir.ee/CodeSystem/ee-occupation" (exactly)
* code[tor] ^short = "Ametinimetus (Töötamiseregistri andmete järgi)"
* code[tor] from EEBaseOccupation (extensible)

* specialty MS
//* specialty from $c80-practice-codes (required)
* specialty ^short = "Specialty and jon type (tegevusvaldkond ja TIS eriala)"
* specialty ^slicing.discriminator.type = #value
* specialty ^slicing.discriminator.path = "coding.system"
* specialty ^slicing.rules = #open
* specialty contains
    specialty 0..* MS and
    eriala 0..* MS
* specialty[specialty].coding.system = $SCT (exactly)
* specialty[specialty] ^short = "Specialty (Tegevusvaldkond)"
* specialty[specialty] from EEBaseSpecialty (required)
* specialty[eriala].coding.system = "https://fhir.ee/CodeSystem/ee-job-type" (exactly)
* specialty[eriala] ^short = "Job type (TIS eriala)"
* specialty[eriala] from EEBaseJobType (required)








Instance: PractitionerRoleD05647
InstanceOf: EEBasePractitionerRole
Usage: #example
Description: "PractitionerRole D05647"
* id = "PractRoleD05647"
* active = true
* period.start = "2012-01-01"
* practitioner = Reference(Practitioner/D05647)
* organization = Reference(Organization/rh)
* code[role] = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor "Doctor"
* code[tor] = EEBaseOccupation#22122501 "Pediaater"
* specialty[0] = $SCT#394537008 "Pediatric specialty"
* specialty[+] = $SCT#418535003 "Pediatric immunology"
* specialty[+] = $SCT#408439002 "Allergy - specialty"
* specialty[+] = EEBaseJobType#E290 "Pediaatria"
* specialty[+] = EEBaseJobType#E670 "Pediaatria allergoloogia lisapädevusega"


Instance: PractitionerRoleD04281
InstanceOf: EEBasePractitionerRole
Usage: #example
Description: "PractitionerRole D04281"
* id = "PractRoleD04281"
* active = true
* period.start = "2012-01-01"
* practitioner = Reference(Practitioner/D04281)
* organization = Reference(Organization/rh)
* code[role] = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor "Doctor"
* code[tor] = EEBaseOccupation#22120901 "Kardioloog"
* specialty[0] = $SCT#394579002 "Cardiology"
* specialty[+] = $SCT#1251549008 "Interventional cardiology"
* specialty[+] = EEBaseJobType#E170 "Kardioloogia"




Instance: PractitionerRoleN12770
InstanceOf: EEBasePractitionerRole
Usage: #example
Description: "PractitionerRole N12770"
* id = "PractRoleN12770"
* active = true
* period.start = "2012-01-01"
* practitioner = Reference(Practitioner/N12770)
* organization = Reference(Organization/rh)
* code[role] = http://terminology.hl7.org/CodeSystem/practitioner-role#nurse "Nurse"
* code[tor] = EEBaseOccupation#PN "Advanced Practice Nurse"
* specialty[0] = $SCT#394810000 "Rheumatology"
* specialty[+] = EEBaseJobType#N200 "Kliiniline õendus"


Instance: PractitionerRoleN13001
InstanceOf: EEBasePractitionerRole
Usage: #example
Description: "PractitionerRole N13001"
* id = "PractRoleN13001"
* active = true
* period.start = "2012-01-01"
* practitioner = Reference(Practitioner/N13001)
* organization = Reference(Organization/rh)
* code[role] = http://terminology.hl7.org/CodeSystem/practitioner-role#nurse "Nurse"
* code[tor] = EEBaseOccupation#PN "Advanced Practice Nurse"
* specialty[0] = $SCT#773568002 "Emergency medicine"
* specialty[+] = EEBaseJobType#N100 "Intensiivõendus"


Instance: PractitionerRoleN00778
InstanceOf: EEBasePractitionerRole
Usage: #example
Description: "PractitionerRole N00778"
* id = "PractRoleN00778"
* active = true
* period.start = "2012-01-01"
* practitioner = Reference(Practitioner/N00778)
* organization = Reference(Organization/rh)
* code[role] = http://terminology.hl7.org/CodeSystem/practitioner-role#nurse "Nurse"
* code[tor] = EEBaseOccupation#PN "Advanced Practice Nurse"
* specialty[0] = $SCT#394821009 "Occupational medicine"
* specialty[+] = EEBaseJobType#N300 "Terviseõendus"


Instance: PractitionerRoleN14105
InstanceOf: EEBasePractitionerRole
Usage: #example
Description: "PractitionerRole N14105"
* id = "PractRoleN14105"
* active = true
* period.start = "2012-01-01"
* practitioner = Reference(Practitioner/N14105)
* organization = Reference(Organization/rh)
* code[role] = http://terminology.hl7.org/CodeSystem/practitioner-role#nurse "Nurse"
* code[tor] = EEBaseOccupation#22210502 "Õde"
* specialty[0] = $SCT#722165004 "Nursing"
* specialty[0] = $SCT#394537008 "Pediatric specialty"
* specialty[+] = EEBaseJobType#N500 "Õde"

