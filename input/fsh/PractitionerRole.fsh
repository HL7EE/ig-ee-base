CodeSystem: EEBaseOccupation
Id: occupation
Title: "Classification of Occupations"
Description: "Estonian Edition of International Standard Classification of Occupations. Based on ISCO-88"
* ^experimental = true
* ^caseSensitive = false
* ^content = #fragment
* #22122501 "Pediaater"
* #22121101 "Allergoloog-immunoloog"
* #22120901 "Kardioloog"
* #22210502 "Õde"

ValueSet: EEBaseOccupation
Id: occupation
Title: "Occupation"
Description: "Classification of Occupations"
* ^experimental = true
* include codes from system EEBaseOccupation

CodeSystem: EEBaseEriala
Id: eriala
Title: "Eriala"
Description: "Medre specialty. TIS erialad."
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

ValueSet: EEBaseEriala
Id: eriala
Title: "Eriala"
Description: "Medre Specialty. TIS erialade loend."
* ^experimental = true
* include codes from system EEBaseEriala

ValueSet: EEBaseClinicalSpecialty
Id: clinical-specialty
Title: "Clinical Specialty"
Description: "Clinical specialty (aka 'tegevusvaldkond' in Estonian)"
* ^experimental = true
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* include codes from system $SCT where concept descendent-of #394658006 "Clinical specialty"

ValueSet: EEBasePractitionerRole
Id: practitioner-role
Title: "Practitioner Role"
Description: "The role of practitioner in the healthcare facility."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/practitioner-role


Profile: EEBasePractitionerRole
Parent: PractitionerRole
Id: ee-practitioner-role
Title: "EEBase PractitionerRole"
Description: "PractitionerRole resource allows exchange of specific set of roles, specialties and services that a practitioner may perform at an organisation for a period of time. EEBase PractitionerRole profile defines the constraints and extensions for the minimal set of data to query and retrieve information for practitioner role in Estonian context."
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
* code MS
* code ^short = "The role of the healthcare professional in the healthcare facility"
* code ^definition = "Tervishoiutöötaja roll TTO-s"
* code ^slicing.discriminator.type = #value
* code ^slicing.discriminator.path = "coding.system"
* code ^slicing.rules = #open
* code contains
    role 0..1 MS and
    tor 0..1 MS
* code[role].coding.system = "http://terminology.hl7.org/CodeSystem/practitioner-role" (exactly)
* code[role] ^short = "Practitioner role"
* code[role] from EEBasePractitionerRole (extensible)
* code[tor].coding.system = "https://fhir.ee/CodeSystem/occupation" (exactly)
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
* specialty[eriala].coding.system = "https://fhir.ee/CodeSystem/eriala" (exactly)
* specialty[eriala] ^short = "Medre specialty (TIS erialade loend)"
* specialty[eriala] from EEBaseEriala (required)





Instance: PractitionerRoleD99876
InstanceOf: EEBasePractitionerRole
Usage: #example
Description: "PractitionerRole D99876"
* id = "PractRoleD99876"
* active = true
* period.start = "2012-01-01"
* practitioner = Reference(Practitioner/D99876)
* organization = Reference(Organization/rh)
* code[role] = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor "Doctor"
* code[tor] = EEBaseOccupation#22122501 "Pediaater"
* specialty[0] = $SCT#394537008 "Pediatric specialty"
* specialty[+] = $SCT#418535003 "Pediatric immunology"
* specialty[+] = $SCT#408439002 "Allergy - specialty"
* specialty[eriala] = EEBaseEriala#E290 "Pediaatria"
* specialty[+] = EEBaseEriala#E670 "Pediaatria allergoloogia lisapädevusega"


Instance: PractitionerRoleD98765
InstanceOf: EEBasePractitionerRole
Usage: #example
Description: "PractitionerRole D98765"
* id = "PractRoleD98765"
* active = true
* period.start = "2012-01-01"
* practitioner = Reference(Practitioner/D98765)
* organization = Reference(Organization/rh)
* code[role] = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor "Doctor"
* code[tor] = EEBaseOccupation#22120901 "Kardioloog"
* specialty[0] = $SCT#394579002 "Cardiology"
* specialty[+] = $SCT#1251549008 "Interventional cardiology"
* specialty[eriala] = EEBaseEriala#E170 "Kardioloogia"




Instance: PractitionerRoleN98765
InstanceOf: EEBasePractitionerRole
Usage: #example
Description: "PractitionerRole N98765"
* id = "PractRoleN98765"
* active = true
* period.start = "2012-01-01"
* practitioner = Reference(Practitioner/N98765)
* organization = Reference(Organization/rh)
* code[role] = http://terminology.hl7.org/CodeSystem/practitioner-role#nurse "Nurse"
* code[tor] = EEBaseOccupation#22210502 "Õde"
* specialty[0] = $SCT#394810000 "Rheumatology"
* specialty[eriala] = EEBaseEriala#N200 "Kliiniline õendus"


Instance: PractitionerRoleN99876
InstanceOf: EEBasePractitionerRole
Usage: #example
Description: "PractitionerRole N99876"
* id = "PractRoleN99876"
* active = true
* period.start = "2012-01-01"
* practitioner = Reference(Practitioner/N99876)
* organization = Reference(Organization/rh)
* code[role] = http://terminology.hl7.org/CodeSystem/practitioner-role#nurse "Nurse"
//* code[tor] = EEBaseOccupation#PN "Advanced Practice Nurse"
* code[tor] = EEBaseOccupation#22210502 "Õde"
* specialty[0] = $SCT#773568002 "Emergency medicine"
* specialty[eriala] = EEBaseEriala#N100 "Intensiivõendus"
