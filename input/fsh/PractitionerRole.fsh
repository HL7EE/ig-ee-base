CodeSystem: EEBaseOccupation
Id:         ee-occupation
Title:     "Eesti ametite klassifikaator"
Description: "Eesti ametite klassifikaator"
* ^experimental = true
* ^caseSensitive = false
* ^content = #fragment
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
* include codes from system EEBaseOccupation

CodeSystem: EEBaseMedreSpecialty
Id:         ee-medre-specialty
Title:     "Medre specialty"
Description: "Medre specialty (aka 'TAM erialade loend' in Estonian)"
* ^experimental = true
* ^caseSensitive = false
* ^content = #fragment
* #E170 "Kardioloogia"
* #E290 "Pediaatria"
* #E670 "Pediaatria allergoloogia lisapädevusega"
* #N100 "Intensiivõendus"
* #N200 "Kliiniline õendus"
* #N300 "Terviseõendus"
* #N500 "Õde"

ValueSet: EEBaseMedreSpecialty
Id: ee-medre-specialty
Title: "Medre specialty"
Description: "Medre specialty (aka 'TAM eriala' in Estonian)."
* ^experimental = true
* include codes from system EEBaseMedreSpecialty

ValueSet: EEBaseClinicalSpecialty
Id: ee-clinical-specialty
Title: "Clinical specialty"
Description: "Clinical specialty (aka 'tegevusvaldkond' in Estonian)"
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
* code 1.. MS
* code ^short = "The role of the healthcare professional in the healthcare facility"
* code ^definition = "Tervishoiutöötaja roll TTO-s"
* code ^slicing.discriminator.type = #value
* code ^slicing.discriminator.path = "coding.system"
* code ^slicing.rules = #open
* code contains
    role 1..1 MS and
    tor 0..1 MS
* code[role].coding.system = "http://terminology.hl7.org/CodeSystem/practitioner-role" (exactly)
* code[role] ^short = "Practitioner role"
* code[role] from EEBasePractitionerRole (extensible)
* code[tor].coding.system = "https://fhir.ee/CodeSystem/ee-occupation" (exactly)
* code[tor] ^short = "Official occupation at the national register"
* code[tor] ^short = "Ametinimetus (Töötamiseregistri andmete järgi)"
* code[tor] from EEBaseOccupation (extensible)

* specialty MS
* specialty ^short = "Clinical ja MEDRE specialties"
* specialty ^slicing.discriminator.type = #value
* specialty ^slicing.discriminator.path = "coding.system"
* specialty ^slicing.rules = #open
* specialty contains
    specialty 0..* MS and
    eriala 0..* MS
* specialty[specialty].coding.system = $SCT (exactly)
* specialty[specialty] ^short = "Clinical specialty (Tegevusvaldkond)"
* specialty[specialty] from EEBaseClinicalSpecialty (required)
* specialty[eriala].coding.system = "https://fhir.ee/CodeSystem/ee-medre-specialty" (exactly)
* specialty[eriala] ^short = "Medre specialty (TAM eriala)"
* specialty[eriala] from EEBaseMedreSpecialty (required)





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
* specialty[+] = EEBaseMedreSpecialty#E290 "Pediaatria"
* specialty[+] = EEBaseMedreSpecialty#E670 "Pediaatria allergoloogia lisapädevusega"


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
* specialty[+] = EEBaseMedreSpecialty#E170 "Kardioloogia"




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
* specialty[+] = EEBaseMedreSpecialty#N200 "Kliiniline õendus"


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
* specialty[+] = EEBaseMedreSpecialty#N100 "Intensiivõendus"


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
* specialty[+] = EEBaseMedreSpecialty#N300 "Terviseõendus"


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
* specialty[+] = EEBaseMedreSpecialty#N500 "Õde"

