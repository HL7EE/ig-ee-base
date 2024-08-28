Alias: v3-RoleClass = http://terminology.hl7.org/CodeSystem/v3-RoleClass


Profile: EEBaseRelatedPerson
Parent: RelatedPerson
Id: ee-related-person
Title: "EEBase RelatedPerson"
Description: "This profile builds on RelatedPerson resource. The profile allows information exchange about a person that is involved in the care for a patient, but who is not the target of healthcare, nor has a formal responsibility in the care process."
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* patient only Reference(EEBasePatient)
* patient MS
* identifier MS
* identifier ^short = "Kontaktisiku identifikaatorid."
* identifier.system from EEBasePatientIdentifierDomain (extensible)
* identifier.system 1.. MS
* identifier.value 1.. MS
/*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    est-id 0..1 and
    tis-id 0..1
* identifier[est-id] only $EEBase-ESTID
* identifier[est-id] ^short = "Estonian personal identification"
* identifier[est-id] ^definition = "Eesti isikukoodi identifikaator"
* identifier[tis-id] only $EEBase-TISID
* identifier[tis-id] ^short = "Person's unique code generated by National Health System"
* identifier[tis-id] ^definition = "Isiku unikaalne tunnus, mille alusel saab teda eristada teistest isikutest TIS-is. Saab kasutada nii välimaalaste kui ka tundmatu isiku jaoks (juhtudel, kui puudub Eesti isikukood). Mõeldud andmevahetuseks Tervise infosüsteemiga."
*/

* telecom MS
* address only EEBaseAddress
* relationship MS 
* relationship ^slicing.discriminator.type = #value
* relationship ^slicing.discriminator.path = "coding.system"
* relationship ^slicing.rules = #open
* relationship contains
    class 0..* and
    person 0..* 
* relationship[class].coding.system = v3-RoleClass (exactly)
* relationship[class].coding.system from http://terminology.hl7.org/ValueSet/v3-RoleClass (extensible)
* relationship[class] ^short = "Association or legal relationship between two entities."
* relationship[person].coding.system = $SCT (exactly)
* relationship[person].coding.system from EEPersonRelationship (extensible)
* relationship[person] ^short = "Social relation to the patient"


Instance: Mets2Meri
InstanceOf: EEBaseRelatedPerson
Description: "Mari Meri is an emergency contact of Mart Mets"
* patient = Reference(PatientMartMets)
* name.text = "Mari Meri"
* relationship[0] = v3-RoleClass#ECON "emergency contact"
* relationship[+] = $SCT#113163005 "Friend"


Instance: Doe2Doe
InstanceOf: EEBaseRelatedPerson
Description: "Jane Doe is a wife of John Doe"
* patient = Reference(PatientJohnDoe)
* name
  * given = "Jane"
  * family = "Doe"
* gender = #female  
* relationship[0] = $SCT#127848009 "Spouse"
* relationship[+] = v3-RoleClass#NOK "Next of kin"
