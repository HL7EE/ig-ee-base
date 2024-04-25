ValueSet: EEBaseOrganizationIdentifierDomain
Id: organization-identifier-domain
Title: "Organization Identifier Domain"
Description: "Identifier systems acceptable for organization identification"
* ^experimental = false
* EEBaseIdentifierDomain#https://fhir.ee/sid/org/est/fi
* EEBaseIdentifierDomain#https://fhir.ee/sid/org/est/br
* EEBaseIdentifierDomain#https://fhir.ee/sid/org/vatin

ValueSet: EEBasePractitionerIdentifierDomain
Id: practitioner-identifier-domain
Title: "Practitioner Identifier Domain"
Description: "Identifier systems acceptable for practitioner identification"
* ^experimental = false
* EEBaseIdentifierDomain#https://fhir.ee/sid/pid/est/ni
* EEBaseIdentifierDomain#https://fhir.ee/sid/pro/est/pho

ValueSet: EEBasePatientIdentifierDomain
Id: patient-identifier-domain
Title: "Patient Identifier Domain"
Description: "Identity systems acceptable for patient identification"
* ^experimental = false
* include codes from system EEBaseIdentifierDomain where concept is-a "https://fhir.ee/sid/pid" and notSelectable = "false"

ValueSet: EEBaseIdentifierDomain
Id: identifier-domain
Title: "Identity System"
Description: "All identification systems have ever been used for identification."
* ^experimental = false
* include codes from system EEBaseIdentifierDomain


CodeSystem: EEBaseIdentifierDomain
Id: identifier-domain
Title: "Identifier Domain"
Description: "Description of the identifier systems acceptable for entity identification"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Estonia"
* ^contact.name = "HL7 Estonia"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.hl7.ee"
* ^jurisdiction = urn:iso:std:iso:3166#EE "Estonia"
* ^copyright = "Apache-2.0"
* ^caseSensitive = false
* ^hierarchyMeaning = #is-a
* ^content = #complete
* ^property[0].code = #idtype
* ^property[=].uri = "http://fhir.ee/CodeSystem/concept-properties#idtype"
* ^property[=].description = "Identifier type of concept according to http://terminology.hl7.org/CodeSystem/v2-0203"
* ^property[=].type = #code
* ^property[+].code = #country
* ^property[=].uri = "http://fhir.ee/CodeSystem/concept-properties#country"
* ^property[=].description = "ISO 3166 аlpha3 country code"
* ^property[=].type = #code
* ^property[+].code = #naming-system
* ^property[=].description = "The uri to the related naming system"
* ^property[=].type = #string
* ^property[+].code = #notSelectable
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#notSelectable"
* ^property[=].description = "The concept is not intended to be chosen by the user"
* ^property[=].type = #boolean
* #https://fhir.ee/sid/org "Root of identifiers for organization identification" "Identifikaatorid asutustele"
* #https://fhir.ee/sid/org ^property[0].code = #notSelectable
* #https://fhir.ee/sid/org ^property[=].valueBoolean = true
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/est/br "Estonian Business Register Code" "Äriregistri number"
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/est/br ^property[0].code = #idtype
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/est/br ^property[=].valueCode = #XX
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/est/br ^property[+].code = #country
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/est/br ^property[=].valueCode = #EST
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/est/br ^property[+].code = #naming-system
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/est/br ^property[=].valueString = "https://fhir.ee/NamingSystem/org-est-br"
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/est/br ^property[+].code = #notSelectable
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/est/br ^property[=].valueBoolean = false
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/est/fi "License number provided by The National Institute for Health Development" "Terviseameti litsentsi number"
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/est/fi ^property[0].code = #idtype
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/est/fi ^property[=].valueCode = #FI
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/est/fi ^property[+].code = #country
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/est/fi ^property[=].valueCode = #EST
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/est/fi ^property[+].code = #naming-system
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/est/fi ^property[=].valueString = "https://fhir.ee/NamingSystem/org-est-fi"
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/est/fi ^property[+].code = #notSelectable
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/est/fi ^property[=].valueBoolean = false
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/vatin "VAT identification number" "KMKR"
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/vatin ^property[0].code = #idtype
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/vatin ^property[=].valueCode = #TAX
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/vatin ^property[+].code = #naming-system
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/vatin ^property[=].valueString = "https://fhir.ee/NamingSystem/org-vatin"
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/vatin ^property[+].code = #notSelectable
* #https://fhir.ee/sid/org #https://fhir.ee/sid/org/vatin ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pro "Root of identifiers for healthcare professionals" "Identifikaatorid tervishoiutöötajatele"
* #https://fhir.ee/sid/pro ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pro ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pro #https://fhir.ee/sid/pro/est "Root of Estonian identifiers for healthcare professionals" "Eesti identifikaatorid tervishoiutöötajatele"
* #https://fhir.ee/sid/pro #https://fhir.ee/sid/pro/est ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pro #https://fhir.ee/sid/pro/est ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pro #https://fhir.ee/sid/pro/est ^property[+].code = #country
* #https://fhir.ee/sid/pro #https://fhir.ee/sid/pro/est ^property[=].valueCode = #EST
* #https://fhir.ee/sid/pro #https://fhir.ee/sid/pro/est #https://fhir.ee/sid/pro/est/pho "Healthcare professional official ID provided by The National Institute for Health Development" "Tervishoiutöötaja TAM kood"
* #https://fhir.ee/sid/pro #https://fhir.ee/sid/pro/est #https://fhir.ee/sid/pro/est/pho ^property[0].code = #idtype
* #https://fhir.ee/sid/pro #https://fhir.ee/sid/pro/est #https://fhir.ee/sid/pro/est/pho ^property[=].valueCode = #PHO
* #https://fhir.ee/sid/pro #https://fhir.ee/sid/pro/est #https://fhir.ee/sid/pro/est/pho ^property[+].code = #country
* #https://fhir.ee/sid/pro #https://fhir.ee/sid/pro/est #https://fhir.ee/sid/pro/est/pho ^property[=].valueCode = #EST
* #https://fhir.ee/sid/pro #https://fhir.ee/sid/pro/est #https://fhir.ee/sid/pro/est/pho ^property[+].code = #naming-system
* #https://fhir.ee/sid/pro #https://fhir.ee/sid/pro/est #https://fhir.ee/sid/pro/est/pho ^property[=].valueString = "https://fhir.ee/NamingSystem/pro-est-pho"
* #https://fhir.ee/sid/pro #https://fhir.ee/sid/pro/est #https://fhir.ee/sid/pro/est/pho ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pro #https://fhir.ee/sid/pro/est #https://fhir.ee/sid/pro/est/pho ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid "Root of identifiers for person identification" "Identifikaatorid isikutele"
* #https://fhir.ee/sid/pid ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est "Root of Estonian identifiers for person identification" "Eesti identifikaatorid isikutele"
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est ^property[+].code = #country
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est ^property[=].valueCode = #EST
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/ni "Estonian personal national identification code" "Eesti isikukood"
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/ni ^property[=].valueCode = #EST
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/ni ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/ni ^property[=].valueString = "https://fhir.ee/NamingSystem/pid-est-ni"
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/ppn "Estonian passport number" "Eesti passinumber"
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/ppn ^property[=].valueCode = #EST
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-EST"
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/mr "MPI issued medical record number" "Patsiendiregistri poolt genereeritud identifikaator"
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/mr ^property[0].code = #idtype
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/mr ^property[=].valueCode = #MR
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/mr ^property[+].code = #country
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/mr ^property[=].valueCode = #EST
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/mr ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/mr ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/mrt "Unknown patient code generated by healthcare provider" "TTO poolt genereeritav tundmatu patsiendi identifikaator"
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/mrt ^property[0].code = #idtype
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/mrt ^property[=].valueCode = #MRT
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/mrt ^property[+].code = #country
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/mrt ^property[=].valueCode = #EST
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/mrt ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/mrt ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/npi "Stillborn code provided by The National Institute for Health Development" "Surnultsündinu kood genereeritud TAI poolt"
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/npi ^property[0].code = #idtype
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/npi ^property[=].valueCode = #NPI
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/npi ^property[+].code = #country
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/npi ^property[=].valueCode = #EST
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/npi ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/npi ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/u "Unknown person identifier. May be used only for backward-compatibility." "Määramata identifikaator. Saab olema kasutatud ainult ainult tagasiühildavuse jaoks, nt vanade andmete import."
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/u ^property[0].code = #idtype
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/u ^property[=].valueCode = #U
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/u ^property[+].code = #country
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/u ^property[=].valueCode = #EST
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/u ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/u ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn "Namespace for identifier issued by healthcare providers" "Nimeruum TTO poolt genereeritud identifikaatoritele"
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn ^property[=].valueCode = #PRN
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn ^property[+].code = #country
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn ^property[=].valueCode = #EST
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/90006399 "North Estonian Medical Center" "Põhja-Eesti Regionaalhaigla"
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/90006399 ^property[0].code = #idtype
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/90006399 ^property[=].valueCode = #PRN
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/90006399 ^property[+].code = #country
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/90006399 ^property[=].valueCode = #EST
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/90006399 ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/90006399 ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 "Health and Welfare Information Systems Centre" "TERVISE JA HEAOLU INFOSÜSTEEMIDE KESKUS"
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 ^property[0].code = #idtype
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 ^property[=].valueCode = #PRN
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 ^property[+].code = #country
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 ^property[=].valueCode = #EST
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/kmt "KMT unknown patient identifier" "KMT tundmatu patsiendi identifikaator"
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/kmt ^property[0].code = #idtype
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/kmt ^property[=].valueCode = #MRT
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/kmt ^property[+].code = #country
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/kmt ^property[=].valueCode = #EST
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/kmt ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/kmt ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/rk "RK unknown patient identifier" "RK tundmatu patsiendi identifikaator"
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/rk ^property[0].code = #idtype
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/rk ^property[=].valueCode = #MRT
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/rk ^property[+].code = #country
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/rk ^property[=].valueCode = #EST
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/rk ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/rk ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/ap "AP unknown patient identifier" "AP tundmatu patsiendi identifikaator"
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/ap ^property[0].code = #idtype
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/ap ^property[=].valueCode = #MRT
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/ap ^property[+].code = #country
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/ap ^property[=].valueCode = #EST
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/ap ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid #https://fhir.ee/sid/pid/est #https://fhir.ee/sid/pid/est/prn #https://fhir.ee/sid/pid/est/prn/70009770 #https://fhir.ee/sid/pid/est/prn/70009770/ap ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/afg "Root identifier for person identification of country Afghanistan" "Afganistan identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/afg ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/afg ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/afg ^property[+].code = #country
* #https://fhir.ee/sid/pid/afg ^property[=].valueCode = #AFG
* #https://fhir.ee/sid/pid/afg #https://fhir.ee/sid/pid/afg/ppn "Passport number of Afghanistan" "Afganistan passinumber"
* #https://fhir.ee/sid/pid/afg #https://fhir.ee/sid/pid/afg/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/afg #https://fhir.ee/sid/pid/afg/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/afg #https://fhir.ee/sid/pid/afg/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/afg #https://fhir.ee/sid/pid/afg/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/afg #https://fhir.ee/sid/pid/afg/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/afg #https://fhir.ee/sid/pid/afg/ppn ^property[=].valueCode = #AFG
* #https://fhir.ee/sid/pid/afg #https://fhir.ee/sid/pid/afg/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/afg #https://fhir.ee/sid/pid/afg/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AFG"
* #https://fhir.ee/sid/pid/ala "Root identifier for person identification of country Åland Islands" "Ahvenamaa identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/ala ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/ala ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/ala ^property[+].code = #country
* #https://fhir.ee/sid/pid/ala ^property[=].valueCode = #ALA
* #https://fhir.ee/sid/pid/ala #https://fhir.ee/sid/pid/ala/ppn "Passport number of Åland Islands" "Ahvenamaa passinumber"
* #https://fhir.ee/sid/pid/ala #https://fhir.ee/sid/pid/ala/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ala #https://fhir.ee/sid/pid/ala/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/ala #https://fhir.ee/sid/pid/ala/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ala #https://fhir.ee/sid/pid/ala/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ala #https://fhir.ee/sid/pid/ala/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/ala #https://fhir.ee/sid/pid/ala/ppn ^property[=].valueCode = #ALA
* #https://fhir.ee/sid/pid/ala #https://fhir.ee/sid/pid/ala/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/ala #https://fhir.ee/sid/pid/ala/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ALA"
* #https://fhir.ee/sid/pid/alb "Root identifier for person identification of country Albania" "Albaania identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/alb ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/alb ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/alb ^property[+].code = #country
* #https://fhir.ee/sid/pid/alb ^property[=].valueCode = #ALB
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/ppn "Passport number of Albania" "Albaania passinumber"
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/ppn ^property[=].valueCode = #ALB
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ALB"
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/ni "National identifier of Albania" "Albaania personaalne identifikaator"
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/ni ^property[=].valueCode = #ALB
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/cz "ID-card number of Albania" "Albaania ID-kaarti number"
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/cz ^property[=].valueCode = #ALB
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/dl "Driver's licence number of Albania" "Albaania juhiloa number"
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/alb #https://fhir.ee/sid/pid/alb/dl ^property[=].valueCode = #ALB
* #https://fhir.ee/sid/pid/dza "Root identifier for person identification of country Algeria" "Alžeeria identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/dza ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/dza ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/dza ^property[+].code = #country
* #https://fhir.ee/sid/pid/dza ^property[=].valueCode = #DZA
* #https://fhir.ee/sid/pid/dza #https://fhir.ee/sid/pid/dza/ppn "Passport number of Algeria" "Alžeeria passinumber"
* #https://fhir.ee/sid/pid/dza #https://fhir.ee/sid/pid/dza/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/dza #https://fhir.ee/sid/pid/dza/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/dza #https://fhir.ee/sid/pid/dza/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/dza #https://fhir.ee/sid/pid/dza/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/dza #https://fhir.ee/sid/pid/dza/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/dza #https://fhir.ee/sid/pid/dza/ppn ^property[=].valueCode = #DZA
* #https://fhir.ee/sid/pid/dza #https://fhir.ee/sid/pid/dza/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/dza #https://fhir.ee/sid/pid/dza/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-DZA"
* #https://fhir.ee/sid/pid/asm "Root identifier for person identification of country American Samoa" "Ameerika Samoa identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/asm ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/asm ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/asm ^property[+].code = #country
* #https://fhir.ee/sid/pid/asm ^property[=].valueCode = #ASM
* #https://fhir.ee/sid/pid/asm #https://fhir.ee/sid/pid/asm/ppn "Passport number of American Samoa" "Ameerika Samoa passinumber"
* #https://fhir.ee/sid/pid/asm #https://fhir.ee/sid/pid/asm/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/asm #https://fhir.ee/sid/pid/asm/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/asm #https://fhir.ee/sid/pid/asm/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/asm #https://fhir.ee/sid/pid/asm/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/asm #https://fhir.ee/sid/pid/asm/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/asm #https://fhir.ee/sid/pid/asm/ppn ^property[=].valueCode = #ASM
* #https://fhir.ee/sid/pid/asm #https://fhir.ee/sid/pid/asm/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/asm #https://fhir.ee/sid/pid/asm/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ASM"
* #https://fhir.ee/sid/pid/usa "Root identifier for person identification of country United States of America" "Ameerika Ühendriigid identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/usa ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/usa ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/usa ^property[+].code = #country
* #https://fhir.ee/sid/pid/usa ^property[=].valueCode = #USA
* #https://fhir.ee/sid/pid/usa #https://fhir.ee/sid/pid/usa/ppn "Passport number of United States of America" "Ameerika Ühendriigid passinumber"
* #https://fhir.ee/sid/pid/usa #https://fhir.ee/sid/pid/usa/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/usa #https://fhir.ee/sid/pid/usa/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/usa #https://fhir.ee/sid/pid/usa/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/usa #https://fhir.ee/sid/pid/usa/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/usa #https://fhir.ee/sid/pid/usa/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/usa #https://fhir.ee/sid/pid/usa/ppn ^property[=].valueCode = #USA
* #https://fhir.ee/sid/pid/usa #https://fhir.ee/sid/pid/usa/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/usa #https://fhir.ee/sid/pid/usa/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-USA"
* #https://fhir.ee/sid/pid/and "Root identifier for person identification of country Andorra" "Andorra identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/and ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/and ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/and ^property[+].code = #country
* #https://fhir.ee/sid/pid/and ^property[=].valueCode = #AND
* #https://fhir.ee/sid/pid/and #https://fhir.ee/sid/pid/and/ppn "Passport number of Andorra" "Andorra passinumber"
* #https://fhir.ee/sid/pid/and #https://fhir.ee/sid/pid/and/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/and #https://fhir.ee/sid/pid/and/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/and #https://fhir.ee/sid/pid/and/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/and #https://fhir.ee/sid/pid/and/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/and #https://fhir.ee/sid/pid/and/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/and #https://fhir.ee/sid/pid/and/ppn ^property[=].valueCode = #AND
* #https://fhir.ee/sid/pid/and #https://fhir.ee/sid/pid/and/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/and #https://fhir.ee/sid/pid/and/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AND"
* #https://fhir.ee/sid/pid/ago "Root identifier for person identification of country Angola" "Angola identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/ago ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/ago ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/ago ^property[+].code = #country
* #https://fhir.ee/sid/pid/ago ^property[=].valueCode = #AGO
* #https://fhir.ee/sid/pid/ago #https://fhir.ee/sid/pid/ago/ppn "Passport number of Angola" "Angola passinumber"
* #https://fhir.ee/sid/pid/ago #https://fhir.ee/sid/pid/ago/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ago #https://fhir.ee/sid/pid/ago/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/ago #https://fhir.ee/sid/pid/ago/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ago #https://fhir.ee/sid/pid/ago/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ago #https://fhir.ee/sid/pid/ago/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/ago #https://fhir.ee/sid/pid/ago/ppn ^property[=].valueCode = #AGO
* #https://fhir.ee/sid/pid/ago #https://fhir.ee/sid/pid/ago/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/ago #https://fhir.ee/sid/pid/ago/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AGO"
* #https://fhir.ee/sid/pid/aia "Root identifier for person identification of country Anguilla" "Anguilla identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/aia ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/aia ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/aia ^property[+].code = #country
* #https://fhir.ee/sid/pid/aia ^property[=].valueCode = #AIA
* #https://fhir.ee/sid/pid/aia #https://fhir.ee/sid/pid/aia/ppn "Passport number of Anguilla" "Anguilla passinumber"
* #https://fhir.ee/sid/pid/aia #https://fhir.ee/sid/pid/aia/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/aia #https://fhir.ee/sid/pid/aia/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/aia #https://fhir.ee/sid/pid/aia/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/aia #https://fhir.ee/sid/pid/aia/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/aia #https://fhir.ee/sid/pid/aia/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/aia #https://fhir.ee/sid/pid/aia/ppn ^property[=].valueCode = #AIA
* #https://fhir.ee/sid/pid/aia #https://fhir.ee/sid/pid/aia/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/aia #https://fhir.ee/sid/pid/aia/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AIA"
* #https://fhir.ee/sid/pid/ata "Root identifier for person identification of country Antarctica" "Antarktis identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/ata ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/ata ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/ata ^property[+].code = #country
* #https://fhir.ee/sid/pid/ata ^property[=].valueCode = #ATA
* #https://fhir.ee/sid/pid/ata #https://fhir.ee/sid/pid/ata/ppn "Passport number of Antarctica" "Antarktis passinumber"
* #https://fhir.ee/sid/pid/ata #https://fhir.ee/sid/pid/ata/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ata #https://fhir.ee/sid/pid/ata/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/ata #https://fhir.ee/sid/pid/ata/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ata #https://fhir.ee/sid/pid/ata/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ata #https://fhir.ee/sid/pid/ata/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/ata #https://fhir.ee/sid/pid/ata/ppn ^property[=].valueCode = #ATA
* #https://fhir.ee/sid/pid/ata #https://fhir.ee/sid/pid/ata/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/ata #https://fhir.ee/sid/pid/ata/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ATA"
* #https://fhir.ee/sid/pid/atg "Root identifier for person identification of country Antigua and Barbuda" "Antigua ja Barbuda identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/atg ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/atg ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/atg ^property[+].code = #country
* #https://fhir.ee/sid/pid/atg ^property[=].valueCode = #ATG
* #https://fhir.ee/sid/pid/atg #https://fhir.ee/sid/pid/atg/ppn "Passport number of Antigua and Barbuda" "Antigua ja Barbuda passinumber"
* #https://fhir.ee/sid/pid/atg #https://fhir.ee/sid/pid/atg/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/atg #https://fhir.ee/sid/pid/atg/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/atg #https://fhir.ee/sid/pid/atg/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/atg #https://fhir.ee/sid/pid/atg/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/atg #https://fhir.ee/sid/pid/atg/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/atg #https://fhir.ee/sid/pid/atg/ppn ^property[=].valueCode = #ATG
* #https://fhir.ee/sid/pid/atg #https://fhir.ee/sid/pid/atg/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/atg #https://fhir.ee/sid/pid/atg/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ATG"
* #https://fhir.ee/sid/pid/are "Root identifier for person identification of country United Arab Emirates" "Araabia Ühendemiraadid identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/are ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/are ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/are ^property[+].code = #country
* #https://fhir.ee/sid/pid/are ^property[=].valueCode = #ARE
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/ppn "Passport number of United Arab Emirates" "Araabia Ühendemiraadid passinumber"
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/ppn ^property[=].valueCode = #ARE
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ARE"
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/ni "National identifier of United Arab Emirates" "Araabia Ühendemiraadid personaalne identifikaator"
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/ni ^property[=].valueCode = #ARE
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/cz "ID-card number of United Arab Emirates" "Araabia Ühendemiraadid ID-kaarti number"
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/are #https://fhir.ee/sid/pid/are/cz ^property[=].valueCode = #ARE
* #https://fhir.ee/sid/pid/arg "Root identifier for person identification of country Argentina" "Argentina identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/arg ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/arg ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/arg ^property[+].code = #country
* #https://fhir.ee/sid/pid/arg ^property[=].valueCode = #ARG
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/ppn "Passport number of Argentina" "Argentina passinumber"
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/ppn ^property[=].valueCode = #ARG
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ARG"
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/ni "National identifier of Argentina" "Argentina personaalne identifikaator"
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/ni ^property[=].valueCode = #ARG
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/dl "Driver's licence number of Argentina" "Argentina juhiloa number"
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/arg #https://fhir.ee/sid/pid/arg/dl ^property[=].valueCode = #ARG
* #https://fhir.ee/sid/pid/arm "Root identifier for person identification of country Armenia" "Armeenia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/arm ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/arm ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/arm ^property[+].code = #country
* #https://fhir.ee/sid/pid/arm ^property[=].valueCode = #ARM
* #https://fhir.ee/sid/pid/arm #https://fhir.ee/sid/pid/arm/ppn "Passport number of Armenia" "Armeenia passinumber"
* #https://fhir.ee/sid/pid/arm #https://fhir.ee/sid/pid/arm/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/arm #https://fhir.ee/sid/pid/arm/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/arm #https://fhir.ee/sid/pid/arm/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/arm #https://fhir.ee/sid/pid/arm/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/arm #https://fhir.ee/sid/pid/arm/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/arm #https://fhir.ee/sid/pid/arm/ppn ^property[=].valueCode = #ARM
* #https://fhir.ee/sid/pid/arm #https://fhir.ee/sid/pid/arm/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/arm #https://fhir.ee/sid/pid/arm/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ARM"
* #https://fhir.ee/sid/pid/abw "Root identifier for person identification of country Aruba" "Aruba identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/abw ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/abw ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/abw ^property[+].code = #country
* #https://fhir.ee/sid/pid/abw ^property[=].valueCode = #ABW
* #https://fhir.ee/sid/pid/abw #https://fhir.ee/sid/pid/abw/ppn "Passport number of Aruba" "Aruba passinumber"
* #https://fhir.ee/sid/pid/abw #https://fhir.ee/sid/pid/abw/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/abw #https://fhir.ee/sid/pid/abw/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/abw #https://fhir.ee/sid/pid/abw/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/abw #https://fhir.ee/sid/pid/abw/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/abw #https://fhir.ee/sid/pid/abw/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/abw #https://fhir.ee/sid/pid/abw/ppn ^property[=].valueCode = #ABW
* #https://fhir.ee/sid/pid/abw #https://fhir.ee/sid/pid/abw/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/abw #https://fhir.ee/sid/pid/abw/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ABW"
* #https://fhir.ee/sid/pid/aze "Root identifier for person identification of country Azerbaijan" "Aserbaidžaan identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/aze ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/aze ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/aze ^property[+].code = #country
* #https://fhir.ee/sid/pid/aze ^property[=].valueCode = #AZE
* #https://fhir.ee/sid/pid/aze #https://fhir.ee/sid/pid/aze/ppn "Passport number of Azerbaijan" "Aserbaidžaan passinumber"
* #https://fhir.ee/sid/pid/aze #https://fhir.ee/sid/pid/aze/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/aze #https://fhir.ee/sid/pid/aze/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/aze #https://fhir.ee/sid/pid/aze/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/aze #https://fhir.ee/sid/pid/aze/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/aze #https://fhir.ee/sid/pid/aze/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/aze #https://fhir.ee/sid/pid/aze/ppn ^property[=].valueCode = #AZE
* #https://fhir.ee/sid/pid/aze #https://fhir.ee/sid/pid/aze/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/aze #https://fhir.ee/sid/pid/aze/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AZE"
* #https://fhir.ee/sid/pid/aus "Root identifier for person identification of country Australia" "Austraalia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/aus ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/aus ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/aus ^property[+].code = #country
* #https://fhir.ee/sid/pid/aus ^property[=].valueCode = #AUS
* #https://fhir.ee/sid/pid/aus #https://fhir.ee/sid/pid/aus/ppn "Passport number of Australia" "Austraalia passinumber"
* #https://fhir.ee/sid/pid/aus #https://fhir.ee/sid/pid/aus/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/aus #https://fhir.ee/sid/pid/aus/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/aus #https://fhir.ee/sid/pid/aus/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/aus #https://fhir.ee/sid/pid/aus/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/aus #https://fhir.ee/sid/pid/aus/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/aus #https://fhir.ee/sid/pid/aus/ppn ^property[=].valueCode = #AUS
* #https://fhir.ee/sid/pid/aus #https://fhir.ee/sid/pid/aus/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/aus #https://fhir.ee/sid/pid/aus/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AUS"
* #https://fhir.ee/sid/pid/aut "Root identifier for person identification of country Austria" "Austria identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/aut ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/aut ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/aut ^property[+].code = #country
* #https://fhir.ee/sid/pid/aut ^property[=].valueCode = #AUT
* #https://fhir.ee/sid/pid/aut #https://fhir.ee/sid/pid/aut/ppn "Passport number of Austria" "Austria passinumber"
* #https://fhir.ee/sid/pid/aut #https://fhir.ee/sid/pid/aut/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/aut #https://fhir.ee/sid/pid/aut/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/aut #https://fhir.ee/sid/pid/aut/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/aut #https://fhir.ee/sid/pid/aut/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/aut #https://fhir.ee/sid/pid/aut/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/aut #https://fhir.ee/sid/pid/aut/ppn ^property[=].valueCode = #AUT
* #https://fhir.ee/sid/pid/aut #https://fhir.ee/sid/pid/aut/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/aut #https://fhir.ee/sid/pid/aut/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AUT"
* #https://fhir.ee/sid/pid/bhs "Root identifier for person identification of country Bahamas" "Bahama identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/bhs ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/bhs ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/bhs ^property[+].code = #country
* #https://fhir.ee/sid/pid/bhs ^property[=].valueCode = #BHS
* #https://fhir.ee/sid/pid/bhs #https://fhir.ee/sid/pid/bhs/ppn "Passport number of Bahamas" "Bahama passinumber"
* #https://fhir.ee/sid/pid/bhs #https://fhir.ee/sid/pid/bhs/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bhs #https://fhir.ee/sid/pid/bhs/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/bhs #https://fhir.ee/sid/pid/bhs/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bhs #https://fhir.ee/sid/pid/bhs/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bhs #https://fhir.ee/sid/pid/bhs/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/bhs #https://fhir.ee/sid/pid/bhs/ppn ^property[=].valueCode = #BHS
* #https://fhir.ee/sid/pid/bhs #https://fhir.ee/sid/pid/bhs/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/bhs #https://fhir.ee/sid/pid/bhs/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BHS"
* #https://fhir.ee/sid/pid/bhr "Root identifier for person identification of country Bahrain" "Bahrein identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/bhr ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/bhr ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/bhr ^property[+].code = #country
* #https://fhir.ee/sid/pid/bhr ^property[=].valueCode = #BHR
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/ppn "Passport number of Bahrain" "Bahrein passinumber"
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/ppn ^property[=].valueCode = #BHR
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BHR"
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/ni "National identifier of Bahrain" "Bahrein personaalne identifikaator"
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/ni ^property[=].valueCode = #BHR
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/cz "ID-card number of Bahrain" "Bahrein ID-kaarti number"
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/bhr #https://fhir.ee/sid/pid/bhr/cz ^property[=].valueCode = #BHR
* #https://fhir.ee/sid/pid/bgd "Root identifier for person identification of country Bangladesh" "Bangladesh identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/bgd ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/bgd ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/bgd ^property[+].code = #country
* #https://fhir.ee/sid/pid/bgd ^property[=].valueCode = #BGD
* #https://fhir.ee/sid/pid/bgd #https://fhir.ee/sid/pid/bgd/ppn "Passport number of Bangladesh" "Bangladesh passinumber"
* #https://fhir.ee/sid/pid/bgd #https://fhir.ee/sid/pid/bgd/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bgd #https://fhir.ee/sid/pid/bgd/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/bgd #https://fhir.ee/sid/pid/bgd/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bgd #https://fhir.ee/sid/pid/bgd/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bgd #https://fhir.ee/sid/pid/bgd/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/bgd #https://fhir.ee/sid/pid/bgd/ppn ^property[=].valueCode = #BGD
* #https://fhir.ee/sid/pid/bgd #https://fhir.ee/sid/pid/bgd/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/bgd #https://fhir.ee/sid/pid/bgd/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BGD"
* #https://fhir.ee/sid/pid/bgd #https://fhir.ee/sid/pid/bgd/ni "National identifier of Bangladesh" "Bangladesh personaalne identifikaator"
* #https://fhir.ee/sid/pid/bgd #https://fhir.ee/sid/pid/bgd/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bgd #https://fhir.ee/sid/pid/bgd/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/bgd #https://fhir.ee/sid/pid/bgd/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bgd #https://fhir.ee/sid/pid/bgd/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bgd #https://fhir.ee/sid/pid/bgd/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/bgd #https://fhir.ee/sid/pid/bgd/ni ^property[=].valueCode = #BGD
* #https://fhir.ee/sid/pid/brb "Root identifier for person identification of country Barbados" "Barbados identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/brb ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/brb ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/brb ^property[+].code = #country
* #https://fhir.ee/sid/pid/brb ^property[=].valueCode = #BRB
* #https://fhir.ee/sid/pid/brb #https://fhir.ee/sid/pid/brb/ppn "Passport number of Barbados" "Barbados passinumber"
* #https://fhir.ee/sid/pid/brb #https://fhir.ee/sid/pid/brb/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/brb #https://fhir.ee/sid/pid/brb/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/brb #https://fhir.ee/sid/pid/brb/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/brb #https://fhir.ee/sid/pid/brb/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/brb #https://fhir.ee/sid/pid/brb/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/brb #https://fhir.ee/sid/pid/brb/ppn ^property[=].valueCode = #BRB
* #https://fhir.ee/sid/pid/brb #https://fhir.ee/sid/pid/brb/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/brb #https://fhir.ee/sid/pid/brb/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BRB"
* #https://fhir.ee/sid/pid/plw "Root identifier for person identification of country Palau" "Belau identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/plw ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/plw ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/plw ^property[+].code = #country
* #https://fhir.ee/sid/pid/plw ^property[=].valueCode = #PLW
* #https://fhir.ee/sid/pid/plw #https://fhir.ee/sid/pid/plw/ppn "Passport number of Palau" "Belau passinumber"
* #https://fhir.ee/sid/pid/plw #https://fhir.ee/sid/pid/plw/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/plw #https://fhir.ee/sid/pid/plw/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/plw #https://fhir.ee/sid/pid/plw/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/plw #https://fhir.ee/sid/pid/plw/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/plw #https://fhir.ee/sid/pid/plw/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/plw #https://fhir.ee/sid/pid/plw/ppn ^property[=].valueCode = #PLW
* #https://fhir.ee/sid/pid/plw #https://fhir.ee/sid/pid/plw/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/plw #https://fhir.ee/sid/pid/plw/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PLW"
* #https://fhir.ee/sid/pid/bel "Root identifier for person identification of country Belgium" "Belgia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/bel ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/bel ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/bel ^property[+].code = #country
* #https://fhir.ee/sid/pid/bel ^property[=].valueCode = #BEL
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/ppn "Passport number of Belgium" "Belgia passinumber"
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/ppn ^property[=].valueCode = #BEL
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BEL"
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/ni "National identifier of Belgium" "Belgia personaalne identifikaator"
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/ni ^property[=].valueCode = #BEL
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/cz "ID-card number of Belgium" "Belgia ID-kaarti number"
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/cz ^property[=].valueCode = #BEL
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/dl "Driver's licence number of Belgium" "Belgia juhiloa number"
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/bel #https://fhir.ee/sid/pid/bel/dl ^property[=].valueCode = #BEL
* #https://fhir.ee/sid/pid/blz "Root identifier for person identification of country Belize" "Belize identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/blz ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/blz ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/blz ^property[+].code = #country
* #https://fhir.ee/sid/pid/blz ^property[=].valueCode = #BLZ
* #https://fhir.ee/sid/pid/blz #https://fhir.ee/sid/pid/blz/ppn "Passport number of Belize" "Belize passinumber"
* #https://fhir.ee/sid/pid/blz #https://fhir.ee/sid/pid/blz/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/blz #https://fhir.ee/sid/pid/blz/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/blz #https://fhir.ee/sid/pid/blz/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/blz #https://fhir.ee/sid/pid/blz/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/blz #https://fhir.ee/sid/pid/blz/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/blz #https://fhir.ee/sid/pid/blz/ppn ^property[=].valueCode = #BLZ
* #https://fhir.ee/sid/pid/blz #https://fhir.ee/sid/pid/blz/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/blz #https://fhir.ee/sid/pid/blz/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BLZ"
* #https://fhir.ee/sid/pid/ben "Root identifier for person identification of country Benin" "Benin identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/ben ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/ben ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/ben ^property[+].code = #country
* #https://fhir.ee/sid/pid/ben ^property[=].valueCode = #BEN
* #https://fhir.ee/sid/pid/ben #https://fhir.ee/sid/pid/ben/ppn "Passport number of Benin" "Benin passinumber"
* #https://fhir.ee/sid/pid/ben #https://fhir.ee/sid/pid/ben/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ben #https://fhir.ee/sid/pid/ben/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/ben #https://fhir.ee/sid/pid/ben/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ben #https://fhir.ee/sid/pid/ben/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ben #https://fhir.ee/sid/pid/ben/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/ben #https://fhir.ee/sid/pid/ben/ppn ^property[=].valueCode = #BEN
* #https://fhir.ee/sid/pid/ben #https://fhir.ee/sid/pid/ben/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/ben #https://fhir.ee/sid/pid/ben/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BEN"
* #https://fhir.ee/sid/pid/bmu "Root identifier for person identification of country Bermuda" "Bermuda identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/bmu ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/bmu ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/bmu ^property[+].code = #country
* #https://fhir.ee/sid/pid/bmu ^property[=].valueCode = #BMU
* #https://fhir.ee/sid/pid/bmu #https://fhir.ee/sid/pid/bmu/ppn "Passport number of Bermuda" "Bermuda passinumber"
* #https://fhir.ee/sid/pid/bmu #https://fhir.ee/sid/pid/bmu/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bmu #https://fhir.ee/sid/pid/bmu/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/bmu #https://fhir.ee/sid/pid/bmu/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bmu #https://fhir.ee/sid/pid/bmu/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bmu #https://fhir.ee/sid/pid/bmu/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/bmu #https://fhir.ee/sid/pid/bmu/ppn ^property[=].valueCode = #BMU
* #https://fhir.ee/sid/pid/bmu #https://fhir.ee/sid/pid/bmu/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/bmu #https://fhir.ee/sid/pid/bmu/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BMU"
* #https://fhir.ee/sid/pid/btn "Root identifier for person identification of country Bhutan" "Bhutan identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/btn ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/btn ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/btn ^property[+].code = #country
* #https://fhir.ee/sid/pid/btn ^property[=].valueCode = #BTN
* #https://fhir.ee/sid/pid/btn #https://fhir.ee/sid/pid/btn/ppn "Passport number of Bhutan" "Bhutan passinumber"
* #https://fhir.ee/sid/pid/btn #https://fhir.ee/sid/pid/btn/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/btn #https://fhir.ee/sid/pid/btn/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/btn #https://fhir.ee/sid/pid/btn/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/btn #https://fhir.ee/sid/pid/btn/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/btn #https://fhir.ee/sid/pid/btn/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/btn #https://fhir.ee/sid/pid/btn/ppn ^property[=].valueCode = #BTN
* #https://fhir.ee/sid/pid/btn #https://fhir.ee/sid/pid/btn/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/btn #https://fhir.ee/sid/pid/btn/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BTN"
* #https://fhir.ee/sid/pid/bol "Root identifier for person identification of country Bolivia" "Boliivia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/bol ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/bol ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/bol ^property[+].code = #country
* #https://fhir.ee/sid/pid/bol ^property[=].valueCode = #BOL
* #https://fhir.ee/sid/pid/bol #https://fhir.ee/sid/pid/bol/ppn "Passport number of Bolivia" "Boliivia passinumber"
* #https://fhir.ee/sid/pid/bol #https://fhir.ee/sid/pid/bol/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bol #https://fhir.ee/sid/pid/bol/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/bol #https://fhir.ee/sid/pid/bol/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bol #https://fhir.ee/sid/pid/bol/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bol #https://fhir.ee/sid/pid/bol/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/bol #https://fhir.ee/sid/pid/bol/ppn ^property[=].valueCode = #BOL
* #https://fhir.ee/sid/pid/bol #https://fhir.ee/sid/pid/bol/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/bol #https://fhir.ee/sid/pid/bol/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BOL"
* #https://fhir.ee/sid/pid/bih "Root identifier for person identification of country Bosnia and Hertzegovina" "Bosnia- ja Hertsegoviina identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/bih ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/bih ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/bih ^property[+].code = #country
* #https://fhir.ee/sid/pid/bih ^property[=].valueCode = #BIH
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/ppn "Passport number of Bosnia and Hertzegovina" "Bosnia- ja Hertsegoviina passinumber"
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/ppn ^property[=].valueCode = #BIH
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BIH"
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/ni "National identifier of Bosnia and Hertzegovina" "Bosnia- ja Hertsegoviina personaalne identifikaator"
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/ni ^property[=].valueCode = #BIH
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/cz "ID-card number of Bosnia and Hertzegovina" "Bosnia- ja Hertsegoviina ID-kaarti number"
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/cz ^property[=].valueCode = #BIH
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/dl "Driver's licence number of Bosnia and Hertzegovina" "Bosnia- ja Hertsegoviina juhiloa number"
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/bih #https://fhir.ee/sid/pid/bih/dl ^property[=].valueCode = #BIH
* #https://fhir.ee/sid/pid/bwa "Root identifier for person identification of country Botswana" "Botswana identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/bwa ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/bwa ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/bwa ^property[+].code = #country
* #https://fhir.ee/sid/pid/bwa ^property[=].valueCode = #BWA
* #https://fhir.ee/sid/pid/bwa #https://fhir.ee/sid/pid/bwa/ppn "Passport number of Botswana" "Botswana passinumber"
* #https://fhir.ee/sid/pid/bwa #https://fhir.ee/sid/pid/bwa/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bwa #https://fhir.ee/sid/pid/bwa/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/bwa #https://fhir.ee/sid/pid/bwa/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bwa #https://fhir.ee/sid/pid/bwa/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bwa #https://fhir.ee/sid/pid/bwa/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/bwa #https://fhir.ee/sid/pid/bwa/ppn ^property[=].valueCode = #BWA
* #https://fhir.ee/sid/pid/bwa #https://fhir.ee/sid/pid/bwa/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/bwa #https://fhir.ee/sid/pid/bwa/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BWA"
* #https://fhir.ee/sid/pid/bvt "Root identifier for person identification of country Bouvet Island" "Bouvet' saar identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/bvt ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/bvt ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/bvt ^property[+].code = #country
* #https://fhir.ee/sid/pid/bvt ^property[=].valueCode = #BVT
* #https://fhir.ee/sid/pid/bvt #https://fhir.ee/sid/pid/bvt/ppn "Passport number of Bouvet Island" "Bouvet' saar passinumber"
* #https://fhir.ee/sid/pid/bvt #https://fhir.ee/sid/pid/bvt/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bvt #https://fhir.ee/sid/pid/bvt/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/bvt #https://fhir.ee/sid/pid/bvt/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bvt #https://fhir.ee/sid/pid/bvt/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bvt #https://fhir.ee/sid/pid/bvt/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/bvt #https://fhir.ee/sid/pid/bvt/ppn ^property[=].valueCode = #BVT
* #https://fhir.ee/sid/pid/bvt #https://fhir.ee/sid/pid/bvt/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/bvt #https://fhir.ee/sid/pid/bvt/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BVT"
* #https://fhir.ee/sid/pid/bra "Root identifier for person identification of country Brazil" "Brasiilia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/bra ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/bra ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/bra ^property[+].code = #country
* #https://fhir.ee/sid/pid/bra ^property[=].valueCode = #BRA
* #https://fhir.ee/sid/pid/bra #https://fhir.ee/sid/pid/bra/ppn "Passport number of Brazil" "Brasiilia passinumber"
* #https://fhir.ee/sid/pid/bra #https://fhir.ee/sid/pid/bra/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bra #https://fhir.ee/sid/pid/bra/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/bra #https://fhir.ee/sid/pid/bra/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bra #https://fhir.ee/sid/pid/bra/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bra #https://fhir.ee/sid/pid/bra/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/bra #https://fhir.ee/sid/pid/bra/ppn ^property[=].valueCode = #BRA
* #https://fhir.ee/sid/pid/bra #https://fhir.ee/sid/pid/bra/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/bra #https://fhir.ee/sid/pid/bra/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BRA"
* #https://fhir.ee/sid/pid/bra #https://fhir.ee/sid/pid/bra/ni "National identifier of Brazil" "Brasiilia personaalne identifikaator"
* #https://fhir.ee/sid/pid/bra #https://fhir.ee/sid/pid/bra/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bra #https://fhir.ee/sid/pid/bra/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/bra #https://fhir.ee/sid/pid/bra/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bra #https://fhir.ee/sid/pid/bra/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bra #https://fhir.ee/sid/pid/bra/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/bra #https://fhir.ee/sid/pid/bra/ni ^property[=].valueCode = #BRA
* #https://fhir.ee/sid/pid/iot "Root identifier for person identification of country British Indian Ocean Territory" "Briti India ookeani ala identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/iot ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/iot ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/iot ^property[+].code = #country
* #https://fhir.ee/sid/pid/iot ^property[=].valueCode = #IOT
* #https://fhir.ee/sid/pid/iot #https://fhir.ee/sid/pid/iot/ppn "Passport number of British Indian Ocean Territory" "Briti India ookeani ala passinumber"
* #https://fhir.ee/sid/pid/iot #https://fhir.ee/sid/pid/iot/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/iot #https://fhir.ee/sid/pid/iot/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/iot #https://fhir.ee/sid/pid/iot/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/iot #https://fhir.ee/sid/pid/iot/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/iot #https://fhir.ee/sid/pid/iot/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/iot #https://fhir.ee/sid/pid/iot/ppn ^property[=].valueCode = #IOT
* #https://fhir.ee/sid/pid/iot #https://fhir.ee/sid/pid/iot/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/iot #https://fhir.ee/sid/pid/iot/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IOT"
* #https://fhir.ee/sid/pid/vgb "Root identifier for person identification of country Virgin Islands (British)" "Briti Neitsisaared identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/vgb ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/vgb ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/vgb ^property[+].code = #country
* #https://fhir.ee/sid/pid/vgb ^property[=].valueCode = #VGB
* #https://fhir.ee/sid/pid/vgb #https://fhir.ee/sid/pid/vgb/ppn "Passport number of Virgin Islands (British)" "Briti Neitsisaared passinumber"
* #https://fhir.ee/sid/pid/vgb #https://fhir.ee/sid/pid/vgb/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/vgb #https://fhir.ee/sid/pid/vgb/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/vgb #https://fhir.ee/sid/pid/vgb/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/vgb #https://fhir.ee/sid/pid/vgb/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/vgb #https://fhir.ee/sid/pid/vgb/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/vgb #https://fhir.ee/sid/pid/vgb/ppn ^property[=].valueCode = #VGB
* #https://fhir.ee/sid/pid/vgb #https://fhir.ee/sid/pid/vgb/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/vgb #https://fhir.ee/sid/pid/vgb/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VGB"
* #https://fhir.ee/sid/pid/brn "Root identifier for person identification of country Brunei Darussalam" "Brunei Darussalam identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/brn ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/brn ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/brn ^property[+].code = #country
* #https://fhir.ee/sid/pid/brn ^property[=].valueCode = #BRN
* #https://fhir.ee/sid/pid/brn #https://fhir.ee/sid/pid/brn/ppn "Passport number of Brunei Darussalam" "Brunei Darussalam passinumber"
* #https://fhir.ee/sid/pid/brn #https://fhir.ee/sid/pid/brn/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/brn #https://fhir.ee/sid/pid/brn/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/brn #https://fhir.ee/sid/pid/brn/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/brn #https://fhir.ee/sid/pid/brn/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/brn #https://fhir.ee/sid/pid/brn/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/brn #https://fhir.ee/sid/pid/brn/ppn ^property[=].valueCode = #BRN
* #https://fhir.ee/sid/pid/brn #https://fhir.ee/sid/pid/brn/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/brn #https://fhir.ee/sid/pid/brn/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BRN"
* #https://fhir.ee/sid/pid/bgr "Root identifier for person identification of country Bulgaria" "Bulgaaria identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/bgr ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/bgr ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/bgr ^property[+].code = #country
* #https://fhir.ee/sid/pid/bgr ^property[=].valueCode = #BGR
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/ppn "Passport number of Bulgaria" "Bulgaaria passinumber"
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/ppn ^property[=].valueCode = #BGR
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BGR"
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/ni "National identifier of Bulgaria" "Bulgaaria personaalne identifikaator"
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/ni ^property[=].valueCode = #BGR
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/cz "ID-card number of Bulgaria" "Bulgaaria ID-kaarti number"
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/cz ^property[=].valueCode = #BGR
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/dl "Driver's licence number of Bulgaria" "Bulgaaria juhiloa number"
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/bgr #https://fhir.ee/sid/pid/bgr/dl ^property[=].valueCode = #BGR
* #https://fhir.ee/sid/pid/bfa "Root identifier for person identification of country Burkina Faso" "Burkina Faso identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/bfa ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/bfa ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/bfa ^property[+].code = #country
* #https://fhir.ee/sid/pid/bfa ^property[=].valueCode = #BFA
* #https://fhir.ee/sid/pid/bfa #https://fhir.ee/sid/pid/bfa/ppn "Passport number of Burkina Faso" "Burkina Faso passinumber"
* #https://fhir.ee/sid/pid/bfa #https://fhir.ee/sid/pid/bfa/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bfa #https://fhir.ee/sid/pid/bfa/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/bfa #https://fhir.ee/sid/pid/bfa/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bfa #https://fhir.ee/sid/pid/bfa/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bfa #https://fhir.ee/sid/pid/bfa/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/bfa #https://fhir.ee/sid/pid/bfa/ppn ^property[=].valueCode = #BFA
* #https://fhir.ee/sid/pid/bfa #https://fhir.ee/sid/pid/bfa/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/bfa #https://fhir.ee/sid/pid/bfa/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BFA"
* #https://fhir.ee/sid/pid/bdi "Root identifier for person identification of country Burundi" "Burundi identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/bdi ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/bdi ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/bdi ^property[+].code = #country
* #https://fhir.ee/sid/pid/bdi ^property[=].valueCode = #BDI
* #https://fhir.ee/sid/pid/bdi #https://fhir.ee/sid/pid/bdi/ppn "Passport number of Burundi" "Burundi passinumber"
* #https://fhir.ee/sid/pid/bdi #https://fhir.ee/sid/pid/bdi/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/bdi #https://fhir.ee/sid/pid/bdi/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/bdi #https://fhir.ee/sid/pid/bdi/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/bdi #https://fhir.ee/sid/pid/bdi/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/bdi #https://fhir.ee/sid/pid/bdi/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/bdi #https://fhir.ee/sid/pid/bdi/ppn ^property[=].valueCode = #BDI
* #https://fhir.ee/sid/pid/bdi #https://fhir.ee/sid/pid/bdi/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/bdi #https://fhir.ee/sid/pid/bdi/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BDI"
* #https://fhir.ee/sid/pid/cpv "Root identifier for person identification of country Cape Verde" "Cabo Verde identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/cpv ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/cpv ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/cpv ^property[+].code = #country
* #https://fhir.ee/sid/pid/cpv ^property[=].valueCode = #CPV
* #https://fhir.ee/sid/pid/cpv #https://fhir.ee/sid/pid/cpv/ppn "Passport number of Cape Verde" "Cabo Verde passinumber"
* #https://fhir.ee/sid/pid/cpv #https://fhir.ee/sid/pid/cpv/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/cpv #https://fhir.ee/sid/pid/cpv/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/cpv #https://fhir.ee/sid/pid/cpv/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/cpv #https://fhir.ee/sid/pid/cpv/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/cpv #https://fhir.ee/sid/pid/cpv/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/cpv #https://fhir.ee/sid/pid/cpv/ppn ^property[=].valueCode = #CPV
* #https://fhir.ee/sid/pid/cpv #https://fhir.ee/sid/pid/cpv/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/cpv #https://fhir.ee/sid/pid/cpv/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CPV"
* #https://fhir.ee/sid/pid/col "Root identifier for person identification of country Colombia" "Colombia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/col ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/col ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/col ^property[+].code = #country
* #https://fhir.ee/sid/pid/col ^property[=].valueCode = #COL
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/ppn "Passport number of Colombia" "Colombia passinumber"
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/ppn ^property[=].valueCode = #COL
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-COL"
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/ni "National identifier of Colombia" "Colombia personaalne identifikaator"
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/ni ^property[=].valueCode = #COL
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/dl "Driver's licence number of Colombia" "Colombia juhiloa number"
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/col #https://fhir.ee/sid/pid/col/dl ^property[=].valueCode = #COL
* #https://fhir.ee/sid/pid/cok "Root identifier for person identification of country Cook Islands" "Cooki saared identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/cok ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/cok ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/cok ^property[+].code = #country
* #https://fhir.ee/sid/pid/cok ^property[=].valueCode = #COK
* #https://fhir.ee/sid/pid/cok #https://fhir.ee/sid/pid/cok/ppn "Passport number of Cook Islands" "Cooki saared passinumber"
* #https://fhir.ee/sid/pid/cok #https://fhir.ee/sid/pid/cok/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/cok #https://fhir.ee/sid/pid/cok/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/cok #https://fhir.ee/sid/pid/cok/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/cok #https://fhir.ee/sid/pid/cok/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/cok #https://fhir.ee/sid/pid/cok/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/cok #https://fhir.ee/sid/pid/cok/ppn ^property[=].valueCode = #COK
* #https://fhir.ee/sid/pid/cok #https://fhir.ee/sid/pid/cok/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/cok #https://fhir.ee/sid/pid/cok/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-COK"
* #https://fhir.ee/sid/pid/cri "Root identifier for person identification of country Costa Rica" "Costa Rica identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/cri ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/cri ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/cri ^property[+].code = #country
* #https://fhir.ee/sid/pid/cri ^property[=].valueCode = #CRI
* #https://fhir.ee/sid/pid/cri #https://fhir.ee/sid/pid/cri/ppn "Passport number of Costa Rica" "Costa Rica passinumber"
* #https://fhir.ee/sid/pid/cri #https://fhir.ee/sid/pid/cri/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/cri #https://fhir.ee/sid/pid/cri/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/cri #https://fhir.ee/sid/pid/cri/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/cri #https://fhir.ee/sid/pid/cri/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/cri #https://fhir.ee/sid/pid/cri/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/cri #https://fhir.ee/sid/pid/cri/ppn ^property[=].valueCode = #CRI
* #https://fhir.ee/sid/pid/cri #https://fhir.ee/sid/pid/cri/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/cri #https://fhir.ee/sid/pid/cri/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CRI"
* #https://fhir.ee/sid/pid/civ "Root identifier for person identification of country Cote d'Ivoire" "Cote d'Ivoire identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/civ ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/civ ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/civ ^property[+].code = #country
* #https://fhir.ee/sid/pid/civ ^property[=].valueCode = #CIV
* #https://fhir.ee/sid/pid/civ #https://fhir.ee/sid/pid/civ/ppn "Passport number of Cote d'Ivoire" "Cote d'Ivoire passinumber"
* #https://fhir.ee/sid/pid/civ #https://fhir.ee/sid/pid/civ/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/civ #https://fhir.ee/sid/pid/civ/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/civ #https://fhir.ee/sid/pid/civ/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/civ #https://fhir.ee/sid/pid/civ/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/civ #https://fhir.ee/sid/pid/civ/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/civ #https://fhir.ee/sid/pid/civ/ppn ^property[=].valueCode = #CIV
* #https://fhir.ee/sid/pid/civ #https://fhir.ee/sid/pid/civ/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/civ #https://fhir.ee/sid/pid/civ/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CIV"
* #https://fhir.ee/sid/pid/dji "Root identifier for person identification of country Djibouti" "Djibouti identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/dji ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/dji ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/dji ^property[+].code = #country
* #https://fhir.ee/sid/pid/dji ^property[=].valueCode = #DJI
* #https://fhir.ee/sid/pid/dji #https://fhir.ee/sid/pid/dji/ppn "Passport number of Djibouti" "Djibouti passinumber"
* #https://fhir.ee/sid/pid/dji #https://fhir.ee/sid/pid/dji/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/dji #https://fhir.ee/sid/pid/dji/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/dji #https://fhir.ee/sid/pid/dji/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/dji #https://fhir.ee/sid/pid/dji/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/dji #https://fhir.ee/sid/pid/dji/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/dji #https://fhir.ee/sid/pid/dji/ppn ^property[=].valueCode = #DJI
* #https://fhir.ee/sid/pid/dji #https://fhir.ee/sid/pid/dji/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/dji #https://fhir.ee/sid/pid/dji/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-DJI"
* #https://fhir.ee/sid/pid/dma "Root identifier for person identification of country Dominica" "Dominica identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/dma ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/dma ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/dma ^property[+].code = #country
* #https://fhir.ee/sid/pid/dma ^property[=].valueCode = #DMA
* #https://fhir.ee/sid/pid/dma #https://fhir.ee/sid/pid/dma/ppn "Passport number of Dominica" "Dominica passinumber"
* #https://fhir.ee/sid/pid/dma #https://fhir.ee/sid/pid/dma/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/dma #https://fhir.ee/sid/pid/dma/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/dma #https://fhir.ee/sid/pid/dma/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/dma #https://fhir.ee/sid/pid/dma/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/dma #https://fhir.ee/sid/pid/dma/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/dma #https://fhir.ee/sid/pid/dma/ppn ^property[=].valueCode = #DMA
* #https://fhir.ee/sid/pid/dma #https://fhir.ee/sid/pid/dma/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/dma #https://fhir.ee/sid/pid/dma/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-DMA"
* #https://fhir.ee/sid/pid/dom "Root identifier for person identification of country Dominican Republic" "Dominikaani Vabariik identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/dom ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/dom ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/dom ^property[+].code = #country
* #https://fhir.ee/sid/pid/dom ^property[=].valueCode = #DOM
* #https://fhir.ee/sid/pid/dom #https://fhir.ee/sid/pid/dom/ppn "Passport number of Dominican Republic" "Dominikaani Vabariik passinumber"
* #https://fhir.ee/sid/pid/dom #https://fhir.ee/sid/pid/dom/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/dom #https://fhir.ee/sid/pid/dom/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/dom #https://fhir.ee/sid/pid/dom/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/dom #https://fhir.ee/sid/pid/dom/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/dom #https://fhir.ee/sid/pid/dom/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/dom #https://fhir.ee/sid/pid/dom/ppn ^property[=].valueCode = #DOM
* #https://fhir.ee/sid/pid/dom #https://fhir.ee/sid/pid/dom/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/dom #https://fhir.ee/sid/pid/dom/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-DOM"
* #https://fhir.ee/sid/pid/ecu "Root identifier for person identification of country Ecuador" "Ecuador identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/ecu ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/ecu ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/ecu ^property[+].code = #country
* #https://fhir.ee/sid/pid/ecu ^property[=].valueCode = #ECU
* #https://fhir.ee/sid/pid/ecu #https://fhir.ee/sid/pid/ecu/ppn "Passport number of Ecuador" "Ecuador passinumber"
* #https://fhir.ee/sid/pid/ecu #https://fhir.ee/sid/pid/ecu/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ecu #https://fhir.ee/sid/pid/ecu/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/ecu #https://fhir.ee/sid/pid/ecu/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ecu #https://fhir.ee/sid/pid/ecu/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ecu #https://fhir.ee/sid/pid/ecu/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/ecu #https://fhir.ee/sid/pid/ecu/ppn ^property[=].valueCode = #ECU
* #https://fhir.ee/sid/pid/ecu #https://fhir.ee/sid/pid/ecu/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/ecu #https://fhir.ee/sid/pid/ecu/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ECU"
* #https://fhir.ee/sid/pid/egy "Root identifier for person identification of country Egypt" "Egiptus identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/egy ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/egy ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/egy ^property[+].code = #country
* #https://fhir.ee/sid/pid/egy ^property[=].valueCode = #EGY
* #https://fhir.ee/sid/pid/egy #https://fhir.ee/sid/pid/egy/ppn "Passport number of Egypt" "Egiptus passinumber"
* #https://fhir.ee/sid/pid/egy #https://fhir.ee/sid/pid/egy/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/egy #https://fhir.ee/sid/pid/egy/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/egy #https://fhir.ee/sid/pid/egy/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/egy #https://fhir.ee/sid/pid/egy/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/egy #https://fhir.ee/sid/pid/egy/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/egy #https://fhir.ee/sid/pid/egy/ppn ^property[=].valueCode = #EGY
* #https://fhir.ee/sid/pid/egy #https://fhir.ee/sid/pid/egy/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/egy #https://fhir.ee/sid/pid/egy/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-EGY"
* #https://fhir.ee/sid/pid/gnq "Root identifier for person identification of country Equatorial Guinea" "Ekvatoriaal-Guinea identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/gnq ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/gnq ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/gnq ^property[+].code = #country
* #https://fhir.ee/sid/pid/gnq ^property[=].valueCode = #GNQ
* #https://fhir.ee/sid/pid/gnq #https://fhir.ee/sid/pid/gnq/ppn "Passport number of Equatorial Guinea" "Ekvatoriaal-Guinea passinumber"
* #https://fhir.ee/sid/pid/gnq #https://fhir.ee/sid/pid/gnq/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/gnq #https://fhir.ee/sid/pid/gnq/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/gnq #https://fhir.ee/sid/pid/gnq/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/gnq #https://fhir.ee/sid/pid/gnq/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/gnq #https://fhir.ee/sid/pid/gnq/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/gnq #https://fhir.ee/sid/pid/gnq/ppn ^property[=].valueCode = #GNQ
* #https://fhir.ee/sid/pid/gnq #https://fhir.ee/sid/pid/gnq/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/gnq #https://fhir.ee/sid/pid/gnq/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GNQ"
* #https://fhir.ee/sid/pid/slv "Root identifier for person identification of country El Salvador" "El Salvador identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/slv ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/slv ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/slv ^property[+].code = #country
* #https://fhir.ee/sid/pid/slv ^property[=].valueCode = #SLV
* #https://fhir.ee/sid/pid/slv #https://fhir.ee/sid/pid/slv/ppn "Passport number of El Salvador" "El Salvador passinumber"
* #https://fhir.ee/sid/pid/slv #https://fhir.ee/sid/pid/slv/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/slv #https://fhir.ee/sid/pid/slv/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/slv #https://fhir.ee/sid/pid/slv/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/slv #https://fhir.ee/sid/pid/slv/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/slv #https://fhir.ee/sid/pid/slv/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/slv #https://fhir.ee/sid/pid/slv/ppn ^property[=].valueCode = #SLV
* #https://fhir.ee/sid/pid/slv #https://fhir.ee/sid/pid/slv/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/slv #https://fhir.ee/sid/pid/slv/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SLV"
* #https://fhir.ee/sid/pid/eri "Root identifier for person identification of country Eritrea" "Eritrea identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/eri ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/eri ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/eri ^property[+].code = #country
* #https://fhir.ee/sid/pid/eri ^property[=].valueCode = #ERI
* #https://fhir.ee/sid/pid/eri #https://fhir.ee/sid/pid/eri/ppn "Passport number of Eritrea" "Eritrea passinumber"
* #https://fhir.ee/sid/pid/eri #https://fhir.ee/sid/pid/eri/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/eri #https://fhir.ee/sid/pid/eri/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/eri #https://fhir.ee/sid/pid/eri/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/eri #https://fhir.ee/sid/pid/eri/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/eri #https://fhir.ee/sid/pid/eri/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/eri #https://fhir.ee/sid/pid/eri/ppn ^property[=].valueCode = #ERI
* #https://fhir.ee/sid/pid/eri #https://fhir.ee/sid/pid/eri/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/eri #https://fhir.ee/sid/pid/eri/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ERI"
* #https://fhir.ee/sid/pid/eth "Root identifier for person identification of country Ethiopia" "Etioopia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/eth ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/eth ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/eth ^property[+].code = #country
* #https://fhir.ee/sid/pid/eth ^property[=].valueCode = #ETH
* #https://fhir.ee/sid/pid/eth #https://fhir.ee/sid/pid/eth/ppn "Passport number of Ethiopia" "Etioopia passinumber"
* #https://fhir.ee/sid/pid/eth #https://fhir.ee/sid/pid/eth/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/eth #https://fhir.ee/sid/pid/eth/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/eth #https://fhir.ee/sid/pid/eth/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/eth #https://fhir.ee/sid/pid/eth/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/eth #https://fhir.ee/sid/pid/eth/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/eth #https://fhir.ee/sid/pid/eth/ppn ^property[=].valueCode = #ETH
* #https://fhir.ee/sid/pid/eth #https://fhir.ee/sid/pid/eth/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/eth #https://fhir.ee/sid/pid/eth/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ETH"
* #https://fhir.ee/sid/pid/flk "Root identifier for person identification of country Falkland Islands (Malvinas)" "Falklandi (Malviini) saared identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/flk ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/flk ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/flk ^property[+].code = #country
* #https://fhir.ee/sid/pid/flk ^property[=].valueCode = #FLK
* #https://fhir.ee/sid/pid/flk #https://fhir.ee/sid/pid/flk/ppn "Passport number of Falkland Islands (Malvinas)" "Falklandi (Malviini) saared passinumber"
* #https://fhir.ee/sid/pid/flk #https://fhir.ee/sid/pid/flk/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/flk #https://fhir.ee/sid/pid/flk/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/flk #https://fhir.ee/sid/pid/flk/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/flk #https://fhir.ee/sid/pid/flk/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/flk #https://fhir.ee/sid/pid/flk/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/flk #https://fhir.ee/sid/pid/flk/ppn ^property[=].valueCode = #FLK
* #https://fhir.ee/sid/pid/flk #https://fhir.ee/sid/pid/flk/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/flk #https://fhir.ee/sid/pid/flk/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-FLK"
* #https://fhir.ee/sid/pid/fji "Root identifier for person identification of country Fiji" "Fidži identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/fji ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/fji ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/fji ^property[+].code = #country
* #https://fhir.ee/sid/pid/fji ^property[=].valueCode = #FJI
* #https://fhir.ee/sid/pid/fji #https://fhir.ee/sid/pid/fji/ppn "Passport number of Fiji" "Fidži passinumber"
* #https://fhir.ee/sid/pid/fji #https://fhir.ee/sid/pid/fji/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/fji #https://fhir.ee/sid/pid/fji/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/fji #https://fhir.ee/sid/pid/fji/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/fji #https://fhir.ee/sid/pid/fji/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/fji #https://fhir.ee/sid/pid/fji/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/fji #https://fhir.ee/sid/pid/fji/ppn ^property[=].valueCode = #FJI
* #https://fhir.ee/sid/pid/fji #https://fhir.ee/sid/pid/fji/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/fji #https://fhir.ee/sid/pid/fji/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-FJI"
* #https://fhir.ee/sid/pid/phl "Root identifier for person identification of country Philippines" "Filipiinid identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/phl ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/phl ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/phl ^property[+].code = #country
* #https://fhir.ee/sid/pid/phl ^property[=].valueCode = #PHL
* #https://fhir.ee/sid/pid/phl #https://fhir.ee/sid/pid/phl/ppn "Passport number of Philippines" "Filipiinid passinumber"
* #https://fhir.ee/sid/pid/phl #https://fhir.ee/sid/pid/phl/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/phl #https://fhir.ee/sid/pid/phl/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/phl #https://fhir.ee/sid/pid/phl/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/phl #https://fhir.ee/sid/pid/phl/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/phl #https://fhir.ee/sid/pid/phl/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/phl #https://fhir.ee/sid/pid/phl/ppn ^property[=].valueCode = #PHL
* #https://fhir.ee/sid/pid/phl #https://fhir.ee/sid/pid/phl/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/phl #https://fhir.ee/sid/pid/phl/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PHL"
* #https://fhir.ee/sid/pid/fro "Root identifier for person identification of country Faroe Islands" "Fääri saared identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/fro ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/fro ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/fro ^property[+].code = #country
* #https://fhir.ee/sid/pid/fro ^property[=].valueCode = #FRO
* #https://fhir.ee/sid/pid/fro #https://fhir.ee/sid/pid/fro/ppn "Passport number of Faroe Islands" "Fääri saared passinumber"
* #https://fhir.ee/sid/pid/fro #https://fhir.ee/sid/pid/fro/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/fro #https://fhir.ee/sid/pid/fro/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/fro #https://fhir.ee/sid/pid/fro/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/fro #https://fhir.ee/sid/pid/fro/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/fro #https://fhir.ee/sid/pid/fro/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/fro #https://fhir.ee/sid/pid/fro/ppn ^property[=].valueCode = #FRO
* #https://fhir.ee/sid/pid/fro #https://fhir.ee/sid/pid/fro/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/fro #https://fhir.ee/sid/pid/fro/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-FRO"
* #https://fhir.ee/sid/pid/gab "Root identifier for person identification of country Gabon" "Gabon identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/gab ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/gab ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/gab ^property[+].code = #country
* #https://fhir.ee/sid/pid/gab ^property[=].valueCode = #GAB
* #https://fhir.ee/sid/pid/gab #https://fhir.ee/sid/pid/gab/ppn "Passport number of Gabon" "Gabon passinumber"
* #https://fhir.ee/sid/pid/gab #https://fhir.ee/sid/pid/gab/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/gab #https://fhir.ee/sid/pid/gab/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/gab #https://fhir.ee/sid/pid/gab/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/gab #https://fhir.ee/sid/pid/gab/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/gab #https://fhir.ee/sid/pid/gab/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/gab #https://fhir.ee/sid/pid/gab/ppn ^property[=].valueCode = #GAB
* #https://fhir.ee/sid/pid/gab #https://fhir.ee/sid/pid/gab/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/gab #https://fhir.ee/sid/pid/gab/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GAB"
* #https://fhir.ee/sid/pid/gmb "Root identifier for person identification of country Gambia" "Gambia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/gmb ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/gmb ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/gmb ^property[+].code = #country
* #https://fhir.ee/sid/pid/gmb ^property[=].valueCode = #GMB
* #https://fhir.ee/sid/pid/gmb #https://fhir.ee/sid/pid/gmb/ppn "Passport number of Gambia" "Gambia passinumber"
* #https://fhir.ee/sid/pid/gmb #https://fhir.ee/sid/pid/gmb/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/gmb #https://fhir.ee/sid/pid/gmb/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/gmb #https://fhir.ee/sid/pid/gmb/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/gmb #https://fhir.ee/sid/pid/gmb/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/gmb #https://fhir.ee/sid/pid/gmb/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/gmb #https://fhir.ee/sid/pid/gmb/ppn ^property[=].valueCode = #GMB
* #https://fhir.ee/sid/pid/gmb #https://fhir.ee/sid/pid/gmb/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/gmb #https://fhir.ee/sid/pid/gmb/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GMB"
* #https://fhir.ee/sid/pid/gha "Root identifier for person identification of country Ghana" "Ghana identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/gha ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/gha ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/gha ^property[+].code = #country
* #https://fhir.ee/sid/pid/gha ^property[=].valueCode = #GHA
* #https://fhir.ee/sid/pid/gha #https://fhir.ee/sid/pid/gha/ppn "Passport number of Ghana" "Ghana passinumber"
* #https://fhir.ee/sid/pid/gha #https://fhir.ee/sid/pid/gha/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/gha #https://fhir.ee/sid/pid/gha/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/gha #https://fhir.ee/sid/pid/gha/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/gha #https://fhir.ee/sid/pid/gha/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/gha #https://fhir.ee/sid/pid/gha/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/gha #https://fhir.ee/sid/pid/gha/ppn ^property[=].valueCode = #GHA
* #https://fhir.ee/sid/pid/gha #https://fhir.ee/sid/pid/gha/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/gha #https://fhir.ee/sid/pid/gha/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GHA"
* #https://fhir.ee/sid/pid/gib "Root identifier for person identification of country Gibraltar" "Gibraltar identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/gib ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/gib ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/gib ^property[+].code = #country
* #https://fhir.ee/sid/pid/gib ^property[=].valueCode = #GIB
* #https://fhir.ee/sid/pid/gib #https://fhir.ee/sid/pid/gib/ppn "Passport number of Gibraltar" "Gibraltar passinumber"
* #https://fhir.ee/sid/pid/gib #https://fhir.ee/sid/pid/gib/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/gib #https://fhir.ee/sid/pid/gib/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/gib #https://fhir.ee/sid/pid/gib/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/gib #https://fhir.ee/sid/pid/gib/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/gib #https://fhir.ee/sid/pid/gib/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/gib #https://fhir.ee/sid/pid/gib/ppn ^property[=].valueCode = #GIB
* #https://fhir.ee/sid/pid/gib #https://fhir.ee/sid/pid/gib/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/gib #https://fhir.ee/sid/pid/gib/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GIB"
* #https://fhir.ee/sid/pid/grd "Root identifier for person identification of country Grenada" "Grenada identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/grd ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/grd ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/grd ^property[+].code = #country
* #https://fhir.ee/sid/pid/grd ^property[=].valueCode = #GRD
* #https://fhir.ee/sid/pid/grd #https://fhir.ee/sid/pid/grd/ppn "Passport number of Grenada" "Grenada passinumber"
* #https://fhir.ee/sid/pid/grd #https://fhir.ee/sid/pid/grd/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/grd #https://fhir.ee/sid/pid/grd/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/grd #https://fhir.ee/sid/pid/grd/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/grd #https://fhir.ee/sid/pid/grd/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/grd #https://fhir.ee/sid/pid/grd/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/grd #https://fhir.ee/sid/pid/grd/ppn ^property[=].valueCode = #GRD
* #https://fhir.ee/sid/pid/grd #https://fhir.ee/sid/pid/grd/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/grd #https://fhir.ee/sid/pid/grd/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GRD"
* #https://fhir.ee/sid/pid/geo "Root identifier for person identification of country Georgia" "Gruusia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/geo ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/geo ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/geo ^property[+].code = #country
* #https://fhir.ee/sid/pid/geo ^property[=].valueCode = #GEO
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/ppn "Passport number of Georgia" "Gruusia passinumber"
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/ppn ^property[=].valueCode = #GEO
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GEO"
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/ni "National identifier of Georgia" "Gruusia personaalne identifikaator"
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/ni ^property[=].valueCode = #GEO
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/cz "ID-card number of Georgia" "Gruusia ID-kaarti number"
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/cz ^property[=].valueCode = #GEO
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/dl "Driver's licence number of Georgia" "Gruusia juhiloa number"
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/geo #https://fhir.ee/sid/pid/geo/dl ^property[=].valueCode = #GEO
* #https://fhir.ee/sid/pid/grl "Root identifier for person identification of country Greenland" "Gröönimaa identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/grl ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/grl ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/grl ^property[+].code = #country
* #https://fhir.ee/sid/pid/grl ^property[=].valueCode = #GRL
* #https://fhir.ee/sid/pid/grl #https://fhir.ee/sid/pid/grl/ppn "Passport number of Greenland" "Gröönimaa passinumber"
* #https://fhir.ee/sid/pid/grl #https://fhir.ee/sid/pid/grl/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/grl #https://fhir.ee/sid/pid/grl/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/grl #https://fhir.ee/sid/pid/grl/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/grl #https://fhir.ee/sid/pid/grl/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/grl #https://fhir.ee/sid/pid/grl/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/grl #https://fhir.ee/sid/pid/grl/ppn ^property[=].valueCode = #GRL
* #https://fhir.ee/sid/pid/grl #https://fhir.ee/sid/pid/grl/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/grl #https://fhir.ee/sid/pid/grl/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GRL"
* #https://fhir.ee/sid/pid/glp "Root identifier for person identification of country Guadeloupe" "Guadeloupe identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/glp ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/glp ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/glp ^property[+].code = #country
* #https://fhir.ee/sid/pid/glp ^property[=].valueCode = #GLP
* #https://fhir.ee/sid/pid/glp #https://fhir.ee/sid/pid/glp/ppn "Passport number of Guadeloupe" "Guadeloupe passinumber"
* #https://fhir.ee/sid/pid/glp #https://fhir.ee/sid/pid/glp/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/glp #https://fhir.ee/sid/pid/glp/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/glp #https://fhir.ee/sid/pid/glp/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/glp #https://fhir.ee/sid/pid/glp/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/glp #https://fhir.ee/sid/pid/glp/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/glp #https://fhir.ee/sid/pid/glp/ppn ^property[=].valueCode = #GLP
* #https://fhir.ee/sid/pid/glp #https://fhir.ee/sid/pid/glp/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/glp #https://fhir.ee/sid/pid/glp/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GLP"
* #https://fhir.ee/sid/pid/guf "Root identifier for person identification of country French Guiana" "Prantsuse Guajaana identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/guf ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/guf ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/guf ^property[+].code = #country
* #https://fhir.ee/sid/pid/guf ^property[=].valueCode = #GUF
* #https://fhir.ee/sid/pid/guf #https://fhir.ee/sid/pid/guf/ppn "Passport number of French Guiana" "Prantsuse Guajaana passinumber"
* #https://fhir.ee/sid/pid/guf #https://fhir.ee/sid/pid/guf/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/guf #https://fhir.ee/sid/pid/guf/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/guf #https://fhir.ee/sid/pid/guf/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/guf #https://fhir.ee/sid/pid/guf/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/guf #https://fhir.ee/sid/pid/guf/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/guf #https://fhir.ee/sid/pid/guf/ppn ^property[=].valueCode = #GUF
* #https://fhir.ee/sid/pid/guf #https://fhir.ee/sid/pid/guf/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/guf #https://fhir.ee/sid/pid/guf/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GUF"
* #https://fhir.ee/sid/pid/gum "Root identifier for person identification of country Guam" "Guam identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/gum ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/gum ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/gum ^property[+].code = #country
* #https://fhir.ee/sid/pid/gum ^property[=].valueCode = #GUM
* #https://fhir.ee/sid/pid/gum #https://fhir.ee/sid/pid/gum/ppn "Passport number of Guam" "Guam passinumber"
* #https://fhir.ee/sid/pid/gum #https://fhir.ee/sid/pid/gum/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/gum #https://fhir.ee/sid/pid/gum/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/gum #https://fhir.ee/sid/pid/gum/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/gum #https://fhir.ee/sid/pid/gum/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/gum #https://fhir.ee/sid/pid/gum/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/gum #https://fhir.ee/sid/pid/gum/ppn ^property[=].valueCode = #GUM
* #https://fhir.ee/sid/pid/gum #https://fhir.ee/sid/pid/gum/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/gum #https://fhir.ee/sid/pid/gum/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GUM"
* #https://fhir.ee/sid/pid/gtm "Root identifier for person identification of country Guatemala" "Guatemala identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/gtm ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/gtm ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/gtm ^property[+].code = #country
* #https://fhir.ee/sid/pid/gtm ^property[=].valueCode = #GTM
* #https://fhir.ee/sid/pid/gtm #https://fhir.ee/sid/pid/gtm/ppn "Passport number of Guatemala" "Guatemala passinumber"
* #https://fhir.ee/sid/pid/gtm #https://fhir.ee/sid/pid/gtm/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/gtm #https://fhir.ee/sid/pid/gtm/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/gtm #https://fhir.ee/sid/pid/gtm/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/gtm #https://fhir.ee/sid/pid/gtm/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/gtm #https://fhir.ee/sid/pid/gtm/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/gtm #https://fhir.ee/sid/pid/gtm/ppn ^property[=].valueCode = #GTM
* #https://fhir.ee/sid/pid/gtm #https://fhir.ee/sid/pid/gtm/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/gtm #https://fhir.ee/sid/pid/gtm/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GTM"
* #https://fhir.ee/sid/pid/ggy "Root identifier for person identification of country Guernsey" "Guernsey identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/ggy ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/ggy ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/ggy ^property[+].code = #country
* #https://fhir.ee/sid/pid/ggy ^property[=].valueCode = #GGY
* #https://fhir.ee/sid/pid/ggy #https://fhir.ee/sid/pid/ggy/ppn "Passport number of Guernsey" "Guernsey passinumber"
* #https://fhir.ee/sid/pid/ggy #https://fhir.ee/sid/pid/ggy/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ggy #https://fhir.ee/sid/pid/ggy/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/ggy #https://fhir.ee/sid/pid/ggy/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ggy #https://fhir.ee/sid/pid/ggy/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ggy #https://fhir.ee/sid/pid/ggy/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/ggy #https://fhir.ee/sid/pid/ggy/ppn ^property[=].valueCode = #GGY
* #https://fhir.ee/sid/pid/ggy #https://fhir.ee/sid/pid/ggy/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/ggy #https://fhir.ee/sid/pid/ggy/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GGY"
* #https://fhir.ee/sid/pid/gin "Root identifier for person identification of country Guinea" "Guinea identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/gin ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/gin ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/gin ^property[+].code = #country
* #https://fhir.ee/sid/pid/gin ^property[=].valueCode = #GIN
* #https://fhir.ee/sid/pid/gin #https://fhir.ee/sid/pid/gin/ppn "Passport number of Guinea" "Guinea passinumber"
* #https://fhir.ee/sid/pid/gin #https://fhir.ee/sid/pid/gin/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/gin #https://fhir.ee/sid/pid/gin/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/gin #https://fhir.ee/sid/pid/gin/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/gin #https://fhir.ee/sid/pid/gin/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/gin #https://fhir.ee/sid/pid/gin/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/gin #https://fhir.ee/sid/pid/gin/ppn ^property[=].valueCode = #GIN
* #https://fhir.ee/sid/pid/gin #https://fhir.ee/sid/pid/gin/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/gin #https://fhir.ee/sid/pid/gin/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GIN"
* #https://fhir.ee/sid/pid/gnb "Root identifier for person identification of country Guinea-Bissau" "Guinea-Bissau identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/gnb ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/gnb ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/gnb ^property[+].code = #country
* #https://fhir.ee/sid/pid/gnb ^property[=].valueCode = #GNB
* #https://fhir.ee/sid/pid/gnb #https://fhir.ee/sid/pid/gnb/ppn "Passport number of Guinea-Bissau" "Guinea-Bissau passinumber"
* #https://fhir.ee/sid/pid/gnb #https://fhir.ee/sid/pid/gnb/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/gnb #https://fhir.ee/sid/pid/gnb/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/gnb #https://fhir.ee/sid/pid/gnb/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/gnb #https://fhir.ee/sid/pid/gnb/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/gnb #https://fhir.ee/sid/pid/gnb/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/gnb #https://fhir.ee/sid/pid/gnb/ppn ^property[=].valueCode = #GNB
* #https://fhir.ee/sid/pid/gnb #https://fhir.ee/sid/pid/gnb/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/gnb #https://fhir.ee/sid/pid/gnb/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GNB"
* #https://fhir.ee/sid/pid/guy "Root identifier for person identification of country Guyana" "Guyana identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/guy ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/guy ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/guy ^property[+].code = #country
* #https://fhir.ee/sid/pid/guy ^property[=].valueCode = #GUY
* #https://fhir.ee/sid/pid/guy #https://fhir.ee/sid/pid/guy/ppn "Passport number of Guyana" "Guyana passinumber"
* #https://fhir.ee/sid/pid/guy #https://fhir.ee/sid/pid/guy/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/guy #https://fhir.ee/sid/pid/guy/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/guy #https://fhir.ee/sid/pid/guy/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/guy #https://fhir.ee/sid/pid/guy/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/guy #https://fhir.ee/sid/pid/guy/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/guy #https://fhir.ee/sid/pid/guy/ppn ^property[=].valueCode = #GUY
* #https://fhir.ee/sid/pid/guy #https://fhir.ee/sid/pid/guy/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/guy #https://fhir.ee/sid/pid/guy/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GUY"
* #https://fhir.ee/sid/pid/hti "Root identifier for person identification of country Haiti" "Haiti identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/hti ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/hti ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/hti ^property[+].code = #country
* #https://fhir.ee/sid/pid/hti ^property[=].valueCode = #HTI
* #https://fhir.ee/sid/pid/hti #https://fhir.ee/sid/pid/hti/ppn "Passport number of Haiti" "Haiti passinumber"
* #https://fhir.ee/sid/pid/hti #https://fhir.ee/sid/pid/hti/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/hti #https://fhir.ee/sid/pid/hti/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/hti #https://fhir.ee/sid/pid/hti/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/hti #https://fhir.ee/sid/pid/hti/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/hti #https://fhir.ee/sid/pid/hti/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/hti #https://fhir.ee/sid/pid/hti/ppn ^property[=].valueCode = #HTI
* #https://fhir.ee/sid/pid/hti #https://fhir.ee/sid/pid/hti/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/hti #https://fhir.ee/sid/pid/hti/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-HTI"
* #https://fhir.ee/sid/pid/hmd "Root identifier for person identification of country Heard and McDonald Islands" "Heard ja McDonald identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/hmd ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/hmd ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/hmd ^property[+].code = #country
* #https://fhir.ee/sid/pid/hmd ^property[=].valueCode = #HMD
* #https://fhir.ee/sid/pid/hmd #https://fhir.ee/sid/pid/hmd/ppn "Passport number of Heard and McDonald Islands" "Heard ja McDonald passinumber"
* #https://fhir.ee/sid/pid/hmd #https://fhir.ee/sid/pid/hmd/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/hmd #https://fhir.ee/sid/pid/hmd/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/hmd #https://fhir.ee/sid/pid/hmd/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/hmd #https://fhir.ee/sid/pid/hmd/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/hmd #https://fhir.ee/sid/pid/hmd/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/hmd #https://fhir.ee/sid/pid/hmd/ppn ^property[=].valueCode = #HMD
* #https://fhir.ee/sid/pid/hmd #https://fhir.ee/sid/pid/hmd/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/hmd #https://fhir.ee/sid/pid/hmd/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-HMD"
* #https://fhir.ee/sid/pid/mac "Root identifier for person identification of country Macao" "Aomen identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/mac ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/mac ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/mac ^property[+].code = #country
* #https://fhir.ee/sid/pid/mac ^property[=].valueCode = #MAC
* #https://fhir.ee/sid/pid/mac #https://fhir.ee/sid/pid/mac/ppn "Passport number of Macao" "Aomen passinumber"
* #https://fhir.ee/sid/pid/mac #https://fhir.ee/sid/pid/mac/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mac #https://fhir.ee/sid/pid/mac/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/mac #https://fhir.ee/sid/pid/mac/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mac #https://fhir.ee/sid/pid/mac/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mac #https://fhir.ee/sid/pid/mac/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/mac #https://fhir.ee/sid/pid/mac/ppn ^property[=].valueCode = #MAC
* #https://fhir.ee/sid/pid/mac #https://fhir.ee/sid/pid/mac/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/mac #https://fhir.ee/sid/pid/mac/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MAC"
* #https://fhir.ee/sid/pid/mac #https://fhir.ee/sid/pid/mac/ni "National identifier of Macao" "Aomen personaalne identifikaator"
* #https://fhir.ee/sid/pid/mac #https://fhir.ee/sid/pid/mac/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mac #https://fhir.ee/sid/pid/mac/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/mac #https://fhir.ee/sid/pid/mac/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mac #https://fhir.ee/sid/pid/mac/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mac #https://fhir.ee/sid/pid/mac/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/mac #https://fhir.ee/sid/pid/mac/ni ^property[=].valueCode = #MAC
* #https://fhir.ee/sid/pid/hkg "Root identifier for person identification of country Hong Kong" "Hongkong identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/hkg ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/hkg ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/hkg ^property[+].code = #country
* #https://fhir.ee/sid/pid/hkg ^property[=].valueCode = #HKG
* #https://fhir.ee/sid/pid/hkg #https://fhir.ee/sid/pid/hkg/ppn "Passport number of Hong Kong" "Hongkong passinumber"
* #https://fhir.ee/sid/pid/hkg #https://fhir.ee/sid/pid/hkg/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/hkg #https://fhir.ee/sid/pid/hkg/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/hkg #https://fhir.ee/sid/pid/hkg/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/hkg #https://fhir.ee/sid/pid/hkg/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/hkg #https://fhir.ee/sid/pid/hkg/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/hkg #https://fhir.ee/sid/pid/hkg/ppn ^property[=].valueCode = #HKG
* #https://fhir.ee/sid/pid/hkg #https://fhir.ee/sid/pid/hkg/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/hkg #https://fhir.ee/sid/pid/hkg/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-HKG"
* #https://fhir.ee/sid/pid/hkg #https://fhir.ee/sid/pid/hkg/ni "National identifier of Hong Kong" "Hongkong personaalne identifikaator"
* #https://fhir.ee/sid/pid/hkg #https://fhir.ee/sid/pid/hkg/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/hkg #https://fhir.ee/sid/pid/hkg/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/hkg #https://fhir.ee/sid/pid/hkg/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/hkg #https://fhir.ee/sid/pid/hkg/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/hkg #https://fhir.ee/sid/pid/hkg/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/hkg #https://fhir.ee/sid/pid/hkg/ni ^property[=].valueCode = #HKG
* #https://fhir.ee/sid/pid/chn "Root identifier for person identification of country China" "Hiina identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/chn ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/chn ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/chn ^property[+].code = #country
* #https://fhir.ee/sid/pid/chn ^property[=].valueCode = #CHN
* #https://fhir.ee/sid/pid/chn #https://fhir.ee/sid/pid/chn/ppn "Passport number of China" "Hiina passinumber"
* #https://fhir.ee/sid/pid/chn #https://fhir.ee/sid/pid/chn/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/chn #https://fhir.ee/sid/pid/chn/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/chn #https://fhir.ee/sid/pid/chn/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/chn #https://fhir.ee/sid/pid/chn/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/chn #https://fhir.ee/sid/pid/chn/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/chn #https://fhir.ee/sid/pid/chn/ppn ^property[=].valueCode = #CHN
* #https://fhir.ee/sid/pid/chn #https://fhir.ee/sid/pid/chn/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/chn #https://fhir.ee/sid/pid/chn/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CHN"
* #https://fhir.ee/sid/pid/chn #https://fhir.ee/sid/pid/chn/ni "National identifier of China" "Hiina personaalne identifikaator"
* #https://fhir.ee/sid/pid/chn #https://fhir.ee/sid/pid/chn/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/chn #https://fhir.ee/sid/pid/chn/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/chn #https://fhir.ee/sid/pid/chn/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/chn #https://fhir.ee/sid/pid/chn/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/chn #https://fhir.ee/sid/pid/chn/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/chn #https://fhir.ee/sid/pid/chn/ni ^property[=].valueCode = #CHN
* #https://fhir.ee/sid/pid/esp "Root identifier for person identification of country Spain" "Hispaania identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/esp ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/esp ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/esp ^property[+].code = #country
* #https://fhir.ee/sid/pid/esp ^property[=].valueCode = #ESP
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/ppn "Passport number of Spain" "Hispaania passinumber"
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/ppn ^property[=].valueCode = #ESP
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ESP"
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/ni "National identifier of Spain" "Hispaania personaalne identifikaator"
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/ni ^property[=].valueCode = #ESP
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/cz "ID-card number of Spain" "Hispaania ID-kaarti number"
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/cz ^property[=].valueCode = #ESP
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/dl "Driver's licence number of Spain" "Hispaania juhiloa number"
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/esp #https://fhir.ee/sid/pid/esp/dl ^property[=].valueCode = #ESP
* #https://fhir.ee/sid/pid/ant "Root identifier for person identification of country Netherlands Antilles" "Hollandi Antillid identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/ant ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/ant ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/ant ^property[+].code = #country
* #https://fhir.ee/sid/pid/ant ^property[=].valueCode = #ANT
* #https://fhir.ee/sid/pid/ant #https://fhir.ee/sid/pid/ant/ppn "Passport number of Netherlands Antilles" "Hollandi Antillid passinumber"
* #https://fhir.ee/sid/pid/ant #https://fhir.ee/sid/pid/ant/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ant #https://fhir.ee/sid/pid/ant/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/ant #https://fhir.ee/sid/pid/ant/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ant #https://fhir.ee/sid/pid/ant/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ant #https://fhir.ee/sid/pid/ant/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/ant #https://fhir.ee/sid/pid/ant/ppn ^property[=].valueCode = #ANT
* #https://fhir.ee/sid/pid/ant #https://fhir.ee/sid/pid/ant/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/ant #https://fhir.ee/sid/pid/ant/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ANT"
* #https://fhir.ee/sid/pid/hnd "Root identifier for person identification of country Honduras" "Honduras identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/hnd ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/hnd ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/hnd ^property[+].code = #country
* #https://fhir.ee/sid/pid/hnd ^property[=].valueCode = #HND
* #https://fhir.ee/sid/pid/hnd #https://fhir.ee/sid/pid/hnd/ppn "Passport number of Honduras" "Honduras passinumber"
* #https://fhir.ee/sid/pid/hnd #https://fhir.ee/sid/pid/hnd/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/hnd #https://fhir.ee/sid/pid/hnd/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/hnd #https://fhir.ee/sid/pid/hnd/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/hnd #https://fhir.ee/sid/pid/hnd/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/hnd #https://fhir.ee/sid/pid/hnd/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/hnd #https://fhir.ee/sid/pid/hnd/ppn ^property[=].valueCode = #HND
* #https://fhir.ee/sid/pid/hnd #https://fhir.ee/sid/pid/hnd/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/hnd #https://fhir.ee/sid/pid/hnd/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-HND"
* #https://fhir.ee/sid/pid/hrv "Root identifier for person identification of country Croatia" "Horvaatia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/hrv ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/hrv ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/hrv ^property[+].code = #country
* #https://fhir.ee/sid/pid/hrv ^property[=].valueCode = #HRV
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/ppn "Passport number of Croatia" "Horvaatia passinumber"
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/ppn ^property[=].valueCode = #HRV
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-HRV"
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/ni "National identifier of Croatia" "Horvaatia personaalne identifikaator"
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/ni ^property[=].valueCode = #HRV
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/cz "ID-card number of Croatia" "Horvaatia ID-kaarti number"
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/cz ^property[=].valueCode = #HRV
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/dl "Driver's licence number of Croatia" "Horvaatia juhiloa number"
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/hrv #https://fhir.ee/sid/pid/hrv/dl ^property[=].valueCode = #HRV
* #https://fhir.ee/sid/pid/irl "Root identifier for person identification of country Ireland" "Iirimaa identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/irl ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/irl ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/irl ^property[+].code = #country
* #https://fhir.ee/sid/pid/irl ^property[=].valueCode = #IRL
* #https://fhir.ee/sid/pid/irl #https://fhir.ee/sid/pid/irl/ppn "Passport number of Ireland" "Iirimaa passinumber"
* #https://fhir.ee/sid/pid/irl #https://fhir.ee/sid/pid/irl/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/irl #https://fhir.ee/sid/pid/irl/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/irl #https://fhir.ee/sid/pid/irl/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/irl #https://fhir.ee/sid/pid/irl/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/irl #https://fhir.ee/sid/pid/irl/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/irl #https://fhir.ee/sid/pid/irl/ppn ^property[=].valueCode = #IRL
* #https://fhir.ee/sid/pid/irl #https://fhir.ee/sid/pid/irl/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/irl #https://fhir.ee/sid/pid/irl/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IRL"
* #https://fhir.ee/sid/pid/isr "Root identifier for person identification of country Israel" "Iisrael identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/isr ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/isr ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/isr ^property[+].code = #country
* #https://fhir.ee/sid/pid/isr ^property[=].valueCode = #ISR
* #https://fhir.ee/sid/pid/isr #https://fhir.ee/sid/pid/isr/ppn "Passport number of Israel" "Iisrael passinumber"
* #https://fhir.ee/sid/pid/isr #https://fhir.ee/sid/pid/isr/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/isr #https://fhir.ee/sid/pid/isr/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/isr #https://fhir.ee/sid/pid/isr/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/isr #https://fhir.ee/sid/pid/isr/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/isr #https://fhir.ee/sid/pid/isr/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/isr #https://fhir.ee/sid/pid/isr/ppn ^property[=].valueCode = #ISR
* #https://fhir.ee/sid/pid/isr #https://fhir.ee/sid/pid/isr/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/isr #https://fhir.ee/sid/pid/isr/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ISR"
* #https://fhir.ee/sid/pid/isr #https://fhir.ee/sid/pid/isr/ni "National identifier of Israel" "Iisrael personaalne identifikaator"
* #https://fhir.ee/sid/pid/isr #https://fhir.ee/sid/pid/isr/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/isr #https://fhir.ee/sid/pid/isr/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/isr #https://fhir.ee/sid/pid/isr/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/isr #https://fhir.ee/sid/pid/isr/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/isr #https://fhir.ee/sid/pid/isr/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/isr #https://fhir.ee/sid/pid/isr/ni ^property[=].valueCode = #ISR
* #https://fhir.ee/sid/pid/ind "Root identifier for person identification of country India" "India identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/ind ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/ind ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/ind ^property[+].code = #country
* #https://fhir.ee/sid/pid/ind ^property[=].valueCode = #IND
* #https://fhir.ee/sid/pid/ind #https://fhir.ee/sid/pid/ind/ppn "Passport number of India" "India passinumber"
* #https://fhir.ee/sid/pid/ind #https://fhir.ee/sid/pid/ind/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ind #https://fhir.ee/sid/pid/ind/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/ind #https://fhir.ee/sid/pid/ind/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ind #https://fhir.ee/sid/pid/ind/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ind #https://fhir.ee/sid/pid/ind/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/ind #https://fhir.ee/sid/pid/ind/ppn ^property[=].valueCode = #IND
* #https://fhir.ee/sid/pid/ind #https://fhir.ee/sid/pid/ind/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/ind #https://fhir.ee/sid/pid/ind/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IND"
* #https://fhir.ee/sid/pid/idn "Root identifier for person identification of country Indonesia" "Indoneesia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/idn ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/idn ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/idn ^property[+].code = #country
* #https://fhir.ee/sid/pid/idn ^property[=].valueCode = #IDN
* #https://fhir.ee/sid/pid/idn #https://fhir.ee/sid/pid/idn/ppn "Passport number of Indonesia" "Indoneesia passinumber"
* #https://fhir.ee/sid/pid/idn #https://fhir.ee/sid/pid/idn/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/idn #https://fhir.ee/sid/pid/idn/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/idn #https://fhir.ee/sid/pid/idn/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/idn #https://fhir.ee/sid/pid/idn/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/idn #https://fhir.ee/sid/pid/idn/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/idn #https://fhir.ee/sid/pid/idn/ppn ^property[=].valueCode = #IDN
* #https://fhir.ee/sid/pid/idn #https://fhir.ee/sid/pid/idn/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/idn #https://fhir.ee/sid/pid/idn/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IDN"
* #https://fhir.ee/sid/pid/idn #https://fhir.ee/sid/pid/idn/ni "National identifier of Indonesia" "Indoneesia personaalne identifikaator"
* #https://fhir.ee/sid/pid/idn #https://fhir.ee/sid/pid/idn/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/idn #https://fhir.ee/sid/pid/idn/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/idn #https://fhir.ee/sid/pid/idn/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/idn #https://fhir.ee/sid/pid/idn/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/idn #https://fhir.ee/sid/pid/idn/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/idn #https://fhir.ee/sid/pid/idn/ni ^property[=].valueCode = #IDN
* #https://fhir.ee/sid/pid/irq "Root identifier for person identification of country Iraq" "Iraak identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/irq ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/irq ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/irq ^property[+].code = #country
* #https://fhir.ee/sid/pid/irq ^property[=].valueCode = #IRQ
* #https://fhir.ee/sid/pid/irq #https://fhir.ee/sid/pid/irq/ppn "Passport number of Iraq" "Iraak passinumber"
* #https://fhir.ee/sid/pid/irq #https://fhir.ee/sid/pid/irq/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/irq #https://fhir.ee/sid/pid/irq/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/irq #https://fhir.ee/sid/pid/irq/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/irq #https://fhir.ee/sid/pid/irq/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/irq #https://fhir.ee/sid/pid/irq/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/irq #https://fhir.ee/sid/pid/irq/ppn ^property[=].valueCode = #IRQ
* #https://fhir.ee/sid/pid/irq #https://fhir.ee/sid/pid/irq/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/irq #https://fhir.ee/sid/pid/irq/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IRQ"
* #https://fhir.ee/sid/pid/irn "Root identifier for person identification of country Iran" "Iraan identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/irn ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/irn ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/irn ^property[+].code = #country
* #https://fhir.ee/sid/pid/irn ^property[=].valueCode = #IRN
* #https://fhir.ee/sid/pid/irn #https://fhir.ee/sid/pid/irn/ppn "Passport number of Iran" "Iraan passinumber"
* #https://fhir.ee/sid/pid/irn #https://fhir.ee/sid/pid/irn/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/irn #https://fhir.ee/sid/pid/irn/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/irn #https://fhir.ee/sid/pid/irn/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/irn #https://fhir.ee/sid/pid/irn/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/irn #https://fhir.ee/sid/pid/irn/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/irn #https://fhir.ee/sid/pid/irn/ppn ^property[=].valueCode = #IRN
* #https://fhir.ee/sid/pid/irn #https://fhir.ee/sid/pid/irn/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/irn #https://fhir.ee/sid/pid/irn/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IRN"
* #https://fhir.ee/sid/pid/isl "Root identifier for person identification of country Iceland" "Island identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/isl ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/isl ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/isl ^property[+].code = #country
* #https://fhir.ee/sid/pid/isl ^property[=].valueCode = #ISL
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/ppn "Passport number of Iceland" "Island passinumber"
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/ppn ^property[=].valueCode = #ISL
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ISL"
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/ni "National identifier of Iceland" "Island personaalne identifikaator"
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/ni ^property[=].valueCode = #ISL
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/dl "Driver's licence number of Iceland" "Island juhiloa number"
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/isl #https://fhir.ee/sid/pid/isl/dl ^property[=].valueCode = #ISL
* #https://fhir.ee/sid/pid/ita "Root identifier for person identification of country Italy" "Itaalia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/ita ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/ita ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/ita ^property[+].code = #country
* #https://fhir.ee/sid/pid/ita ^property[=].valueCode = #ITA
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/ppn "Passport number of Italy" "Itaalia passinumber"
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/ppn ^property[=].valueCode = #ITA
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ITA"
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/ni "National identifier of Italy" "Itaalia personaalne identifikaator"
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/ni ^property[=].valueCode = #ITA
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/cz "ID-card number of Italy" "Itaalia ID-kaarti number"
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/cz ^property[=].valueCode = #ITA
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/dl "Driver's licence number of Italy" "Itaalia juhiloa number"
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/ita #https://fhir.ee/sid/pid/ita/dl ^property[=].valueCode = #ITA
* #https://fhir.ee/sid/pid/jpn "Root identifier for person identification of country Japan" "Jaapan identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/jpn ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/jpn ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/jpn ^property[+].code = #country
* #https://fhir.ee/sid/pid/jpn ^property[=].valueCode = #JPN
* #https://fhir.ee/sid/pid/jpn #https://fhir.ee/sid/pid/jpn/ppn "Passport number of Japan" "Jaapan passinumber"
* #https://fhir.ee/sid/pid/jpn #https://fhir.ee/sid/pid/jpn/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/jpn #https://fhir.ee/sid/pid/jpn/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/jpn #https://fhir.ee/sid/pid/jpn/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/jpn #https://fhir.ee/sid/pid/jpn/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/jpn #https://fhir.ee/sid/pid/jpn/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/jpn #https://fhir.ee/sid/pid/jpn/ppn ^property[=].valueCode = #JPN
* #https://fhir.ee/sid/pid/jpn #https://fhir.ee/sid/pid/jpn/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/jpn #https://fhir.ee/sid/pid/jpn/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-JPN"
* #https://fhir.ee/sid/pid/jam "Root identifier for person identification of country Jamaica" "Jamaica identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/jam ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/jam ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/jam ^property[+].code = #country
* #https://fhir.ee/sid/pid/jam ^property[=].valueCode = #JAM
* #https://fhir.ee/sid/pid/jam #https://fhir.ee/sid/pid/jam/ppn "Passport number of Jamaica" "Jamaica passinumber"
* #https://fhir.ee/sid/pid/jam #https://fhir.ee/sid/pid/jam/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/jam #https://fhir.ee/sid/pid/jam/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/jam #https://fhir.ee/sid/pid/jam/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/jam #https://fhir.ee/sid/pid/jam/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/jam #https://fhir.ee/sid/pid/jam/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/jam #https://fhir.ee/sid/pid/jam/ppn ^property[=].valueCode = #JAM
* #https://fhir.ee/sid/pid/jam #https://fhir.ee/sid/pid/jam/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/jam #https://fhir.ee/sid/pid/jam/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-JAM"
* #https://fhir.ee/sid/pid/yem "Root identifier for person identification of country Yemen" "Jeemen identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/yem ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/yem ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/yem ^property[+].code = #country
* #https://fhir.ee/sid/pid/yem ^property[=].valueCode = #YEM
* #https://fhir.ee/sid/pid/yem #https://fhir.ee/sid/pid/yem/ppn "Passport number of Yemen" "Jeemen passinumber"
* #https://fhir.ee/sid/pid/yem #https://fhir.ee/sid/pid/yem/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/yem #https://fhir.ee/sid/pid/yem/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/yem #https://fhir.ee/sid/pid/yem/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/yem #https://fhir.ee/sid/pid/yem/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/yem #https://fhir.ee/sid/pid/yem/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/yem #https://fhir.ee/sid/pid/yem/ppn ^property[=].valueCode = #YEM
* #https://fhir.ee/sid/pid/yem #https://fhir.ee/sid/pid/yem/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/yem #https://fhir.ee/sid/pid/yem/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-YEM"
* #https://fhir.ee/sid/pid/jey "Root identifier for person identification of country Jersey" "Jersey identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/jey ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/jey ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/jey ^property[+].code = #country
* #https://fhir.ee/sid/pid/jey ^property[=].valueCode = #JEY
* #https://fhir.ee/sid/pid/jey #https://fhir.ee/sid/pid/jey/ppn "Passport number of Jersey" "Jersey passinumber"
* #https://fhir.ee/sid/pid/jey #https://fhir.ee/sid/pid/jey/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/jey #https://fhir.ee/sid/pid/jey/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/jey #https://fhir.ee/sid/pid/jey/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/jey #https://fhir.ee/sid/pid/jey/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/jey #https://fhir.ee/sid/pid/jey/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/jey #https://fhir.ee/sid/pid/jey/ppn ^property[=].valueCode = #JEY
* #https://fhir.ee/sid/pid/jey #https://fhir.ee/sid/pid/jey/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/jey #https://fhir.ee/sid/pid/jey/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-JEY"
* #https://fhir.ee/sid/pid/jor "Root identifier for person identification of country Jordan" "Jordaania identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/jor ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/jor ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/jor ^property[+].code = #country
* #https://fhir.ee/sid/pid/jor ^property[=].valueCode = #JOR
* #https://fhir.ee/sid/pid/jor #https://fhir.ee/sid/pid/jor/ppn "Passport number of Jordan" "Jordaania passinumber"
* #https://fhir.ee/sid/pid/jor #https://fhir.ee/sid/pid/jor/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/jor #https://fhir.ee/sid/pid/jor/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/jor #https://fhir.ee/sid/pid/jor/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/jor #https://fhir.ee/sid/pid/jor/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/jor #https://fhir.ee/sid/pid/jor/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/jor #https://fhir.ee/sid/pid/jor/ppn ^property[=].valueCode = #JOR
* #https://fhir.ee/sid/pid/jor #https://fhir.ee/sid/pid/jor/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/jor #https://fhir.ee/sid/pid/jor/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-JOR"
* #https://fhir.ee/sid/pid/cxr "Root identifier for person identification of country Christmas Island" "Jõulusaar identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/cxr ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/cxr ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/cxr ^property[+].code = #country
* #https://fhir.ee/sid/pid/cxr ^property[=].valueCode = #CXR
* #https://fhir.ee/sid/pid/cxr #https://fhir.ee/sid/pid/cxr/ppn "Passport number of Christmas Island" "Jõulusaar passinumber"
* #https://fhir.ee/sid/pid/cxr #https://fhir.ee/sid/pid/cxr/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/cxr #https://fhir.ee/sid/pid/cxr/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/cxr #https://fhir.ee/sid/pid/cxr/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/cxr #https://fhir.ee/sid/pid/cxr/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/cxr #https://fhir.ee/sid/pid/cxr/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/cxr #https://fhir.ee/sid/pid/cxr/ppn ^property[=].valueCode = #CXR
* #https://fhir.ee/sid/pid/cxr #https://fhir.ee/sid/pid/cxr/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/cxr #https://fhir.ee/sid/pid/cxr/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CXR"
* #https://fhir.ee/sid/pid/cym "Root identifier for person identification of country Cayman Islands" "Kaimanisaared identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/cym ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/cym ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/cym ^property[+].code = #country
* #https://fhir.ee/sid/pid/cym ^property[=].valueCode = #CYM
* #https://fhir.ee/sid/pid/cym #https://fhir.ee/sid/pid/cym/ppn "Passport number of Cayman Islands" "Kaimanisaared passinumber"
* #https://fhir.ee/sid/pid/cym #https://fhir.ee/sid/pid/cym/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/cym #https://fhir.ee/sid/pid/cym/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/cym #https://fhir.ee/sid/pid/cym/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/cym #https://fhir.ee/sid/pid/cym/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/cym #https://fhir.ee/sid/pid/cym/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/cym #https://fhir.ee/sid/pid/cym/ppn ^property[=].valueCode = #CYM
* #https://fhir.ee/sid/pid/cym #https://fhir.ee/sid/pid/cym/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/cym #https://fhir.ee/sid/pid/cym/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CYM"
* #https://fhir.ee/sid/pid/khm "Root identifier for person identification of country Cambodia" "Kambodža identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/khm ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/khm ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/khm ^property[+].code = #country
* #https://fhir.ee/sid/pid/khm ^property[=].valueCode = #KHM
* #https://fhir.ee/sid/pid/khm #https://fhir.ee/sid/pid/khm/ppn "Passport number of Cambodia" "Kambodža passinumber"
* #https://fhir.ee/sid/pid/khm #https://fhir.ee/sid/pid/khm/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/khm #https://fhir.ee/sid/pid/khm/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/khm #https://fhir.ee/sid/pid/khm/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/khm #https://fhir.ee/sid/pid/khm/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/khm #https://fhir.ee/sid/pid/khm/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/khm #https://fhir.ee/sid/pid/khm/ppn ^property[=].valueCode = #KHM
* #https://fhir.ee/sid/pid/khm #https://fhir.ee/sid/pid/khm/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/khm #https://fhir.ee/sid/pid/khm/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KHM"
* #https://fhir.ee/sid/pid/cmr "Root identifier for person identification of country Cameroon" "Kamerun identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/cmr ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/cmr ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/cmr ^property[+].code = #country
* #https://fhir.ee/sid/pid/cmr ^property[=].valueCode = #CMR
* #https://fhir.ee/sid/pid/cmr #https://fhir.ee/sid/pid/cmr/ppn "Passport number of Cameroon" "Kamerun passinumber"
* #https://fhir.ee/sid/pid/cmr #https://fhir.ee/sid/pid/cmr/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/cmr #https://fhir.ee/sid/pid/cmr/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/cmr #https://fhir.ee/sid/pid/cmr/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/cmr #https://fhir.ee/sid/pid/cmr/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/cmr #https://fhir.ee/sid/pid/cmr/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/cmr #https://fhir.ee/sid/pid/cmr/ppn ^property[=].valueCode = #CMR
* #https://fhir.ee/sid/pid/cmr #https://fhir.ee/sid/pid/cmr/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/cmr #https://fhir.ee/sid/pid/cmr/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CMR"
* #https://fhir.ee/sid/pid/can "Root identifier for person identification of country Canada" "Kanada identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/can ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/can ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/can ^property[+].code = #country
* #https://fhir.ee/sid/pid/can ^property[=].valueCode = #CAN
* #https://fhir.ee/sid/pid/can #https://fhir.ee/sid/pid/can/ppn "Passport number of Canada" "Kanada passinumber"
* #https://fhir.ee/sid/pid/can #https://fhir.ee/sid/pid/can/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/can #https://fhir.ee/sid/pid/can/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/can #https://fhir.ee/sid/pid/can/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/can #https://fhir.ee/sid/pid/can/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/can #https://fhir.ee/sid/pid/can/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/can #https://fhir.ee/sid/pid/can/ppn ^property[=].valueCode = #CAN
* #https://fhir.ee/sid/pid/can #https://fhir.ee/sid/pid/can/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/can #https://fhir.ee/sid/pid/can/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CAN"
* #https://fhir.ee/sid/pid/kaz "Root identifier for person identification of country Kazakhstan" "Kasahstan identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/kaz ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/kaz ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/kaz ^property[+].code = #country
* #https://fhir.ee/sid/pid/kaz ^property[=].valueCode = #KAZ
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/ppn "Passport number of Kazakhstan" "Kasahstan passinumber"
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/ppn ^property[=].valueCode = #KAZ
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KAZ"
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/ni "National identifier of Kazakhstan" "Kasahstan personaalne identifikaator"
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/ni ^property[=].valueCode = #KAZ
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/cz "ID-card number of Kazakhstan" "Kasahstan ID-kaarti number"
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/cz ^property[=].valueCode = #KAZ
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/dl "Driver's licence number of Kazakhstan" "Kasahstan juhiloa number"
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/kaz #https://fhir.ee/sid/pid/kaz/dl ^property[=].valueCode = #KAZ
* #https://fhir.ee/sid/pid/qat "Root identifier for person identification of country Qatar" "Katar identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/qat ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/qat ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/qat ^property[+].code = #country
* #https://fhir.ee/sid/pid/qat ^property[=].valueCode = #QAT
* #https://fhir.ee/sid/pid/qat #https://fhir.ee/sid/pid/qat/ppn "Passport number of Qatar" "Katar passinumber"
* #https://fhir.ee/sid/pid/qat #https://fhir.ee/sid/pid/qat/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/qat #https://fhir.ee/sid/pid/qat/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/qat #https://fhir.ee/sid/pid/qat/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/qat #https://fhir.ee/sid/pid/qat/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/qat #https://fhir.ee/sid/pid/qat/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/qat #https://fhir.ee/sid/pid/qat/ppn ^property[=].valueCode = #QAT
* #https://fhir.ee/sid/pid/qat #https://fhir.ee/sid/pid/qat/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/qat #https://fhir.ee/sid/pid/qat/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-QAT"
* #https://fhir.ee/sid/pid/ken "Root identifier for person identification of country Kenya" "Kenya identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/ken ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/ken ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/ken ^property[+].code = #country
* #https://fhir.ee/sid/pid/ken ^property[=].valueCode = #KEN
* #https://fhir.ee/sid/pid/ken #https://fhir.ee/sid/pid/ken/ppn "Passport number of Kenya" "Kenya passinumber"
* #https://fhir.ee/sid/pid/ken #https://fhir.ee/sid/pid/ken/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ken #https://fhir.ee/sid/pid/ken/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/ken #https://fhir.ee/sid/pid/ken/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ken #https://fhir.ee/sid/pid/ken/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ken #https://fhir.ee/sid/pid/ken/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/ken #https://fhir.ee/sid/pid/ken/ppn ^property[=].valueCode = #KEN
* #https://fhir.ee/sid/pid/ken #https://fhir.ee/sid/pid/ken/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/ken #https://fhir.ee/sid/pid/ken/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KEN"
* #https://fhir.ee/sid/pid/caf "Root identifier for person identification of country Central African Republik" "Kesk-Aafrika Vabariik identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/caf ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/caf ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/caf ^property[+].code = #country
* #https://fhir.ee/sid/pid/caf ^property[=].valueCode = #CAF
* #https://fhir.ee/sid/pid/caf #https://fhir.ee/sid/pid/caf/ppn "Passport number of Central African Republik" "Kesk-Aafrika Vabariik passinumber"
* #https://fhir.ee/sid/pid/caf #https://fhir.ee/sid/pid/caf/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/caf #https://fhir.ee/sid/pid/caf/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/caf #https://fhir.ee/sid/pid/caf/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/caf #https://fhir.ee/sid/pid/caf/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/caf #https://fhir.ee/sid/pid/caf/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/caf #https://fhir.ee/sid/pid/caf/ppn ^property[=].valueCode = #CAF
* #https://fhir.ee/sid/pid/caf #https://fhir.ee/sid/pid/caf/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/caf #https://fhir.ee/sid/pid/caf/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CAF"
* #https://fhir.ee/sid/pid/kgz "Root identifier for person identification of country Kyrgyzstan" "Kõrgõzstan identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/kgz ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/kgz ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/kgz ^property[+].code = #country
* #https://fhir.ee/sid/pid/kgz ^property[=].valueCode = #KGZ
* #https://fhir.ee/sid/pid/kgz #https://fhir.ee/sid/pid/kgz/ppn "Passport number of Kyrgyzstan" "Kõrgõzstan passinumber"
* #https://fhir.ee/sid/pid/kgz #https://fhir.ee/sid/pid/kgz/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/kgz #https://fhir.ee/sid/pid/kgz/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/kgz #https://fhir.ee/sid/pid/kgz/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/kgz #https://fhir.ee/sid/pid/kgz/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/kgz #https://fhir.ee/sid/pid/kgz/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/kgz #https://fhir.ee/sid/pid/kgz/ppn ^property[=].valueCode = #KGZ
* #https://fhir.ee/sid/pid/kgz #https://fhir.ee/sid/pid/kgz/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/kgz #https://fhir.ee/sid/pid/kgz/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KGZ"
* #https://fhir.ee/sid/pid/kir "Root identifier for person identification of country Kiribati" "Kiribati identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/kir ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/kir ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/kir ^property[+].code = #country
* #https://fhir.ee/sid/pid/kir ^property[=].valueCode = #KIR
* #https://fhir.ee/sid/pid/kir #https://fhir.ee/sid/pid/kir/ppn "Passport number of Kiribati" "Kiribati passinumber"
* #https://fhir.ee/sid/pid/kir #https://fhir.ee/sid/pid/kir/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/kir #https://fhir.ee/sid/pid/kir/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/kir #https://fhir.ee/sid/pid/kir/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/kir #https://fhir.ee/sid/pid/kir/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/kir #https://fhir.ee/sid/pid/kir/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/kir #https://fhir.ee/sid/pid/kir/ppn ^property[=].valueCode = #KIR
* #https://fhir.ee/sid/pid/kir #https://fhir.ee/sid/pid/kir/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/kir #https://fhir.ee/sid/pid/kir/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KIR"
* #https://fhir.ee/sid/pid/com "Root identifier for person identification of country Comoros" "Komoorid identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/com ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/com ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/com ^property[+].code = #country
* #https://fhir.ee/sid/pid/com ^property[=].valueCode = #COM
* #https://fhir.ee/sid/pid/com #https://fhir.ee/sid/pid/com/ppn "Passport number of Comoros" "Komoorid passinumber"
* #https://fhir.ee/sid/pid/com #https://fhir.ee/sid/pid/com/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/com #https://fhir.ee/sid/pid/com/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/com #https://fhir.ee/sid/pid/com/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/com #https://fhir.ee/sid/pid/com/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/com #https://fhir.ee/sid/pid/com/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/com #https://fhir.ee/sid/pid/com/ppn ^property[=].valueCode = #COM
* #https://fhir.ee/sid/pid/com #https://fhir.ee/sid/pid/com/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/com #https://fhir.ee/sid/pid/com/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-COM"
* #https://fhir.ee/sid/pid/cod "Root identifier for person identification of country Congo, the Democratic Republik of the" "Kongo DV identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/cod ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/cod ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/cod ^property[+].code = #country
* #https://fhir.ee/sid/pid/cod ^property[=].valueCode = #COD
* #https://fhir.ee/sid/pid/cod #https://fhir.ee/sid/pid/cod/ppn "Passport number of Congo, the Democratic Republik of the" "Kongo DV passinumber"
* #https://fhir.ee/sid/pid/cod #https://fhir.ee/sid/pid/cod/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/cod #https://fhir.ee/sid/pid/cod/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/cod #https://fhir.ee/sid/pid/cod/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/cod #https://fhir.ee/sid/pid/cod/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/cod #https://fhir.ee/sid/pid/cod/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/cod #https://fhir.ee/sid/pid/cod/ppn ^property[=].valueCode = #COD
* #https://fhir.ee/sid/pid/cod #https://fhir.ee/sid/pid/cod/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/cod #https://fhir.ee/sid/pid/cod/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-COD"
* #https://fhir.ee/sid/pid/cog "Root identifier for person identification of country Congo" "Kongo identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/cog ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/cog ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/cog ^property[+].code = #country
* #https://fhir.ee/sid/pid/cog ^property[=].valueCode = #COG
* #https://fhir.ee/sid/pid/cog #https://fhir.ee/sid/pid/cog/ppn "Passport number of Congo" "Kongo passinumber"
* #https://fhir.ee/sid/pid/cog #https://fhir.ee/sid/pid/cog/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/cog #https://fhir.ee/sid/pid/cog/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/cog #https://fhir.ee/sid/pid/cog/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/cog #https://fhir.ee/sid/pid/cog/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/cog #https://fhir.ee/sid/pid/cog/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/cog #https://fhir.ee/sid/pid/cog/ppn ^property[=].valueCode = #COG
* #https://fhir.ee/sid/pid/cog #https://fhir.ee/sid/pid/cog/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/cog #https://fhir.ee/sid/pid/cog/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-COG"
* #https://fhir.ee/sid/pid/cck "Root identifier for person identification of country Cocos (Keeling) Islands" "Kookossaared (Keelingi saared) identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/cck ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/cck ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/cck ^property[+].code = #country
* #https://fhir.ee/sid/pid/cck ^property[=].valueCode = #CCK
* #https://fhir.ee/sid/pid/cck #https://fhir.ee/sid/pid/cck/ppn "Passport number of Cocos (Keeling) Islands" "Kookossaared (Keelingi saared) passinumber"
* #https://fhir.ee/sid/pid/cck #https://fhir.ee/sid/pid/cck/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/cck #https://fhir.ee/sid/pid/cck/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/cck #https://fhir.ee/sid/pid/cck/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/cck #https://fhir.ee/sid/pid/cck/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/cck #https://fhir.ee/sid/pid/cck/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/cck #https://fhir.ee/sid/pid/cck/ppn ^property[=].valueCode = #CCK
* #https://fhir.ee/sid/pid/cck #https://fhir.ee/sid/pid/cck/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/cck #https://fhir.ee/sid/pid/cck/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CCK"
* #https://fhir.ee/sid/pid/prk "Root identifier for person identification of country Korea, Democratic People's Republic of" "Korea RDV identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/prk ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/prk ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/prk ^property[+].code = #country
* #https://fhir.ee/sid/pid/prk ^property[=].valueCode = #PRK
* #https://fhir.ee/sid/pid/prk #https://fhir.ee/sid/pid/prk/ppn "Passport number of Korea, Democratic People's Republic of" "Korea RDV passinumber"
* #https://fhir.ee/sid/pid/prk #https://fhir.ee/sid/pid/prk/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/prk #https://fhir.ee/sid/pid/prk/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/prk #https://fhir.ee/sid/pid/prk/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/prk #https://fhir.ee/sid/pid/prk/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/prk #https://fhir.ee/sid/pid/prk/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/prk #https://fhir.ee/sid/pid/prk/ppn ^property[=].valueCode = #PRK
* #https://fhir.ee/sid/pid/prk #https://fhir.ee/sid/pid/prk/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/prk #https://fhir.ee/sid/pid/prk/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PRK"
* #https://fhir.ee/sid/pid/kor "Root identifier for person identification of country Korea, Republic of" "Korea Vabariik identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/kor ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/kor ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/kor ^property[+].code = #country
* #https://fhir.ee/sid/pid/kor ^property[=].valueCode = #KOR
* #https://fhir.ee/sid/pid/kor #https://fhir.ee/sid/pid/kor/ppn "Passport number of Korea, Republic of" "Korea Vabariik passinumber"
* #https://fhir.ee/sid/pid/kor #https://fhir.ee/sid/pid/kor/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/kor #https://fhir.ee/sid/pid/kor/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/kor #https://fhir.ee/sid/pid/kor/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/kor #https://fhir.ee/sid/pid/kor/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/kor #https://fhir.ee/sid/pid/kor/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/kor #https://fhir.ee/sid/pid/kor/ppn ^property[=].valueCode = #KOR
* #https://fhir.ee/sid/pid/kor #https://fhir.ee/sid/pid/kor/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/kor #https://fhir.ee/sid/pid/kor/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KOR"
* #https://fhir.ee/sid/pid/grc "Root identifier for person identification of country Greece" "Kreeka identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/grc ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/grc ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/grc ^property[+].code = #country
* #https://fhir.ee/sid/pid/grc ^property[=].valueCode = #GRC
* #https://fhir.ee/sid/pid/grc #https://fhir.ee/sid/pid/grc/ppn "Passport number of Greece" "Kreeka passinumber"
* #https://fhir.ee/sid/pid/grc #https://fhir.ee/sid/pid/grc/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/grc #https://fhir.ee/sid/pid/grc/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/grc #https://fhir.ee/sid/pid/grc/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/grc #https://fhir.ee/sid/pid/grc/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/grc #https://fhir.ee/sid/pid/grc/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/grc #https://fhir.ee/sid/pid/grc/ppn ^property[=].valueCode = #GRC
* #https://fhir.ee/sid/pid/grc #https://fhir.ee/sid/pid/grc/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/grc #https://fhir.ee/sid/pid/grc/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GRC"
* #https://fhir.ee/sid/pid/cub "Root identifier for person identification of country Cuba" "Kuuba identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/cub ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/cub ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/cub ^property[+].code = #country
* #https://fhir.ee/sid/pid/cub ^property[=].valueCode = #CUB
* #https://fhir.ee/sid/pid/cub #https://fhir.ee/sid/pid/cub/ppn "Passport number of Cuba" "Kuuba passinumber"
* #https://fhir.ee/sid/pid/cub #https://fhir.ee/sid/pid/cub/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/cub #https://fhir.ee/sid/pid/cub/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/cub #https://fhir.ee/sid/pid/cub/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/cub #https://fhir.ee/sid/pid/cub/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/cub #https://fhir.ee/sid/pid/cub/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/cub #https://fhir.ee/sid/pid/cub/ppn ^property[=].valueCode = #CUB
* #https://fhir.ee/sid/pid/cub #https://fhir.ee/sid/pid/cub/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/cub #https://fhir.ee/sid/pid/cub/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CUB"
* #https://fhir.ee/sid/pid/kwt "Root identifier for person identification of country Kuwait" "Kuveit identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/kwt ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/kwt ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/kwt ^property[+].code = #country
* #https://fhir.ee/sid/pid/kwt ^property[=].valueCode = #KWT
* #https://fhir.ee/sid/pid/kwt #https://fhir.ee/sid/pid/kwt/ppn "Passport number of Kuwait" "Kuveit passinumber"
* #https://fhir.ee/sid/pid/kwt #https://fhir.ee/sid/pid/kwt/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/kwt #https://fhir.ee/sid/pid/kwt/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/kwt #https://fhir.ee/sid/pid/kwt/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/kwt #https://fhir.ee/sid/pid/kwt/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/kwt #https://fhir.ee/sid/pid/kwt/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/kwt #https://fhir.ee/sid/pid/kwt/ppn ^property[=].valueCode = #KWT
* #https://fhir.ee/sid/pid/kwt #https://fhir.ee/sid/pid/kwt/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/kwt #https://fhir.ee/sid/pid/kwt/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KWT"
* #https://fhir.ee/sid/pid/kwt #https://fhir.ee/sid/pid/kwt/ni "National identifier of Kuwait" "Kuveit personaalne identifikaator"
* #https://fhir.ee/sid/pid/kwt #https://fhir.ee/sid/pid/kwt/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/kwt #https://fhir.ee/sid/pid/kwt/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/kwt #https://fhir.ee/sid/pid/kwt/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/kwt #https://fhir.ee/sid/pid/kwt/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/kwt #https://fhir.ee/sid/pid/kwt/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/kwt #https://fhir.ee/sid/pid/kwt/ni ^property[=].valueCode = #KWT
* #https://fhir.ee/sid/pid/cyp "Root identifier for person identification of country Cyprus" "Küpros identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/cyp ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/cyp ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/cyp ^property[+].code = #country
* #https://fhir.ee/sid/pid/cyp ^property[=].valueCode = #CYP
* #https://fhir.ee/sid/pid/cyp #https://fhir.ee/sid/pid/cyp/ppn "Passport number of Cyprus" "Küpros passinumber"
* #https://fhir.ee/sid/pid/cyp #https://fhir.ee/sid/pid/cyp/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/cyp #https://fhir.ee/sid/pid/cyp/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/cyp #https://fhir.ee/sid/pid/cyp/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/cyp #https://fhir.ee/sid/pid/cyp/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/cyp #https://fhir.ee/sid/pid/cyp/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/cyp #https://fhir.ee/sid/pid/cyp/ppn ^property[=].valueCode = #CYP
* #https://fhir.ee/sid/pid/cyp #https://fhir.ee/sid/pid/cyp/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/cyp #https://fhir.ee/sid/pid/cyp/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CYP"
* #https://fhir.ee/sid/pid/lao "Root identifier for person identification of country Lao People's Democratic Republic" "Laos identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/lao ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/lao ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/lao ^property[+].code = #country
* #https://fhir.ee/sid/pid/lao ^property[=].valueCode = #LAO
* #https://fhir.ee/sid/pid/lao #https://fhir.ee/sid/pid/lao/ppn "Passport number of Lao People's Democratic Republic" "Laos passinumber"
* #https://fhir.ee/sid/pid/lao #https://fhir.ee/sid/pid/lao/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/lao #https://fhir.ee/sid/pid/lao/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/lao #https://fhir.ee/sid/pid/lao/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/lao #https://fhir.ee/sid/pid/lao/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/lao #https://fhir.ee/sid/pid/lao/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/lao #https://fhir.ee/sid/pid/lao/ppn ^property[=].valueCode = #LAO
* #https://fhir.ee/sid/pid/lao #https://fhir.ee/sid/pid/lao/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/lao #https://fhir.ee/sid/pid/lao/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LAO"
* #https://fhir.ee/sid/pid/ltu "Root identifier for person identification of country Lithuania" "Leedu identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/ltu ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/ltu ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/ltu ^property[+].code = #country
* #https://fhir.ee/sid/pid/ltu ^property[=].valueCode = #LTU
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/ppn "Passport number of Lithuania" "Leedu passinumber"
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/ppn ^property[=].valueCode = #LTU
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LTU"
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/ni "National identifier of Lithuania" "Leedu personaalne identifikaator"
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/ni ^property[=].valueCode = #LTU
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/cz "ID-card number of Lithuania" "Leedu ID-kaarti number"
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/cz ^property[=].valueCode = #LTU
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/dl "Driver's licence number of Lithuania" "Leedu juhiloa number"
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/ltu #https://fhir.ee/sid/pid/ltu/dl ^property[=].valueCode = #LTU
* #https://fhir.ee/sid/pid/lso "Root identifier for person identification of country Lesotho" "Lesotho identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/lso ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/lso ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/lso ^property[+].code = #country
* #https://fhir.ee/sid/pid/lso ^property[=].valueCode = #LSO
* #https://fhir.ee/sid/pid/lso #https://fhir.ee/sid/pid/lso/ppn "Passport number of Lesotho" "Lesotho passinumber"
* #https://fhir.ee/sid/pid/lso #https://fhir.ee/sid/pid/lso/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/lso #https://fhir.ee/sid/pid/lso/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/lso #https://fhir.ee/sid/pid/lso/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/lso #https://fhir.ee/sid/pid/lso/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/lso #https://fhir.ee/sid/pid/lso/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/lso #https://fhir.ee/sid/pid/lso/ppn ^property[=].valueCode = #LSO
* #https://fhir.ee/sid/pid/lso #https://fhir.ee/sid/pid/lso/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/lso #https://fhir.ee/sid/pid/lso/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LSO"
* #https://fhir.ee/sid/pid/lbr "Root identifier for person identification of country Liberia" "Libeeria identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/lbr ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/lbr ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/lbr ^property[+].code = #country
* #https://fhir.ee/sid/pid/lbr ^property[=].valueCode = #LBR
* #https://fhir.ee/sid/pid/lbr #https://fhir.ee/sid/pid/lbr/ppn "Passport number of Liberia" "Libeeria passinumber"
* #https://fhir.ee/sid/pid/lbr #https://fhir.ee/sid/pid/lbr/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/lbr #https://fhir.ee/sid/pid/lbr/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/lbr #https://fhir.ee/sid/pid/lbr/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/lbr #https://fhir.ee/sid/pid/lbr/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/lbr #https://fhir.ee/sid/pid/lbr/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/lbr #https://fhir.ee/sid/pid/lbr/ppn ^property[=].valueCode = #LBR
* #https://fhir.ee/sid/pid/lbr #https://fhir.ee/sid/pid/lbr/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/lbr #https://fhir.ee/sid/pid/lbr/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LBR"
* #https://fhir.ee/sid/pid/lie "Root identifier for person identification of country Liechtenstein" "Liechtenstein identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/lie ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/lie ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/lie ^property[+].code = #country
* #https://fhir.ee/sid/pid/lie ^property[=].valueCode = #LIE
* #https://fhir.ee/sid/pid/lie #https://fhir.ee/sid/pid/lie/ppn "Passport number of Liechtenstein" "Liechtenstein passinumber"
* #https://fhir.ee/sid/pid/lie #https://fhir.ee/sid/pid/lie/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/lie #https://fhir.ee/sid/pid/lie/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/lie #https://fhir.ee/sid/pid/lie/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/lie #https://fhir.ee/sid/pid/lie/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/lie #https://fhir.ee/sid/pid/lie/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/lie #https://fhir.ee/sid/pid/lie/ppn ^property[=].valueCode = #LIE
* #https://fhir.ee/sid/pid/lie #https://fhir.ee/sid/pid/lie/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/lie #https://fhir.ee/sid/pid/lie/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LIE"
* #https://fhir.ee/sid/pid/lbn "Root identifier for person identification of country Lebanon" "Liibanon identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/lbn ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/lbn ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/lbn ^property[+].code = #country
* #https://fhir.ee/sid/pid/lbn ^property[=].valueCode = #LBN
* #https://fhir.ee/sid/pid/lbn #https://fhir.ee/sid/pid/lbn/ppn "Passport number of Lebanon" "Liibanon passinumber"
* #https://fhir.ee/sid/pid/lbn #https://fhir.ee/sid/pid/lbn/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/lbn #https://fhir.ee/sid/pid/lbn/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/lbn #https://fhir.ee/sid/pid/lbn/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/lbn #https://fhir.ee/sid/pid/lbn/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/lbn #https://fhir.ee/sid/pid/lbn/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/lbn #https://fhir.ee/sid/pid/lbn/ppn ^property[=].valueCode = #LBN
* #https://fhir.ee/sid/pid/lbn #https://fhir.ee/sid/pid/lbn/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/lbn #https://fhir.ee/sid/pid/lbn/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LBN"
* #https://fhir.ee/sid/pid/lux "Root identifier for person identification of country Luxembourg" "Luksemburg identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/lux ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/lux ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/lux ^property[+].code = #country
* #https://fhir.ee/sid/pid/lux ^property[=].valueCode = #LUX
* #https://fhir.ee/sid/pid/lux #https://fhir.ee/sid/pid/lux/ppn "Passport number of Luxembourg" "Luksemburg passinumber"
* #https://fhir.ee/sid/pid/lux #https://fhir.ee/sid/pid/lux/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/lux #https://fhir.ee/sid/pid/lux/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/lux #https://fhir.ee/sid/pid/lux/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/lux #https://fhir.ee/sid/pid/lux/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/lux #https://fhir.ee/sid/pid/lux/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/lux #https://fhir.ee/sid/pid/lux/ppn ^property[=].valueCode = #LUX
* #https://fhir.ee/sid/pid/lux #https://fhir.ee/sid/pid/lux/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/lux #https://fhir.ee/sid/pid/lux/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LUX"
* #https://fhir.ee/sid/pid/zaf "Root identifier for person identification of country South Africa" "Lõuna-Aafrika Vabariik identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/zaf ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/zaf ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/zaf ^property[+].code = #country
* #https://fhir.ee/sid/pid/zaf ^property[=].valueCode = #ZAF
* #https://fhir.ee/sid/pid/zaf #https://fhir.ee/sid/pid/zaf/ppn "Passport number of South Africa" "Lõuna-Aafrika Vabariik passinumber"
* #https://fhir.ee/sid/pid/zaf #https://fhir.ee/sid/pid/zaf/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/zaf #https://fhir.ee/sid/pid/zaf/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/zaf #https://fhir.ee/sid/pid/zaf/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/zaf #https://fhir.ee/sid/pid/zaf/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/zaf #https://fhir.ee/sid/pid/zaf/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/zaf #https://fhir.ee/sid/pid/zaf/ppn ^property[=].valueCode = #ZAF
* #https://fhir.ee/sid/pid/zaf #https://fhir.ee/sid/pid/zaf/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/zaf #https://fhir.ee/sid/pid/zaf/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ZAF"
* #https://fhir.ee/sid/pid/zaf #https://fhir.ee/sid/pid/zaf/ni "National identifier of South Africa" "Lõuna-Aafrika Vabariik personaalne identifikaator"
* #https://fhir.ee/sid/pid/zaf #https://fhir.ee/sid/pid/zaf/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/zaf #https://fhir.ee/sid/pid/zaf/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/zaf #https://fhir.ee/sid/pid/zaf/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/zaf #https://fhir.ee/sid/pid/zaf/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/zaf #https://fhir.ee/sid/pid/zaf/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/zaf #https://fhir.ee/sid/pid/zaf/ni ^property[=].valueCode = #ZAF
* #https://fhir.ee/sid/pid/sgs "Root identifier for person identification of country South Georgia and the South Sandwich Islands" "Lõuna-Georgia ja Lõuna-Sandwich identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/sgs ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/sgs ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/sgs ^property[+].code = #country
* #https://fhir.ee/sid/pid/sgs ^property[=].valueCode = #SGS
* #https://fhir.ee/sid/pid/sgs #https://fhir.ee/sid/pid/sgs/ppn "Passport number of South Georgia and the South Sandwich Islands" "Lõuna-Georgia ja Lõuna-Sandwich passinumber"
* #https://fhir.ee/sid/pid/sgs #https://fhir.ee/sid/pid/sgs/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/sgs #https://fhir.ee/sid/pid/sgs/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/sgs #https://fhir.ee/sid/pid/sgs/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/sgs #https://fhir.ee/sid/pid/sgs/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/sgs #https://fhir.ee/sid/pid/sgs/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/sgs #https://fhir.ee/sid/pid/sgs/ppn ^property[=].valueCode = #SGS
* #https://fhir.ee/sid/pid/sgs #https://fhir.ee/sid/pid/sgs/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/sgs #https://fhir.ee/sid/pid/sgs/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SGS"
* #https://fhir.ee/sid/pid/lva "Root identifier for person identification of country Latvia" "Läti identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/lva ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/lva ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/lva ^property[+].code = #country
* #https://fhir.ee/sid/pid/lva ^property[=].valueCode = #LVA
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/ppn "Passport number of Latvia" "Läti passinumber"
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/ppn ^property[=].valueCode = #LVA
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LVA"
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/ni "National identifier of Latvia" "Läti personaalne identifikaator"
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/ni ^property[=].valueCode = #LVA
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/cz "ID-card number of Latvia" "Läti ID-kaarti number"
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/cz ^property[=].valueCode = #LVA
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/dl "Driver's licence number of Latvia" "Läti juhiloa number"
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/lva #https://fhir.ee/sid/pid/lva/dl ^property[=].valueCode = #LVA
* #https://fhir.ee/sid/pid/esh "Root identifier for person identification of country Western Sahara" "Lääne-Sahara identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/esh ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/esh ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/esh ^property[+].code = #country
* #https://fhir.ee/sid/pid/esh ^property[=].valueCode = #ESH
* #https://fhir.ee/sid/pid/esh #https://fhir.ee/sid/pid/esh/ppn "Passport number of Western Sahara" "Lääne-Sahara passinumber"
* #https://fhir.ee/sid/pid/esh #https://fhir.ee/sid/pid/esh/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/esh #https://fhir.ee/sid/pid/esh/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/esh #https://fhir.ee/sid/pid/esh/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/esh #https://fhir.ee/sid/pid/esh/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/esh #https://fhir.ee/sid/pid/esh/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/esh #https://fhir.ee/sid/pid/esh/ppn ^property[=].valueCode = #ESH
* #https://fhir.ee/sid/pid/esh #https://fhir.ee/sid/pid/esh/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/esh #https://fhir.ee/sid/pid/esh/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ESH"
* #https://fhir.ee/sid/pid/mdg "Root identifier for person identification of country Madagascar" "Madagaskar identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/mdg ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/mdg ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/mdg ^property[+].code = #country
* #https://fhir.ee/sid/pid/mdg ^property[=].valueCode = #MDG
* #https://fhir.ee/sid/pid/mdg #https://fhir.ee/sid/pid/mdg/ppn "Passport number of Madagascar" "Madagaskar passinumber"
* #https://fhir.ee/sid/pid/mdg #https://fhir.ee/sid/pid/mdg/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mdg #https://fhir.ee/sid/pid/mdg/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/mdg #https://fhir.ee/sid/pid/mdg/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mdg #https://fhir.ee/sid/pid/mdg/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mdg #https://fhir.ee/sid/pid/mdg/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/mdg #https://fhir.ee/sid/pid/mdg/ppn ^property[=].valueCode = #MDG
* #https://fhir.ee/sid/pid/mdg #https://fhir.ee/sid/pid/mdg/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/mdg #https://fhir.ee/sid/pid/mdg/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MDG"
* #https://fhir.ee/sid/pid/nld "Root identifier for person identification of country Netherlands" "Holland identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/nld ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/nld ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/nld ^property[+].code = #country
* #https://fhir.ee/sid/pid/nld ^property[=].valueCode = #NLD
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/ppn "Passport number of Netherlands" "Holland passinumber"
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/ppn ^property[=].valueCode = #NLD
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NLD"
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/ni "National identifier of Netherlands" "Holland personaalne identifikaator"
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/ni ^property[=].valueCode = #NLD
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/cz "ID-card number of Netherlands" "Holland ID-kaarti number"
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/cz ^property[=].valueCode = #NLD
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/dl "Driver's licence number of Netherlands" "Holland juhiloa number"
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/nld #https://fhir.ee/sid/pid/nld/dl ^property[=].valueCode = #NLD
* #https://fhir.ee/sid/pid/mkd "Root identifier for person identification of country Macedonia" "Makedoonia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/mkd ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/mkd ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/mkd ^property[+].code = #country
* #https://fhir.ee/sid/pid/mkd ^property[=].valueCode = #MKD
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/ppn "Passport number of Macedonia" "Makedoonia passinumber"
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/ppn ^property[=].valueCode = #MKD
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MKD"
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/ni "National identifier of Macedonia" "Makedoonia personaalne identifikaator"
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/ni ^property[=].valueCode = #MKD
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/cz "ID-card number of Macedonia" "Makedoonia ID-kaarti number"
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/cz ^property[=].valueCode = #MKD
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/dl "Driver's licence number of Macedonia" "Makedoonia juhiloa number"
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/mkd #https://fhir.ee/sid/pid/mkd/dl ^property[=].valueCode = #MKD
* #https://fhir.ee/sid/pid/mys "Root identifier for person identification of country Malaysia" "Malaisia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/mys ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/mys ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/mys ^property[+].code = #country
* #https://fhir.ee/sid/pid/mys ^property[=].valueCode = #MYS
* #https://fhir.ee/sid/pid/mys #https://fhir.ee/sid/pid/mys/ppn "Passport number of Malaysia" "Malaisia passinumber"
* #https://fhir.ee/sid/pid/mys #https://fhir.ee/sid/pid/mys/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mys #https://fhir.ee/sid/pid/mys/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/mys #https://fhir.ee/sid/pid/mys/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mys #https://fhir.ee/sid/pid/mys/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mys #https://fhir.ee/sid/pid/mys/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/mys #https://fhir.ee/sid/pid/mys/ppn ^property[=].valueCode = #MYS
* #https://fhir.ee/sid/pid/mys #https://fhir.ee/sid/pid/mys/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/mys #https://fhir.ee/sid/pid/mys/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MYS"
* #https://fhir.ee/sid/pid/mys #https://fhir.ee/sid/pid/mys/ni "National identifier of Malaysia" "Malaisia personaalne identifikaator"
* #https://fhir.ee/sid/pid/mys #https://fhir.ee/sid/pid/mys/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mys #https://fhir.ee/sid/pid/mys/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/mys #https://fhir.ee/sid/pid/mys/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mys #https://fhir.ee/sid/pid/mys/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mys #https://fhir.ee/sid/pid/mys/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/mys #https://fhir.ee/sid/pid/mys/ni ^property[=].valueCode = #MYS
* #https://fhir.ee/sid/pid/mwi "Root identifier for person identification of country Malawi" "Malawi identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/mwi ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/mwi ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/mwi ^property[+].code = #country
* #https://fhir.ee/sid/pid/mwi ^property[=].valueCode = #MWI
* #https://fhir.ee/sid/pid/mwi #https://fhir.ee/sid/pid/mwi/ppn "Passport number of Malawi" "Malawi passinumber"
* #https://fhir.ee/sid/pid/mwi #https://fhir.ee/sid/pid/mwi/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mwi #https://fhir.ee/sid/pid/mwi/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/mwi #https://fhir.ee/sid/pid/mwi/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mwi #https://fhir.ee/sid/pid/mwi/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mwi #https://fhir.ee/sid/pid/mwi/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/mwi #https://fhir.ee/sid/pid/mwi/ppn ^property[=].valueCode = #MWI
* #https://fhir.ee/sid/pid/mwi #https://fhir.ee/sid/pid/mwi/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/mwi #https://fhir.ee/sid/pid/mwi/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MWI"
* #https://fhir.ee/sid/pid/mdv "Root identifier for person identification of country Maldives" "Maldiivid identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/mdv ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/mdv ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/mdv ^property[+].code = #country
* #https://fhir.ee/sid/pid/mdv ^property[=].valueCode = #MDV
* #https://fhir.ee/sid/pid/mdv #https://fhir.ee/sid/pid/mdv/ppn "Passport number of Maldives" "Maldiivid passinumber"
* #https://fhir.ee/sid/pid/mdv #https://fhir.ee/sid/pid/mdv/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mdv #https://fhir.ee/sid/pid/mdv/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/mdv #https://fhir.ee/sid/pid/mdv/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mdv #https://fhir.ee/sid/pid/mdv/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mdv #https://fhir.ee/sid/pid/mdv/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/mdv #https://fhir.ee/sid/pid/mdv/ppn ^property[=].valueCode = #MDV
* #https://fhir.ee/sid/pid/mdv #https://fhir.ee/sid/pid/mdv/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/mdv #https://fhir.ee/sid/pid/mdv/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MDV"
* #https://fhir.ee/sid/pid/mli "Root identifier for person identification of country Mali" "Mali identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/mli ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/mli ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/mli ^property[+].code = #country
* #https://fhir.ee/sid/pid/mli ^property[=].valueCode = #MLI
* #https://fhir.ee/sid/pid/mli #https://fhir.ee/sid/pid/mli/ppn "Passport number of Mali" "Mali passinumber"
* #https://fhir.ee/sid/pid/mli #https://fhir.ee/sid/pid/mli/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mli #https://fhir.ee/sid/pid/mli/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/mli #https://fhir.ee/sid/pid/mli/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mli #https://fhir.ee/sid/pid/mli/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mli #https://fhir.ee/sid/pid/mli/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/mli #https://fhir.ee/sid/pid/mli/ppn ^property[=].valueCode = #MLI
* #https://fhir.ee/sid/pid/mli #https://fhir.ee/sid/pid/mli/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/mli #https://fhir.ee/sid/pid/mli/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MLI"
* #https://fhir.ee/sid/pid/mlt "Root identifier for person identification of country Malta" "Malta identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/mlt ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/mlt ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/mlt ^property[+].code = #country
* #https://fhir.ee/sid/pid/mlt ^property[=].valueCode = #MLT
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/ppn "Passport number of Malta" "Malta passinumber"
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/ppn ^property[=].valueCode = #MLT
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MLT"
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/ni "National identifier of Malta" "Malta personaalne identifikaator"
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/ni ^property[=].valueCode = #MLT
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/cz "ID-card number of Malta" "Malta ID-kaarti number"
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/cz ^property[=].valueCode = #MLT
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/dl "Driver's licence number of Malta" "Malta juhiloa number"
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/mlt #https://fhir.ee/sid/pid/mlt/dl ^property[=].valueCode = #MLT
* #https://fhir.ee/sid/pid/imn "Root identifier for person identification of country Isle of Man" "Mani saar identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/imn ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/imn ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/imn ^property[+].code = #country
* #https://fhir.ee/sid/pid/imn ^property[=].valueCode = #IMN
* #https://fhir.ee/sid/pid/imn #https://fhir.ee/sid/pid/imn/ppn "Passport number of Isle of Man" "Mani saar passinumber"
* #https://fhir.ee/sid/pid/imn #https://fhir.ee/sid/pid/imn/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/imn #https://fhir.ee/sid/pid/imn/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/imn #https://fhir.ee/sid/pid/imn/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/imn #https://fhir.ee/sid/pid/imn/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/imn #https://fhir.ee/sid/pid/imn/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/imn #https://fhir.ee/sid/pid/imn/ppn ^property[=].valueCode = #IMN
* #https://fhir.ee/sid/pid/imn #https://fhir.ee/sid/pid/imn/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/imn #https://fhir.ee/sid/pid/imn/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IMN"
* #https://fhir.ee/sid/pid/mar "Root identifier for person identification of country Morocco" "Maroko identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/mar ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/mar ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/mar ^property[+].code = #country
* #https://fhir.ee/sid/pid/mar ^property[=].valueCode = #MAR
* #https://fhir.ee/sid/pid/mar #https://fhir.ee/sid/pid/mar/ppn "Passport number of Morocco" "Maroko passinumber"
* #https://fhir.ee/sid/pid/mar #https://fhir.ee/sid/pid/mar/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mar #https://fhir.ee/sid/pid/mar/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/mar #https://fhir.ee/sid/pid/mar/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mar #https://fhir.ee/sid/pid/mar/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mar #https://fhir.ee/sid/pid/mar/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/mar #https://fhir.ee/sid/pid/mar/ppn ^property[=].valueCode = #MAR
* #https://fhir.ee/sid/pid/mar #https://fhir.ee/sid/pid/mar/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/mar #https://fhir.ee/sid/pid/mar/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MAR"
* #https://fhir.ee/sid/pid/mhl "Root identifier for person identification of country Marshall Islands" "Marshalli Saared identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/mhl ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/mhl ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/mhl ^property[+].code = #country
* #https://fhir.ee/sid/pid/mhl ^property[=].valueCode = #MHL
* #https://fhir.ee/sid/pid/mhl #https://fhir.ee/sid/pid/mhl/ppn "Passport number of Marshall Islands" "Marshalli Saared passinumber"
* #https://fhir.ee/sid/pid/mhl #https://fhir.ee/sid/pid/mhl/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mhl #https://fhir.ee/sid/pid/mhl/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/mhl #https://fhir.ee/sid/pid/mhl/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mhl #https://fhir.ee/sid/pid/mhl/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mhl #https://fhir.ee/sid/pid/mhl/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/mhl #https://fhir.ee/sid/pid/mhl/ppn ^property[=].valueCode = #MHL
* #https://fhir.ee/sid/pid/mhl #https://fhir.ee/sid/pid/mhl/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/mhl #https://fhir.ee/sid/pid/mhl/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MHL"
* #https://fhir.ee/sid/pid/mtq "Root identifier for person identification of country Martinique" "Martinique identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/mtq ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/mtq ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/mtq ^property[+].code = #country
* #https://fhir.ee/sid/pid/mtq ^property[=].valueCode = #MTQ
* #https://fhir.ee/sid/pid/mtq #https://fhir.ee/sid/pid/mtq/ppn "Passport number of Martinique" "Martinique passinumber"
* #https://fhir.ee/sid/pid/mtq #https://fhir.ee/sid/pid/mtq/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mtq #https://fhir.ee/sid/pid/mtq/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/mtq #https://fhir.ee/sid/pid/mtq/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mtq #https://fhir.ee/sid/pid/mtq/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mtq #https://fhir.ee/sid/pid/mtq/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/mtq #https://fhir.ee/sid/pid/mtq/ppn ^property[=].valueCode = #MTQ
* #https://fhir.ee/sid/pid/mtq #https://fhir.ee/sid/pid/mtq/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/mtq #https://fhir.ee/sid/pid/mtq/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MTQ"
* #https://fhir.ee/sid/pid/mrt "Root identifier for person identification of country Mauritania" "Mauritaania identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/mrt ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/mrt ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/mrt ^property[+].code = #country
* #https://fhir.ee/sid/pid/mrt ^property[=].valueCode = #MRT
* #https://fhir.ee/sid/pid/mrt #https://fhir.ee/sid/pid/mrt/ppn "Passport number of Mauritania" "Mauritaania passinumber"
* #https://fhir.ee/sid/pid/mrt #https://fhir.ee/sid/pid/mrt/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mrt #https://fhir.ee/sid/pid/mrt/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/mrt #https://fhir.ee/sid/pid/mrt/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mrt #https://fhir.ee/sid/pid/mrt/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mrt #https://fhir.ee/sid/pid/mrt/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/mrt #https://fhir.ee/sid/pid/mrt/ppn ^property[=].valueCode = #MRT
* #https://fhir.ee/sid/pid/mrt #https://fhir.ee/sid/pid/mrt/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/mrt #https://fhir.ee/sid/pid/mrt/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MRT"
* #https://fhir.ee/sid/pid/mus "Root identifier for person identification of country Mauritius" "Mauritius identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/mus ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/mus ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/mus ^property[+].code = #country
* #https://fhir.ee/sid/pid/mus ^property[=].valueCode = #MUS
* #https://fhir.ee/sid/pid/mus #https://fhir.ee/sid/pid/mus/ppn "Passport number of Mauritius" "Mauritius passinumber"
* #https://fhir.ee/sid/pid/mus #https://fhir.ee/sid/pid/mus/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mus #https://fhir.ee/sid/pid/mus/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/mus #https://fhir.ee/sid/pid/mus/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mus #https://fhir.ee/sid/pid/mus/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mus #https://fhir.ee/sid/pid/mus/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/mus #https://fhir.ee/sid/pid/mus/ppn ^property[=].valueCode = #MUS
* #https://fhir.ee/sid/pid/mus #https://fhir.ee/sid/pid/mus/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/mus #https://fhir.ee/sid/pid/mus/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MUS"
* #https://fhir.ee/sid/pid/myt "Root identifier for person identification of country Mayotte" "Mayotte identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/myt ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/myt ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/myt ^property[+].code = #country
* #https://fhir.ee/sid/pid/myt ^property[=].valueCode = #MYT
* #https://fhir.ee/sid/pid/myt #https://fhir.ee/sid/pid/myt/ppn "Passport number of Mayotte" "Mayotte passinumber"
* #https://fhir.ee/sid/pid/myt #https://fhir.ee/sid/pid/myt/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/myt #https://fhir.ee/sid/pid/myt/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/myt #https://fhir.ee/sid/pid/myt/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/myt #https://fhir.ee/sid/pid/myt/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/myt #https://fhir.ee/sid/pid/myt/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/myt #https://fhir.ee/sid/pid/myt/ppn ^property[=].valueCode = #MYT
* #https://fhir.ee/sid/pid/myt #https://fhir.ee/sid/pid/myt/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/myt #https://fhir.ee/sid/pid/myt/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MYT"
* #https://fhir.ee/sid/pid/mex "Root identifier for person identification of country Mexico" "Mehhiko identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/mex ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/mex ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/mex ^property[+].code = #country
* #https://fhir.ee/sid/pid/mex ^property[=].valueCode = #MEX
* #https://fhir.ee/sid/pid/mex #https://fhir.ee/sid/pid/mex/ppn "Passport number of Mexico" "Mehhiko passinumber"
* #https://fhir.ee/sid/pid/mex #https://fhir.ee/sid/pid/mex/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mex #https://fhir.ee/sid/pid/mex/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/mex #https://fhir.ee/sid/pid/mex/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mex #https://fhir.ee/sid/pid/mex/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mex #https://fhir.ee/sid/pid/mex/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/mex #https://fhir.ee/sid/pid/mex/ppn ^property[=].valueCode = #MEX
* #https://fhir.ee/sid/pid/mex #https://fhir.ee/sid/pid/mex/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/mex #https://fhir.ee/sid/pid/mex/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MEX"
* #https://fhir.ee/sid/pid/mex #https://fhir.ee/sid/pid/mex/ni "National identifier of Mexico" "Mehhiko personaalne identifikaator"
* #https://fhir.ee/sid/pid/mex #https://fhir.ee/sid/pid/mex/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mex #https://fhir.ee/sid/pid/mex/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/mex #https://fhir.ee/sid/pid/mex/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mex #https://fhir.ee/sid/pid/mex/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mex #https://fhir.ee/sid/pid/mex/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/mex #https://fhir.ee/sid/pid/mex/ni ^property[=].valueCode = #MEX
* #https://fhir.ee/sid/pid/fsm "Root identifier for person identification of country Micronesia" "Mikroneesia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/fsm ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/fsm ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/fsm ^property[+].code = #country
* #https://fhir.ee/sid/pid/fsm ^property[=].valueCode = #FSM
* #https://fhir.ee/sid/pid/fsm #https://fhir.ee/sid/pid/fsm/ppn "Passport number of Micronesia" "Mikroneesia passinumber"
* #https://fhir.ee/sid/pid/fsm #https://fhir.ee/sid/pid/fsm/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/fsm #https://fhir.ee/sid/pid/fsm/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/fsm #https://fhir.ee/sid/pid/fsm/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/fsm #https://fhir.ee/sid/pid/fsm/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/fsm #https://fhir.ee/sid/pid/fsm/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/fsm #https://fhir.ee/sid/pid/fsm/ppn ^property[=].valueCode = #FSM
* #https://fhir.ee/sid/pid/fsm #https://fhir.ee/sid/pid/fsm/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/fsm #https://fhir.ee/sid/pid/fsm/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-FSM"
* #https://fhir.ee/sid/pid/mda "Root identifier for person identification of country Moldova, Republic of" "Moldova identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/mda ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/mda ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/mda ^property[+].code = #country
* #https://fhir.ee/sid/pid/mda ^property[=].valueCode = #MDA
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/ppn "Passport number of Moldova, Republic of" "Moldova passinumber"
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/ppn ^property[=].valueCode = #MDA
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MDA"
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/ni "National identifier of Moldova, Republic of" "Moldova personaalne identifikaator"
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/ni ^property[=].valueCode = #MDA
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/cz "ID-card number of Moldova, Republic of" "Moldova ID-kaarti number"
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/cz ^property[=].valueCode = #MDA
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/dl "Driver's licence number of Moldova, Republic of" "Moldova juhiloa number"
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/mda #https://fhir.ee/sid/pid/mda/dl ^property[=].valueCode = #MDA
* #https://fhir.ee/sid/pid/mco "Root identifier for person identification of country Monaco" "Monaco identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/mco ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/mco ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/mco ^property[+].code = #country
* #https://fhir.ee/sid/pid/mco ^property[=].valueCode = #MCO
* #https://fhir.ee/sid/pid/mco #https://fhir.ee/sid/pid/mco/ppn "Passport number of Monaco" "Monaco passinumber"
* #https://fhir.ee/sid/pid/mco #https://fhir.ee/sid/pid/mco/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mco #https://fhir.ee/sid/pid/mco/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/mco #https://fhir.ee/sid/pid/mco/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mco #https://fhir.ee/sid/pid/mco/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mco #https://fhir.ee/sid/pid/mco/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/mco #https://fhir.ee/sid/pid/mco/ppn ^property[=].valueCode = #MCO
* #https://fhir.ee/sid/pid/mco #https://fhir.ee/sid/pid/mco/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/mco #https://fhir.ee/sid/pid/mco/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MCO"
* #https://fhir.ee/sid/pid/mng "Root identifier for person identification of country Mongolia" "Mongoolia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/mng ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/mng ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/mng ^property[+].code = #country
* #https://fhir.ee/sid/pid/mng ^property[=].valueCode = #MNG
* #https://fhir.ee/sid/pid/mng #https://fhir.ee/sid/pid/mng/ppn "Passport number of Mongolia" "Mongoolia passinumber"
* #https://fhir.ee/sid/pid/mng #https://fhir.ee/sid/pid/mng/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mng #https://fhir.ee/sid/pid/mng/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/mng #https://fhir.ee/sid/pid/mng/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mng #https://fhir.ee/sid/pid/mng/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mng #https://fhir.ee/sid/pid/mng/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/mng #https://fhir.ee/sid/pid/mng/ppn ^property[=].valueCode = #MNG
* #https://fhir.ee/sid/pid/mng #https://fhir.ee/sid/pid/mng/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/mng #https://fhir.ee/sid/pid/mng/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MNG"
* #https://fhir.ee/sid/pid/mne "Root identifier for person identification of country Montenegro" "Montenegro identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/mne ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/mne ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/mne ^property[+].code = #country
* #https://fhir.ee/sid/pid/mne ^property[=].valueCode = #MNE
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/ppn "Passport number of Montenegro" "Montenegro passinumber"
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/ppn ^property[=].valueCode = #MNE
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MNE"
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/ni "National identifier of Montenegro" "Montenegro personaalne identifikaator"
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/ni ^property[=].valueCode = #MNE
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/cz "ID-card number of Montenegro" "Montenegro ID-kaarti number"
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/cz ^property[=].valueCode = #MNE
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/dl "Driver's licence number of Montenegro" "Montenegro juhiloa number"
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/mne #https://fhir.ee/sid/pid/mne/dl ^property[=].valueCode = #MNE
* #https://fhir.ee/sid/pid/msr "Root identifier for person identification of country Montserrat" "Montserrat identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/msr ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/msr ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/msr ^property[+].code = #country
* #https://fhir.ee/sid/pid/msr ^property[=].valueCode = #MSR
* #https://fhir.ee/sid/pid/msr #https://fhir.ee/sid/pid/msr/ppn "Passport number of Montserrat" "Montserrat passinumber"
* #https://fhir.ee/sid/pid/msr #https://fhir.ee/sid/pid/msr/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/msr #https://fhir.ee/sid/pid/msr/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/msr #https://fhir.ee/sid/pid/msr/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/msr #https://fhir.ee/sid/pid/msr/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/msr #https://fhir.ee/sid/pid/msr/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/msr #https://fhir.ee/sid/pid/msr/ppn ^property[=].valueCode = #MSR
* #https://fhir.ee/sid/pid/msr #https://fhir.ee/sid/pid/msr/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/msr #https://fhir.ee/sid/pid/msr/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MSR"
* #https://fhir.ee/sid/pid/moz "Root identifier for person identification of country Mozambique" "Mosambiik identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/moz ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/moz ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/moz ^property[+].code = #country
* #https://fhir.ee/sid/pid/moz ^property[=].valueCode = #MOZ
* #https://fhir.ee/sid/pid/moz #https://fhir.ee/sid/pid/moz/ppn "Passport number of Mozambique" "Mosambiik passinumber"
* #https://fhir.ee/sid/pid/moz #https://fhir.ee/sid/pid/moz/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/moz #https://fhir.ee/sid/pid/moz/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/moz #https://fhir.ee/sid/pid/moz/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/moz #https://fhir.ee/sid/pid/moz/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/moz #https://fhir.ee/sid/pid/moz/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/moz #https://fhir.ee/sid/pid/moz/ppn ^property[=].valueCode = #MOZ
* #https://fhir.ee/sid/pid/moz #https://fhir.ee/sid/pid/moz/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/moz #https://fhir.ee/sid/pid/moz/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MOZ"
* #https://fhir.ee/sid/pid/xyy "Root identifier for person identification of country Areas not elsewhere specified" "Mujal nimetamata territooriumid identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/xyy ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/xyy ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/xyy ^property[+].code = #country
* #https://fhir.ee/sid/pid/xyy ^property[=].valueCode = #XYY
* #https://fhir.ee/sid/pid/xyy #https://fhir.ee/sid/pid/xyy/ppn "Passport number of Areas not elsewhere specified" "Mujal nimetamata territooriumid passinumber"
* #https://fhir.ee/sid/pid/xyy #https://fhir.ee/sid/pid/xyy/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/xyy #https://fhir.ee/sid/pid/xyy/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/xyy #https://fhir.ee/sid/pid/xyy/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/xyy #https://fhir.ee/sid/pid/xyy/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/xyy #https://fhir.ee/sid/pid/xyy/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/xyy #https://fhir.ee/sid/pid/xyy/ppn ^property[=].valueCode = #XYY
* #https://fhir.ee/sid/pid/xyy #https://fhir.ee/sid/pid/xyy/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/xyy #https://fhir.ee/sid/pid/xyy/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-XYY"
* #https://fhir.ee/sid/pid/xxx "Root identifier for person identification of country Not specified" "Määramata identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/xxx ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/xxx ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/xxx ^property[+].code = #country
* #https://fhir.ee/sid/pid/xxx ^property[=].valueCode = #XXX
* #https://fhir.ee/sid/pid/xxx #https://fhir.ee/sid/pid/xxx/ppn "Passport number of Not specified" "Määramata passinumber"
* #https://fhir.ee/sid/pid/xxx #https://fhir.ee/sid/pid/xxx/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/xxx #https://fhir.ee/sid/pid/xxx/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/xxx #https://fhir.ee/sid/pid/xxx/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/xxx #https://fhir.ee/sid/pid/xxx/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/xxx #https://fhir.ee/sid/pid/xxx/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/xxx #https://fhir.ee/sid/pid/xxx/ppn ^property[=].valueCode = #XXX
* #https://fhir.ee/sid/pid/xxx #https://fhir.ee/sid/pid/xxx/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/xxx #https://fhir.ee/sid/pid/xxx/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-XXX"
* #https://fhir.ee/sid/pid/mmr "Root identifier for person identification of country Myanmar" "Myanmar (Birma) identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/mmr ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/mmr ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/mmr ^property[+].code = #country
* #https://fhir.ee/sid/pid/mmr ^property[=].valueCode = #MMR
* #https://fhir.ee/sid/pid/mmr #https://fhir.ee/sid/pid/mmr/ppn "Passport number of Myanmar" "Myanmar (Birma) passinumber"
* #https://fhir.ee/sid/pid/mmr #https://fhir.ee/sid/pid/mmr/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mmr #https://fhir.ee/sid/pid/mmr/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/mmr #https://fhir.ee/sid/pid/mmr/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mmr #https://fhir.ee/sid/pid/mmr/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mmr #https://fhir.ee/sid/pid/mmr/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/mmr #https://fhir.ee/sid/pid/mmr/ppn ^property[=].valueCode = #MMR
* #https://fhir.ee/sid/pid/mmr #https://fhir.ee/sid/pid/mmr/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/mmr #https://fhir.ee/sid/pid/mmr/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MMR"
* #https://fhir.ee/sid/pid/nam "Root identifier for person identification of country Namibia" "Namiibia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/nam ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/nam ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/nam ^property[+].code = #country
* #https://fhir.ee/sid/pid/nam ^property[=].valueCode = #NAM
* #https://fhir.ee/sid/pid/nam #https://fhir.ee/sid/pid/nam/ppn "Passport number of Namibia" "Namiibia passinumber"
* #https://fhir.ee/sid/pid/nam #https://fhir.ee/sid/pid/nam/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/nam #https://fhir.ee/sid/pid/nam/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/nam #https://fhir.ee/sid/pid/nam/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/nam #https://fhir.ee/sid/pid/nam/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/nam #https://fhir.ee/sid/pid/nam/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/nam #https://fhir.ee/sid/pid/nam/ppn ^property[=].valueCode = #NAM
* #https://fhir.ee/sid/pid/nam #https://fhir.ee/sid/pid/nam/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/nam #https://fhir.ee/sid/pid/nam/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NAM"
* #https://fhir.ee/sid/pid/nru "Root identifier for person identification of country Nauru" "Nauru identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/nru ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/nru ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/nru ^property[+].code = #country
* #https://fhir.ee/sid/pid/nru ^property[=].valueCode = #NRU
* #https://fhir.ee/sid/pid/nru #https://fhir.ee/sid/pid/nru/ppn "Passport number of Nauru" "Nauru passinumber"
* #https://fhir.ee/sid/pid/nru #https://fhir.ee/sid/pid/nru/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/nru #https://fhir.ee/sid/pid/nru/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/nru #https://fhir.ee/sid/pid/nru/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/nru #https://fhir.ee/sid/pid/nru/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/nru #https://fhir.ee/sid/pid/nru/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/nru #https://fhir.ee/sid/pid/nru/ppn ^property[=].valueCode = #NRU
* #https://fhir.ee/sid/pid/nru #https://fhir.ee/sid/pid/nru/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/nru #https://fhir.ee/sid/pid/nru/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NRU"
* #https://fhir.ee/sid/pid/npl "Root identifier for person identification of country Nepal" "Nepal identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/npl ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/npl ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/npl ^property[+].code = #country
* #https://fhir.ee/sid/pid/npl ^property[=].valueCode = #NPL
* #https://fhir.ee/sid/pid/npl #https://fhir.ee/sid/pid/npl/ppn "Passport number of Nepal" "Nepal passinumber"
* #https://fhir.ee/sid/pid/npl #https://fhir.ee/sid/pid/npl/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/npl #https://fhir.ee/sid/pid/npl/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/npl #https://fhir.ee/sid/pid/npl/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/npl #https://fhir.ee/sid/pid/npl/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/npl #https://fhir.ee/sid/pid/npl/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/npl #https://fhir.ee/sid/pid/npl/ppn ^property[=].valueCode = #NPL
* #https://fhir.ee/sid/pid/npl #https://fhir.ee/sid/pid/npl/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/npl #https://fhir.ee/sid/pid/npl/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NPL"
* #https://fhir.ee/sid/pid/npl #https://fhir.ee/sid/pid/npl/ni "National identifier of Nepal" "Nepal personaalne identifikaator"
* #https://fhir.ee/sid/pid/npl #https://fhir.ee/sid/pid/npl/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/npl #https://fhir.ee/sid/pid/npl/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/npl #https://fhir.ee/sid/pid/npl/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/npl #https://fhir.ee/sid/pid/npl/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/npl #https://fhir.ee/sid/pid/npl/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/npl #https://fhir.ee/sid/pid/npl/ni ^property[=].valueCode = #NPL
* #https://fhir.ee/sid/pid/nic "Root identifier for person identification of country Nicaragua" "Nicaragua identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/nic ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/nic ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/nic ^property[+].code = #country
* #https://fhir.ee/sid/pid/nic ^property[=].valueCode = #NIC
* #https://fhir.ee/sid/pid/nic #https://fhir.ee/sid/pid/nic/ppn "Passport number of Nicaragua" "Nicaragua passinumber"
* #https://fhir.ee/sid/pid/nic #https://fhir.ee/sid/pid/nic/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/nic #https://fhir.ee/sid/pid/nic/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/nic #https://fhir.ee/sid/pid/nic/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/nic #https://fhir.ee/sid/pid/nic/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/nic #https://fhir.ee/sid/pid/nic/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/nic #https://fhir.ee/sid/pid/nic/ppn ^property[=].valueCode = #NIC
* #https://fhir.ee/sid/pid/nic #https://fhir.ee/sid/pid/nic/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/nic #https://fhir.ee/sid/pid/nic/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NIC"
* #https://fhir.ee/sid/pid/nga "Root identifier for person identification of country Nigeria" "Nigeeria identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/nga ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/nga ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/nga ^property[+].code = #country
* #https://fhir.ee/sid/pid/nga ^property[=].valueCode = #NGA
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/ppn "Passport number of Nigeria" "Nigeeria passinumber"
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/ppn ^property[=].valueCode = #NGA
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NGA"
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/ni "National identifier of Nigeria" "Nigeeria personaalne identifikaator"
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/ni ^property[=].valueCode = #NGA
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/dl "Driver's licence number of Nigeria" "Nigeeria juhiloa number"
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/nga #https://fhir.ee/sid/pid/nga/dl ^property[=].valueCode = #NGA
* #https://fhir.ee/sid/pid/ner "Root identifier for person identification of country Niger" "Niger identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/ner ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/ner ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/ner ^property[+].code = #country
* #https://fhir.ee/sid/pid/ner ^property[=].valueCode = #NER
* #https://fhir.ee/sid/pid/ner #https://fhir.ee/sid/pid/ner/ppn "Passport number of Niger" "Niger passinumber"
* #https://fhir.ee/sid/pid/ner #https://fhir.ee/sid/pid/ner/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ner #https://fhir.ee/sid/pid/ner/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/ner #https://fhir.ee/sid/pid/ner/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ner #https://fhir.ee/sid/pid/ner/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ner #https://fhir.ee/sid/pid/ner/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/ner #https://fhir.ee/sid/pid/ner/ppn ^property[=].valueCode = #NER
* #https://fhir.ee/sid/pid/ner #https://fhir.ee/sid/pid/ner/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/ner #https://fhir.ee/sid/pid/ner/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NER"
* #https://fhir.ee/sid/pid/niu "Root identifier for person identification of country Niue" "Niue identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/niu ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/niu ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/niu ^property[+].code = #country
* #https://fhir.ee/sid/pid/niu ^property[=].valueCode = #NIU
* #https://fhir.ee/sid/pid/niu #https://fhir.ee/sid/pid/niu/ppn "Passport number of Niue" "Niue passinumber"
* #https://fhir.ee/sid/pid/niu #https://fhir.ee/sid/pid/niu/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/niu #https://fhir.ee/sid/pid/niu/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/niu #https://fhir.ee/sid/pid/niu/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/niu #https://fhir.ee/sid/pid/niu/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/niu #https://fhir.ee/sid/pid/niu/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/niu #https://fhir.ee/sid/pid/niu/ppn ^property[=].valueCode = #NIU
* #https://fhir.ee/sid/pid/niu #https://fhir.ee/sid/pid/niu/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/niu #https://fhir.ee/sid/pid/niu/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NIU"
* #https://fhir.ee/sid/pid/nfk "Root identifier for person identification of country Norfolk Island" "Norfolk identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/nfk ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/nfk ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/nfk ^property[+].code = #country
* #https://fhir.ee/sid/pid/nfk ^property[=].valueCode = #NFK
* #https://fhir.ee/sid/pid/nfk #https://fhir.ee/sid/pid/nfk/ppn "Passport number of Norfolk Island" "Norfolk passinumber"
* #https://fhir.ee/sid/pid/nfk #https://fhir.ee/sid/pid/nfk/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/nfk #https://fhir.ee/sid/pid/nfk/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/nfk #https://fhir.ee/sid/pid/nfk/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/nfk #https://fhir.ee/sid/pid/nfk/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/nfk #https://fhir.ee/sid/pid/nfk/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/nfk #https://fhir.ee/sid/pid/nfk/ppn ^property[=].valueCode = #NFK
* #https://fhir.ee/sid/pid/nfk #https://fhir.ee/sid/pid/nfk/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/nfk #https://fhir.ee/sid/pid/nfk/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NFK"
* #https://fhir.ee/sid/pid/nor "Root identifier for person identification of country Norway" "Norra identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/nor ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/nor ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/nor ^property[+].code = #country
* #https://fhir.ee/sid/pid/nor ^property[=].valueCode = #NOR
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/ppn "Passport number of Norway" "Norra passinumber"
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/ppn ^property[=].valueCode = #NOR
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NOR"
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/ni "National identifier of Norway" "Norra personaalne identifikaator"
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/ni ^property[=].valueCode = #NOR
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/cz "ID-card number of Norway" "Norra ID-kaarti number"
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/cz ^property[=].valueCode = #NOR
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/dl "Driver's licence number of Norway" "Norra juhiloa number"
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/nor #https://fhir.ee/sid/pid/nor/dl ^property[=].valueCode = #NOR
* #https://fhir.ee/sid/pid/omn "Root identifier for person identification of country Oman" "Omaan identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/omn ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/omn ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/omn ^property[+].code = #country
* #https://fhir.ee/sid/pid/omn ^property[=].valueCode = #OMN
* #https://fhir.ee/sid/pid/omn #https://fhir.ee/sid/pid/omn/ppn "Passport number of Oman" "Omaan passinumber"
* #https://fhir.ee/sid/pid/omn #https://fhir.ee/sid/pid/omn/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/omn #https://fhir.ee/sid/pid/omn/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/omn #https://fhir.ee/sid/pid/omn/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/omn #https://fhir.ee/sid/pid/omn/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/omn #https://fhir.ee/sid/pid/omn/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/omn #https://fhir.ee/sid/pid/omn/ppn ^property[=].valueCode = #OMN
* #https://fhir.ee/sid/pid/omn #https://fhir.ee/sid/pid/omn/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/omn #https://fhir.ee/sid/pid/omn/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-OMN"
* #https://fhir.ee/sid/pid/png "Root identifier for person identification of country Papua New Guinea" "Paapua Uus-Guinea identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/png ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/png ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/png ^property[+].code = #country
* #https://fhir.ee/sid/pid/png ^property[=].valueCode = #PNG
* #https://fhir.ee/sid/pid/png #https://fhir.ee/sid/pid/png/ppn "Passport number of Papua New Guinea" "Paapua Uus-Guinea passinumber"
* #https://fhir.ee/sid/pid/png #https://fhir.ee/sid/pid/png/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/png #https://fhir.ee/sid/pid/png/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/png #https://fhir.ee/sid/pid/png/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/png #https://fhir.ee/sid/pid/png/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/png #https://fhir.ee/sid/pid/png/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/png #https://fhir.ee/sid/pid/png/ppn ^property[=].valueCode = #PNG
* #https://fhir.ee/sid/pid/png #https://fhir.ee/sid/pid/png/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/png #https://fhir.ee/sid/pid/png/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PNG"
* #https://fhir.ee/sid/pid/pak "Root identifier for person identification of country Pakistan" "Pakistan identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/pak ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/pak ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/pak ^property[+].code = #country
* #https://fhir.ee/sid/pid/pak ^property[=].valueCode = #PAK
* #https://fhir.ee/sid/pid/pak #https://fhir.ee/sid/pid/pak/ppn "Passport number of Pakistan" "Pakistan passinumber"
* #https://fhir.ee/sid/pid/pak #https://fhir.ee/sid/pid/pak/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/pak #https://fhir.ee/sid/pid/pak/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/pak #https://fhir.ee/sid/pid/pak/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/pak #https://fhir.ee/sid/pid/pak/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/pak #https://fhir.ee/sid/pid/pak/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/pak #https://fhir.ee/sid/pid/pak/ppn ^property[=].valueCode = #PAK
* #https://fhir.ee/sid/pid/pak #https://fhir.ee/sid/pid/pak/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/pak #https://fhir.ee/sid/pid/pak/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PAK"
* #https://fhir.ee/sid/pid/pak #https://fhir.ee/sid/pid/pak/ni "National identifier of Pakistan" "Pakistan personaalne identifikaator"
* #https://fhir.ee/sid/pid/pak #https://fhir.ee/sid/pid/pak/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/pak #https://fhir.ee/sid/pid/pak/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/pak #https://fhir.ee/sid/pid/pak/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/pak #https://fhir.ee/sid/pid/pak/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/pak #https://fhir.ee/sid/pid/pak/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/pak #https://fhir.ee/sid/pid/pak/ni ^property[=].valueCode = #PAK
* #https://fhir.ee/sid/pid/pse "Root identifier for person identification of country Palestinian Territory, Occupied" "Palestiina okupeeritud alad identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/pse ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/pse ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/pse ^property[+].code = #country
* #https://fhir.ee/sid/pid/pse ^property[=].valueCode = #PSE
* #https://fhir.ee/sid/pid/pse #https://fhir.ee/sid/pid/pse/ppn "Passport number of Palestinian Territory, Occupied" "Palestiina okupeeritud alad passinumber"
* #https://fhir.ee/sid/pid/pse #https://fhir.ee/sid/pid/pse/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/pse #https://fhir.ee/sid/pid/pse/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/pse #https://fhir.ee/sid/pid/pse/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/pse #https://fhir.ee/sid/pid/pse/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/pse #https://fhir.ee/sid/pid/pse/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/pse #https://fhir.ee/sid/pid/pse/ppn ^property[=].valueCode = #PSE
* #https://fhir.ee/sid/pid/pse #https://fhir.ee/sid/pid/pse/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/pse #https://fhir.ee/sid/pid/pse/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PSE"
* #https://fhir.ee/sid/pid/pan "Root identifier for person identification of country Panama" "Panama identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/pan ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/pan ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/pan ^property[+].code = #country
* #https://fhir.ee/sid/pid/pan ^property[=].valueCode = #PAN
* #https://fhir.ee/sid/pid/pan #https://fhir.ee/sid/pid/pan/ppn "Passport number of Panama" "Panama passinumber"
* #https://fhir.ee/sid/pid/pan #https://fhir.ee/sid/pid/pan/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/pan #https://fhir.ee/sid/pid/pan/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/pan #https://fhir.ee/sid/pid/pan/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/pan #https://fhir.ee/sid/pid/pan/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/pan #https://fhir.ee/sid/pid/pan/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/pan #https://fhir.ee/sid/pid/pan/ppn ^property[=].valueCode = #PAN
* #https://fhir.ee/sid/pid/pan #https://fhir.ee/sid/pid/pan/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/pan #https://fhir.ee/sid/pid/pan/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PAN"
* #https://fhir.ee/sid/pid/pry "Root identifier for person identification of country Paraguay" "Paraguay identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/pry ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/pry ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/pry ^property[+].code = #country
* #https://fhir.ee/sid/pid/pry ^property[=].valueCode = #PRY
* #https://fhir.ee/sid/pid/pry #https://fhir.ee/sid/pid/pry/ppn "Passport number of Paraguay" "Paraguay passinumber"
* #https://fhir.ee/sid/pid/pry #https://fhir.ee/sid/pid/pry/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/pry #https://fhir.ee/sid/pid/pry/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/pry #https://fhir.ee/sid/pid/pry/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/pry #https://fhir.ee/sid/pid/pry/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/pry #https://fhir.ee/sid/pid/pry/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/pry #https://fhir.ee/sid/pid/pry/ppn ^property[=].valueCode = #PRY
* #https://fhir.ee/sid/pid/pry #https://fhir.ee/sid/pid/pry/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/pry #https://fhir.ee/sid/pid/pry/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PRY"
* #https://fhir.ee/sid/pid/per "Root identifier for person identification of country Peru" "Peruu identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/per ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/per ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/per ^property[+].code = #country
* #https://fhir.ee/sid/pid/per ^property[=].valueCode = #PER
* #https://fhir.ee/sid/pid/per #https://fhir.ee/sid/pid/per/ppn "Passport number of Peru" "Peruu passinumber"
* #https://fhir.ee/sid/pid/per #https://fhir.ee/sid/pid/per/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/per #https://fhir.ee/sid/pid/per/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/per #https://fhir.ee/sid/pid/per/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/per #https://fhir.ee/sid/pid/per/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/per #https://fhir.ee/sid/pid/per/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/per #https://fhir.ee/sid/pid/per/ppn ^property[=].valueCode = #PER
* #https://fhir.ee/sid/pid/per #https://fhir.ee/sid/pid/per/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/per #https://fhir.ee/sid/pid/per/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PER"
* #https://fhir.ee/sid/pid/pcn "Root identifier for person identification of country Pitcairn" "Pitcairn identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/pcn ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/pcn ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/pcn ^property[+].code = #country
* #https://fhir.ee/sid/pid/pcn ^property[=].valueCode = #PCN
* #https://fhir.ee/sid/pid/pcn #https://fhir.ee/sid/pid/pcn/ppn "Passport number of Pitcairn" "Pitcairn passinumber"
* #https://fhir.ee/sid/pid/pcn #https://fhir.ee/sid/pid/pcn/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/pcn #https://fhir.ee/sid/pid/pcn/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/pcn #https://fhir.ee/sid/pid/pcn/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/pcn #https://fhir.ee/sid/pid/pcn/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/pcn #https://fhir.ee/sid/pid/pcn/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/pcn #https://fhir.ee/sid/pid/pcn/ppn ^property[=].valueCode = #PCN
* #https://fhir.ee/sid/pid/pcn #https://fhir.ee/sid/pid/pcn/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/pcn #https://fhir.ee/sid/pid/pcn/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PCN"
* #https://fhir.ee/sid/pid/pol "Root identifier for person identification of country Poland" "Poola identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/pol ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/pol ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/pol ^property[+].code = #country
* #https://fhir.ee/sid/pid/pol ^property[=].valueCode = #POL
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/ppn "Passport number of Poland" "Poola passinumber"
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/ppn ^property[=].valueCode = #POL
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-POL"
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/ni "National identifier of Poland" "Poola personaalne identifikaator"
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/ni ^property[=].valueCode = #POL
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/cz "ID-card number of Poland" "Poola ID-kaarti number"
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/cz ^property[=].valueCode = #POL
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/dl "Driver's licence number of Poland" "Poola juhiloa number"
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/pol #https://fhir.ee/sid/pid/pol/dl ^property[=].valueCode = #POL
* #https://fhir.ee/sid/pid/prt "Root identifier for person identification of country Portugal" "Portugal identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/prt ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/prt ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/prt ^property[+].code = #country
* #https://fhir.ee/sid/pid/prt ^property[=].valueCode = #PRT
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/ppn "Passport number of Portugal" "Portugal passinumber"
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/ppn ^property[=].valueCode = #PRT
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PRT"
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/ni "National identifier of Portugal" "Portugal personaalne identifikaator"
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/ni ^property[=].valueCode = #PRT
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/cz "ID-card number of Portugal" "Portugal ID-kaarti number"
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/cz ^property[=].valueCode = #PRT
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/dl "Driver's licence number of Portugal" "Portugal juhiloa number"
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/prt #https://fhir.ee/sid/pid/prt/dl ^property[=].valueCode = #PRT
* #https://fhir.ee/sid/pid/atf "Root identifier for person identification of country French Southern Territories" "Prantsuse Lõunaalad identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/atf ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/atf ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/atf ^property[+].code = #country
* #https://fhir.ee/sid/pid/atf ^property[=].valueCode = #ATF
* #https://fhir.ee/sid/pid/atf #https://fhir.ee/sid/pid/atf/ppn "Passport number of French Southern Territories" "Prantsuse Lõunaalad passinumber"
* #https://fhir.ee/sid/pid/atf #https://fhir.ee/sid/pid/atf/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/atf #https://fhir.ee/sid/pid/atf/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/atf #https://fhir.ee/sid/pid/atf/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/atf #https://fhir.ee/sid/pid/atf/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/atf #https://fhir.ee/sid/pid/atf/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/atf #https://fhir.ee/sid/pid/atf/ppn ^property[=].valueCode = #ATF
* #https://fhir.ee/sid/pid/atf #https://fhir.ee/sid/pid/atf/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/atf #https://fhir.ee/sid/pid/atf/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ATF"
* #https://fhir.ee/sid/pid/pyf "Root identifier for person identification of country French Polynesia" "Prantsuse Polüneesia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/pyf ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/pyf ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/pyf ^property[+].code = #country
* #https://fhir.ee/sid/pid/pyf ^property[=].valueCode = #PYF
* #https://fhir.ee/sid/pid/pyf #https://fhir.ee/sid/pid/pyf/ppn "Passport number of French Polynesia" "Prantsuse Polüneesia passinumber"
* #https://fhir.ee/sid/pid/pyf #https://fhir.ee/sid/pid/pyf/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/pyf #https://fhir.ee/sid/pid/pyf/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/pyf #https://fhir.ee/sid/pid/pyf/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/pyf #https://fhir.ee/sid/pid/pyf/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/pyf #https://fhir.ee/sid/pid/pyf/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/pyf #https://fhir.ee/sid/pid/pyf/ppn ^property[=].valueCode = #PYF
* #https://fhir.ee/sid/pid/pyf #https://fhir.ee/sid/pid/pyf/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/pyf #https://fhir.ee/sid/pid/pyf/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PYF"
* #https://fhir.ee/sid/pid/fra "Root identifier for person identification of country France" "Prantsusmaa identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/fra ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/fra ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/fra ^property[+].code = #country
* #https://fhir.ee/sid/pid/fra ^property[=].valueCode = #FRA
* #https://fhir.ee/sid/pid/fra #https://fhir.ee/sid/pid/fra/ppn "Passport number of France" "Prantsusmaa passinumber"
* #https://fhir.ee/sid/pid/fra #https://fhir.ee/sid/pid/fra/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/fra #https://fhir.ee/sid/pid/fra/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/fra #https://fhir.ee/sid/pid/fra/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/fra #https://fhir.ee/sid/pid/fra/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/fra #https://fhir.ee/sid/pid/fra/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/fra #https://fhir.ee/sid/pid/fra/ppn ^property[=].valueCode = #FRA
* #https://fhir.ee/sid/pid/fra #https://fhir.ee/sid/pid/fra/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/fra #https://fhir.ee/sid/pid/fra/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-FRA"
* #https://fhir.ee/sid/pid/pri "Root identifier for person identification of country Puerto Rico" "Puerto Rico identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/pri ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/pri ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/pri ^property[+].code = #country
* #https://fhir.ee/sid/pid/pri ^property[=].valueCode = #PRI
* #https://fhir.ee/sid/pid/pri #https://fhir.ee/sid/pid/pri/ppn "Passport number of Puerto Rico" "Puerto Rico passinumber"
* #https://fhir.ee/sid/pid/pri #https://fhir.ee/sid/pid/pri/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/pri #https://fhir.ee/sid/pid/pri/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/pri #https://fhir.ee/sid/pid/pri/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/pri #https://fhir.ee/sid/pid/pri/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/pri #https://fhir.ee/sid/pid/pri/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/pri #https://fhir.ee/sid/pid/pri/ppn ^property[=].valueCode = #PRI
* #https://fhir.ee/sid/pid/pri #https://fhir.ee/sid/pid/pri/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/pri #https://fhir.ee/sid/pid/pri/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PRI"
* #https://fhir.ee/sid/pid/mnp "Root identifier for person identification of country Northern Mariana Islands" "Põhja-Mariaanid identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/mnp ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/mnp ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/mnp ^property[+].code = #country
* #https://fhir.ee/sid/pid/mnp ^property[=].valueCode = #MNP
* #https://fhir.ee/sid/pid/mnp #https://fhir.ee/sid/pid/mnp/ppn "Passport number of Northern Mariana Islands" "Põhja-Mariaanid passinumber"
* #https://fhir.ee/sid/pid/mnp #https://fhir.ee/sid/pid/mnp/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/mnp #https://fhir.ee/sid/pid/mnp/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/mnp #https://fhir.ee/sid/pid/mnp/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/mnp #https://fhir.ee/sid/pid/mnp/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/mnp #https://fhir.ee/sid/pid/mnp/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/mnp #https://fhir.ee/sid/pid/mnp/ppn ^property[=].valueCode = #MNP
* #https://fhir.ee/sid/pid/mnp #https://fhir.ee/sid/pid/mnp/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/mnp #https://fhir.ee/sid/pid/mnp/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MNP"
* #https://fhir.ee/sid/pid/vat "Root identifier for person identification of country Holy See (Vatican City State)" "Püha Tool (Vatikan) identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/vat ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/vat ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/vat ^property[+].code = #country
* #https://fhir.ee/sid/pid/vat ^property[=].valueCode = #VAT
* #https://fhir.ee/sid/pid/vat #https://fhir.ee/sid/pid/vat/ppn "Passport number of Holy See (Vatican City State)" "Püha Tool (Vatikan) passinumber"
* #https://fhir.ee/sid/pid/vat #https://fhir.ee/sid/pid/vat/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/vat #https://fhir.ee/sid/pid/vat/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/vat #https://fhir.ee/sid/pid/vat/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/vat #https://fhir.ee/sid/pid/vat/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/vat #https://fhir.ee/sid/pid/vat/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/vat #https://fhir.ee/sid/pid/vat/ppn ^property[=].valueCode = #VAT
* #https://fhir.ee/sid/pid/vat #https://fhir.ee/sid/pid/vat/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/vat #https://fhir.ee/sid/pid/vat/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VAT"
* #https://fhir.ee/sid/pid/reu "Root identifier for person identification of country Réunion" "Réunion identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/reu ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/reu ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/reu ^property[+].code = #country
* #https://fhir.ee/sid/pid/reu ^property[=].valueCode = #REU
* #https://fhir.ee/sid/pid/reu #https://fhir.ee/sid/pid/reu/ppn "Passport number of Réunion" "Réunion passinumber"
* #https://fhir.ee/sid/pid/reu #https://fhir.ee/sid/pid/reu/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/reu #https://fhir.ee/sid/pid/reu/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/reu #https://fhir.ee/sid/pid/reu/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/reu #https://fhir.ee/sid/pid/reu/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/reu #https://fhir.ee/sid/pid/reu/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/reu #https://fhir.ee/sid/pid/reu/ppn ^property[=].valueCode = #REU
* #https://fhir.ee/sid/pid/reu #https://fhir.ee/sid/pid/reu/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/reu #https://fhir.ee/sid/pid/reu/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-REU"
* #https://fhir.ee/sid/pid/swe "Root identifier for person identification of country Sweden" "Rootsi identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/swe ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/swe ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/swe ^property[+].code = #country
* #https://fhir.ee/sid/pid/swe ^property[=].valueCode = #SWE
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/ppn "Passport number of Sweden" "Rootsi passinumber"
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/ppn ^property[=].valueCode = #SWE
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SWE"
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/ni "National identifier of Sweden" "Rootsi personaalne identifikaator"
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/ni ^property[=].valueCode = #SWE
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/cz "ID-card number of Sweden" "Rootsi ID-kaarti number"
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/cz ^property[=].valueCode = #SWE
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/dl "Driver's licence number of Sweden" "Rootsi juhiloa number"
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/swe #https://fhir.ee/sid/pid/swe/dl ^property[=].valueCode = #SWE
* #https://fhir.ee/sid/pid/rou "Root identifier for person identification of country Romania" "Rumeenia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/rou ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/rou ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/rou ^property[+].code = #country
* #https://fhir.ee/sid/pid/rou ^property[=].valueCode = #ROU
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/ppn "Passport number of Romania" "Rumeenia passinumber"
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/ppn ^property[=].valueCode = #ROU
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ROU"
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/ni "National identifier of Romania" "Rumeenia personaalne identifikaator"
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/ni ^property[=].valueCode = #ROU
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/cz "ID-card number of Romania" "Rumeenia ID-kaarti number"
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/cz ^property[=].valueCode = #ROU
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/dl "Driver's licence number of Romania" "Rumeenia juhiloa number"
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/rou #https://fhir.ee/sid/pid/rou/dl ^property[=].valueCode = #ROU
* #https://fhir.ee/sid/pid/rwa "Root identifier for person identification of country Rwanda" "Rwanda identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/rwa ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/rwa ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/rwa ^property[+].code = #country
* #https://fhir.ee/sid/pid/rwa ^property[=].valueCode = #RWA
* #https://fhir.ee/sid/pid/rwa #https://fhir.ee/sid/pid/rwa/ppn "Passport number of Rwanda" "Rwanda passinumber"
* #https://fhir.ee/sid/pid/rwa #https://fhir.ee/sid/pid/rwa/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/rwa #https://fhir.ee/sid/pid/rwa/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/rwa #https://fhir.ee/sid/pid/rwa/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/rwa #https://fhir.ee/sid/pid/rwa/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/rwa #https://fhir.ee/sid/pid/rwa/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/rwa #https://fhir.ee/sid/pid/rwa/ppn ^property[=].valueCode = #RWA
* #https://fhir.ee/sid/pid/rwa #https://fhir.ee/sid/pid/rwa/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/rwa #https://fhir.ee/sid/pid/rwa/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-RWA"
* #https://fhir.ee/sid/pid/slb "Root identifier for person identification of country Solomon Islands" "Saalomoni Saared identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/slb ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/slb ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/slb ^property[+].code = #country
* #https://fhir.ee/sid/pid/slb ^property[=].valueCode = #SLB
* #https://fhir.ee/sid/pid/slb #https://fhir.ee/sid/pid/slb/ppn "Passport number of Solomon Islands" "Saalomoni Saared passinumber"
* #https://fhir.ee/sid/pid/slb #https://fhir.ee/sid/pid/slb/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/slb #https://fhir.ee/sid/pid/slb/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/slb #https://fhir.ee/sid/pid/slb/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/slb #https://fhir.ee/sid/pid/slb/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/slb #https://fhir.ee/sid/pid/slb/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/slb #https://fhir.ee/sid/pid/slb/ppn ^property[=].valueCode = #SLB
* #https://fhir.ee/sid/pid/slb #https://fhir.ee/sid/pid/slb/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/slb #https://fhir.ee/sid/pid/slb/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SLB"
* #https://fhir.ee/sid/pid/kna "Root identifier for person identification of country Saint Kitts and Nevis" "Saint Kitts ja Nevis identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/kna ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/kna ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/kna ^property[+].code = #country
* #https://fhir.ee/sid/pid/kna ^property[=].valueCode = #KNA
* #https://fhir.ee/sid/pid/kna #https://fhir.ee/sid/pid/kna/ppn "Passport number of Saint Kitts and Nevis" "Saint Kitts ja Nevis passinumber"
* #https://fhir.ee/sid/pid/kna #https://fhir.ee/sid/pid/kna/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/kna #https://fhir.ee/sid/pid/kna/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/kna #https://fhir.ee/sid/pid/kna/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/kna #https://fhir.ee/sid/pid/kna/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/kna #https://fhir.ee/sid/pid/kna/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/kna #https://fhir.ee/sid/pid/kna/ppn ^property[=].valueCode = #KNA
* #https://fhir.ee/sid/pid/kna #https://fhir.ee/sid/pid/kna/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/kna #https://fhir.ee/sid/pid/kna/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KNA"
* #https://fhir.ee/sid/pid/shn "Root identifier for person identification of country Saint Helena" "Saint Helena identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/shn ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/shn ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/shn ^property[+].code = #country
* #https://fhir.ee/sid/pid/shn ^property[=].valueCode = #SHN
* #https://fhir.ee/sid/pid/shn #https://fhir.ee/sid/pid/shn/ppn "Passport number of Saint Helena" "Saint Helena passinumber"
* #https://fhir.ee/sid/pid/shn #https://fhir.ee/sid/pid/shn/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/shn #https://fhir.ee/sid/pid/shn/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/shn #https://fhir.ee/sid/pid/shn/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/shn #https://fhir.ee/sid/pid/shn/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/shn #https://fhir.ee/sid/pid/shn/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/shn #https://fhir.ee/sid/pid/shn/ppn ^property[=].valueCode = #SHN
* #https://fhir.ee/sid/pid/shn #https://fhir.ee/sid/pid/shn/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/shn #https://fhir.ee/sid/pid/shn/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SHN"
* #https://fhir.ee/sid/pid/lca "Root identifier for person identification of country Saint Lucia" "Saint Lucia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/lca ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/lca ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/lca ^property[+].code = #country
* #https://fhir.ee/sid/pid/lca ^property[=].valueCode = #LCA
* #https://fhir.ee/sid/pid/lca #https://fhir.ee/sid/pid/lca/ppn "Passport number of Saint Lucia" "Saint Lucia passinumber"
* #https://fhir.ee/sid/pid/lca #https://fhir.ee/sid/pid/lca/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/lca #https://fhir.ee/sid/pid/lca/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/lca #https://fhir.ee/sid/pid/lca/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/lca #https://fhir.ee/sid/pid/lca/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/lca #https://fhir.ee/sid/pid/lca/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/lca #https://fhir.ee/sid/pid/lca/ppn ^property[=].valueCode = #LCA
* #https://fhir.ee/sid/pid/lca #https://fhir.ee/sid/pid/lca/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/lca #https://fhir.ee/sid/pid/lca/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LCA"
* #https://fhir.ee/sid/pid/spm "Root identifier for person identification of country Saint Pierre and Miquelon" "Saint Pierre ja Miquelon identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/spm ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/spm ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/spm ^property[+].code = #country
* #https://fhir.ee/sid/pid/spm ^property[=].valueCode = #SPM
* #https://fhir.ee/sid/pid/spm #https://fhir.ee/sid/pid/spm/ppn "Passport number of Saint Pierre and Miquelon" "Saint Pierre ja Miquelon passinumber"
* #https://fhir.ee/sid/pid/spm #https://fhir.ee/sid/pid/spm/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/spm #https://fhir.ee/sid/pid/spm/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/spm #https://fhir.ee/sid/pid/spm/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/spm #https://fhir.ee/sid/pid/spm/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/spm #https://fhir.ee/sid/pid/spm/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/spm #https://fhir.ee/sid/pid/spm/ppn ^property[=].valueCode = #SPM
* #https://fhir.ee/sid/pid/spm #https://fhir.ee/sid/pid/spm/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/spm #https://fhir.ee/sid/pid/spm/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SPM"
* #https://fhir.ee/sid/pid/vct "Root identifier for person identification of country Saint Vincent and the Grenadines" "Saint Vincent ja Grenadiinid identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/vct ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/vct ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/vct ^property[+].code = #country
* #https://fhir.ee/sid/pid/vct ^property[=].valueCode = #VCT
* #https://fhir.ee/sid/pid/vct #https://fhir.ee/sid/pid/vct/ppn "Passport number of Saint Vincent and the Grenadines" "Saint Vincent ja Grenadiinid passinumber"
* #https://fhir.ee/sid/pid/vct #https://fhir.ee/sid/pid/vct/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/vct #https://fhir.ee/sid/pid/vct/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/vct #https://fhir.ee/sid/pid/vct/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/vct #https://fhir.ee/sid/pid/vct/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/vct #https://fhir.ee/sid/pid/vct/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/vct #https://fhir.ee/sid/pid/vct/ppn ^property[=].valueCode = #VCT
* #https://fhir.ee/sid/pid/vct #https://fhir.ee/sid/pid/vct/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/vct #https://fhir.ee/sid/pid/vct/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VCT"
* #https://fhir.ee/sid/pid/deu "Root identifier for person identification of country Germany" "Saksamaa identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/deu ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/deu ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/deu ^property[+].code = #country
* #https://fhir.ee/sid/pid/deu ^property[=].valueCode = #DEU
* #https://fhir.ee/sid/pid/deu #https://fhir.ee/sid/pid/deu/ppn "Passport number of Germany" "Saksamaa passinumber"
* #https://fhir.ee/sid/pid/deu #https://fhir.ee/sid/pid/deu/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/deu #https://fhir.ee/sid/pid/deu/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/deu #https://fhir.ee/sid/pid/deu/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/deu #https://fhir.ee/sid/pid/deu/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/deu #https://fhir.ee/sid/pid/deu/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/deu #https://fhir.ee/sid/pid/deu/ppn ^property[=].valueCode = #DEU
* #https://fhir.ee/sid/pid/deu #https://fhir.ee/sid/pid/deu/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/deu #https://fhir.ee/sid/pid/deu/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-DEU"
* #https://fhir.ee/sid/pid/zmb "Root identifier for person identification of country Zambia" "Sambia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/zmb ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/zmb ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/zmb ^property[+].code = #country
* #https://fhir.ee/sid/pid/zmb ^property[=].valueCode = #ZMB
* #https://fhir.ee/sid/pid/zmb #https://fhir.ee/sid/pid/zmb/ppn "Passport number of Zambia" "Sambia passinumber"
* #https://fhir.ee/sid/pid/zmb #https://fhir.ee/sid/pid/zmb/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/zmb #https://fhir.ee/sid/pid/zmb/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/zmb #https://fhir.ee/sid/pid/zmb/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/zmb #https://fhir.ee/sid/pid/zmb/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/zmb #https://fhir.ee/sid/pid/zmb/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/zmb #https://fhir.ee/sid/pid/zmb/ppn ^property[=].valueCode = #ZMB
* #https://fhir.ee/sid/pid/zmb #https://fhir.ee/sid/pid/zmb/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/zmb #https://fhir.ee/sid/pid/zmb/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ZMB"
* #https://fhir.ee/sid/pid/wsm "Root identifier for person identification of country Samoa" "Samoa identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/wsm ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/wsm ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/wsm ^property[+].code = #country
* #https://fhir.ee/sid/pid/wsm ^property[=].valueCode = #WSM
* #https://fhir.ee/sid/pid/wsm #https://fhir.ee/sid/pid/wsm/ppn "Passport number of Samoa" "Samoa passinumber"
* #https://fhir.ee/sid/pid/wsm #https://fhir.ee/sid/pid/wsm/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/wsm #https://fhir.ee/sid/pid/wsm/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/wsm #https://fhir.ee/sid/pid/wsm/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/wsm #https://fhir.ee/sid/pid/wsm/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/wsm #https://fhir.ee/sid/pid/wsm/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/wsm #https://fhir.ee/sid/pid/wsm/ppn ^property[=].valueCode = #WSM
* #https://fhir.ee/sid/pid/wsm #https://fhir.ee/sid/pid/wsm/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/wsm #https://fhir.ee/sid/pid/wsm/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-WSM"
* #https://fhir.ee/sid/pid/smr "Root identifier for person identification of country San Marino" "San Marino identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/smr ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/smr ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/smr ^property[+].code = #country
* #https://fhir.ee/sid/pid/smr ^property[=].valueCode = #SMR
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/ppn "Passport number of San Marino" "San Marino passinumber"
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/ppn ^property[=].valueCode = #SMR
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SMR"
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/ni "National identifier of San Marino" "San Marino personaalne identifikaator"
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/ni ^property[=].valueCode = #SMR
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/cz "ID-card number of San Marino" "San Marino ID-kaarti number"
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/cz ^property[=].valueCode = #SMR
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/dl "Driver's licence number of San Marino" "San Marino juhiloa number"
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/smr #https://fhir.ee/sid/pid/smr/dl ^property[=].valueCode = #SMR
* #https://fhir.ee/sid/pid/stp "Root identifier for person identification of country Sao Tome and Principe" "Sao Tomé ja Principe identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/stp ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/stp ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/stp ^property[+].code = #country
* #https://fhir.ee/sid/pid/stp ^property[=].valueCode = #STP
* #https://fhir.ee/sid/pid/stp #https://fhir.ee/sid/pid/stp/ppn "Passport number of Sao Tome and Principe" "Sao Tomé ja Principe passinumber"
* #https://fhir.ee/sid/pid/stp #https://fhir.ee/sid/pid/stp/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/stp #https://fhir.ee/sid/pid/stp/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/stp #https://fhir.ee/sid/pid/stp/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/stp #https://fhir.ee/sid/pid/stp/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/stp #https://fhir.ee/sid/pid/stp/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/stp #https://fhir.ee/sid/pid/stp/ppn ^property[=].valueCode = #STP
* #https://fhir.ee/sid/pid/stp #https://fhir.ee/sid/pid/stp/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/stp #https://fhir.ee/sid/pid/stp/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-STP"
* #https://fhir.ee/sid/pid/sau "Root identifier for person identification of country Saudi Arabia" "Saudi Araabia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/sau ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/sau ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/sau ^property[+].code = #country
* #https://fhir.ee/sid/pid/sau ^property[=].valueCode = #SAU
* #https://fhir.ee/sid/pid/sau #https://fhir.ee/sid/pid/sau/ppn "Passport number of Saudi Arabia" "Saudi Araabia passinumber"
* #https://fhir.ee/sid/pid/sau #https://fhir.ee/sid/pid/sau/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/sau #https://fhir.ee/sid/pid/sau/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/sau #https://fhir.ee/sid/pid/sau/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/sau #https://fhir.ee/sid/pid/sau/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/sau #https://fhir.ee/sid/pid/sau/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/sau #https://fhir.ee/sid/pid/sau/ppn ^property[=].valueCode = #SAU
* #https://fhir.ee/sid/pid/sau #https://fhir.ee/sid/pid/sau/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/sau #https://fhir.ee/sid/pid/sau/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SAU"
* #https://fhir.ee/sid/pid/syc "Root identifier for person identification of country Seychelles" "Seišellid identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/syc ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/syc ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/syc ^property[+].code = #country
* #https://fhir.ee/sid/pid/syc ^property[=].valueCode = #SYC
* #https://fhir.ee/sid/pid/syc #https://fhir.ee/sid/pid/syc/ppn "Passport number of Seychelles" "Seišellid passinumber"
* #https://fhir.ee/sid/pid/syc #https://fhir.ee/sid/pid/syc/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/syc #https://fhir.ee/sid/pid/syc/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/syc #https://fhir.ee/sid/pid/syc/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/syc #https://fhir.ee/sid/pid/syc/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/syc #https://fhir.ee/sid/pid/syc/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/syc #https://fhir.ee/sid/pid/syc/ppn ^property[=].valueCode = #SYC
* #https://fhir.ee/sid/pid/syc #https://fhir.ee/sid/pid/syc/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/syc #https://fhir.ee/sid/pid/syc/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SYC"
* #https://fhir.ee/sid/pid/sen "Root identifier for person identification of country Senegal" "Senegal identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/sen ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/sen ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/sen ^property[+].code = #country
* #https://fhir.ee/sid/pid/sen ^property[=].valueCode = #SEN
* #https://fhir.ee/sid/pid/sen #https://fhir.ee/sid/pid/sen/ppn "Passport number of Senegal" "Senegal passinumber"
* #https://fhir.ee/sid/pid/sen #https://fhir.ee/sid/pid/sen/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/sen #https://fhir.ee/sid/pid/sen/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/sen #https://fhir.ee/sid/pid/sen/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/sen #https://fhir.ee/sid/pid/sen/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/sen #https://fhir.ee/sid/pid/sen/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/sen #https://fhir.ee/sid/pid/sen/ppn ^property[=].valueCode = #SEN
* #https://fhir.ee/sid/pid/sen #https://fhir.ee/sid/pid/sen/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/sen #https://fhir.ee/sid/pid/sen/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SEN"
* #https://fhir.ee/sid/pid/srb "Root identifier for person identification of country Serbia" "Serbia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/srb ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/srb ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/srb ^property[+].code = #country
* #https://fhir.ee/sid/pid/srb ^property[=].valueCode = #SRB
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/ppn "Passport number of Serbia" "Serbia passinumber"
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/ppn ^property[=].valueCode = #SRB
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SRB"
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/ni "National identifier of Serbia" "Serbia personaalne identifikaator"
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/ni ^property[=].valueCode = #SRB
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/cz "ID-card number of Serbia" "Serbia ID-kaarti number"
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/cz ^property[=].valueCode = #SRB
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/dl "Driver's licence number of Serbia" "Serbia juhiloa number"
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/srb #https://fhir.ee/sid/pid/srb/dl ^property[=].valueCode = #SRB
* #https://fhir.ee/sid/pid/sle "Root identifier for person identification of country Sierra Leone" "Sierra Leone identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/sle ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/sle ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/sle ^property[+].code = #country
* #https://fhir.ee/sid/pid/sle ^property[=].valueCode = #SLE
* #https://fhir.ee/sid/pid/sle #https://fhir.ee/sid/pid/sle/ppn "Passport number of Sierra Leone" "Sierra Leone passinumber"
* #https://fhir.ee/sid/pid/sle #https://fhir.ee/sid/pid/sle/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/sle #https://fhir.ee/sid/pid/sle/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/sle #https://fhir.ee/sid/pid/sle/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/sle #https://fhir.ee/sid/pid/sle/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/sle #https://fhir.ee/sid/pid/sle/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/sle #https://fhir.ee/sid/pid/sle/ppn ^property[=].valueCode = #SLE
* #https://fhir.ee/sid/pid/sle #https://fhir.ee/sid/pid/sle/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/sle #https://fhir.ee/sid/pid/sle/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SLE"
* #https://fhir.ee/sid/pid/sgp "Root identifier for person identification of country Singapore" "Singapur identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/sgp ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/sgp ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/sgp ^property[+].code = #country
* #https://fhir.ee/sid/pid/sgp ^property[=].valueCode = #SGP
* #https://fhir.ee/sid/pid/sgp #https://fhir.ee/sid/pid/sgp/ppn "Passport number of Singapore" "Singapur passinumber"
* #https://fhir.ee/sid/pid/sgp #https://fhir.ee/sid/pid/sgp/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/sgp #https://fhir.ee/sid/pid/sgp/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/sgp #https://fhir.ee/sid/pid/sgp/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/sgp #https://fhir.ee/sid/pid/sgp/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/sgp #https://fhir.ee/sid/pid/sgp/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/sgp #https://fhir.ee/sid/pid/sgp/ppn ^property[=].valueCode = #SGP
* #https://fhir.ee/sid/pid/sgp #https://fhir.ee/sid/pid/sgp/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/sgp #https://fhir.ee/sid/pid/sgp/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SGP"
* #https://fhir.ee/sid/pid/sgp #https://fhir.ee/sid/pid/sgp/ni "National identifier of Singapore" "Singapur personaalne identifikaator"
* #https://fhir.ee/sid/pid/sgp #https://fhir.ee/sid/pid/sgp/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/sgp #https://fhir.ee/sid/pid/sgp/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/sgp #https://fhir.ee/sid/pid/sgp/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/sgp #https://fhir.ee/sid/pid/sgp/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/sgp #https://fhir.ee/sid/pid/sgp/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/sgp #https://fhir.ee/sid/pid/sgp/ni ^property[=].valueCode = #SGP
* #https://fhir.ee/sid/pid/svk "Root identifier for person identification of country Slovakia" "Slovakkia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/svk ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/svk ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/svk ^property[+].code = #country
* #https://fhir.ee/sid/pid/svk ^property[=].valueCode = #SVK
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/ppn "Passport number of Slovakia" "Slovakkia passinumber"
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/ppn ^property[=].valueCode = #SVK
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SVK"
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/ni "National identifier of Slovakia" "Slovakkia personaalne identifikaator"
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/ni ^property[=].valueCode = #SVK
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/cz "ID-card number of Slovakia" "Slovakkia ID-kaarti number"
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/cz ^property[=].valueCode = #SVK
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/dl "Driver's licence number of Slovakia" "Slovakkia juhiloa number"
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/svk #https://fhir.ee/sid/pid/svk/dl ^property[=].valueCode = #SVK
* #https://fhir.ee/sid/pid/svn "Root identifier for person identification of country Slovenia" "Sloveenia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/svn ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/svn ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/svn ^property[+].code = #country
* #https://fhir.ee/sid/pid/svn ^property[=].valueCode = #SVN
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/ppn "Passport number of Slovenia" "Sloveenia passinumber"
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/ppn ^property[=].valueCode = #SVN
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SVN"
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/ni "National identifier of Slovenia" "Sloveenia personaalne identifikaator"
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/ni ^property[=].valueCode = #SVN
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/cz "ID-card number of Slovenia" "Sloveenia ID-kaarti number"
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/cz ^property[=].valueCode = #SVN
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/dl "Driver's licence number of Slovenia" "Sloveenia juhiloa number"
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/svn #https://fhir.ee/sid/pid/svn/dl ^property[=].valueCode = #SVN
* #https://fhir.ee/sid/pid/som "Root identifier for person identification of country Somalia" "Somaalia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/som ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/som ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/som ^property[+].code = #country
* #https://fhir.ee/sid/pid/som ^property[=].valueCode = #SOM
* #https://fhir.ee/sid/pid/som #https://fhir.ee/sid/pid/som/ppn "Passport number of Somalia" "Somaalia passinumber"
* #https://fhir.ee/sid/pid/som #https://fhir.ee/sid/pid/som/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/som #https://fhir.ee/sid/pid/som/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/som #https://fhir.ee/sid/pid/som/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/som #https://fhir.ee/sid/pid/som/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/som #https://fhir.ee/sid/pid/som/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/som #https://fhir.ee/sid/pid/som/ppn ^property[=].valueCode = #SOM
* #https://fhir.ee/sid/pid/som #https://fhir.ee/sid/pid/som/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/som #https://fhir.ee/sid/pid/som/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SOM"
* #https://fhir.ee/sid/pid/fin "Root identifier for person identification of country Finland" "Soome identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/fin ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/fin ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/fin ^property[+].code = #country
* #https://fhir.ee/sid/pid/fin ^property[=].valueCode = #FIN
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/ppn "Passport number of Finland" "Soome passinumber"
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/ppn ^property[=].valueCode = #FIN
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-FIN"
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/ni "National identifier of Finland" "Soome personaalne identifikaator"
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/ni ^property[=].valueCode = #FIN
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/cz "ID-card number of Finland" "Soome ID-kaarti number"
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/cz ^property[=].valueCode = #FIN
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/dl "Driver's licence number of Finland" "Soome juhiloa number"
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/fin #https://fhir.ee/sid/pid/fin/dl ^property[=].valueCode = #FIN
* #https://fhir.ee/sid/pid/lka "Root identifier for person identification of country Sri Lanka" "Sri Lanka identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/lka ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/lka ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/lka ^property[+].code = #country
* #https://fhir.ee/sid/pid/lka ^property[=].valueCode = #LKA
* #https://fhir.ee/sid/pid/lka #https://fhir.ee/sid/pid/lka/ppn "Passport number of Sri Lanka" "Sri Lanka passinumber"
* #https://fhir.ee/sid/pid/lka #https://fhir.ee/sid/pid/lka/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/lka #https://fhir.ee/sid/pid/lka/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/lka #https://fhir.ee/sid/pid/lka/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/lka #https://fhir.ee/sid/pid/lka/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/lka #https://fhir.ee/sid/pid/lka/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/lka #https://fhir.ee/sid/pid/lka/ppn ^property[=].valueCode = #LKA
* #https://fhir.ee/sid/pid/lka #https://fhir.ee/sid/pid/lka/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/lka #https://fhir.ee/sid/pid/lka/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LKA"
* #https://fhir.ee/sid/pid/lka #https://fhir.ee/sid/pid/lka/ni "National identifier of Sri Lanka" "Sri Lanka personaalne identifikaator"
* #https://fhir.ee/sid/pid/lka #https://fhir.ee/sid/pid/lka/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/lka #https://fhir.ee/sid/pid/lka/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/lka #https://fhir.ee/sid/pid/lka/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/lka #https://fhir.ee/sid/pid/lka/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/lka #https://fhir.ee/sid/pid/lka/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/lka #https://fhir.ee/sid/pid/lka/ni ^property[=].valueCode = #LKA
* #https://fhir.ee/sid/pid/sdn "Root identifier for person identification of country Sudan" "Sudaan identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/sdn ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/sdn ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/sdn ^property[+].code = #country
* #https://fhir.ee/sid/pid/sdn ^property[=].valueCode = #SDN
* #https://fhir.ee/sid/pid/sdn #https://fhir.ee/sid/pid/sdn/ppn "Passport number of Sudan" "Sudaan passinumber"
* #https://fhir.ee/sid/pid/sdn #https://fhir.ee/sid/pid/sdn/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/sdn #https://fhir.ee/sid/pid/sdn/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/sdn #https://fhir.ee/sid/pid/sdn/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/sdn #https://fhir.ee/sid/pid/sdn/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/sdn #https://fhir.ee/sid/pid/sdn/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/sdn #https://fhir.ee/sid/pid/sdn/ppn ^property[=].valueCode = #SDN
* #https://fhir.ee/sid/pid/sdn #https://fhir.ee/sid/pid/sdn/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/sdn #https://fhir.ee/sid/pid/sdn/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SDN"
* #https://fhir.ee/sid/pid/sur "Root identifier for person identification of country Suriname" "Suriname identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/sur ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/sur ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/sur ^property[+].code = #country
* #https://fhir.ee/sid/pid/sur ^property[=].valueCode = #SUR
* #https://fhir.ee/sid/pid/sur #https://fhir.ee/sid/pid/sur/ppn "Passport number of Suriname" "Suriname passinumber"
* #https://fhir.ee/sid/pid/sur #https://fhir.ee/sid/pid/sur/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/sur #https://fhir.ee/sid/pid/sur/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/sur #https://fhir.ee/sid/pid/sur/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/sur #https://fhir.ee/sid/pid/sur/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/sur #https://fhir.ee/sid/pid/sur/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/sur #https://fhir.ee/sid/pid/sur/ppn ^property[=].valueCode = #SUR
* #https://fhir.ee/sid/pid/sur #https://fhir.ee/sid/pid/sur/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/sur #https://fhir.ee/sid/pid/sur/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SUR"
* #https://fhir.ee/sid/pid/lby "Root identifier for person identification of country Libyan Arab Jamahiriya" "Liibüa identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/lby ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/lby ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/lby ^property[+].code = #country
* #https://fhir.ee/sid/pid/lby ^property[=].valueCode = #LBY
* #https://fhir.ee/sid/pid/lby #https://fhir.ee/sid/pid/lby/ppn "Passport number of Libyan Arab Jamahiriya" "Liibüa passinumber"
* #https://fhir.ee/sid/pid/lby #https://fhir.ee/sid/pid/lby/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/lby #https://fhir.ee/sid/pid/lby/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/lby #https://fhir.ee/sid/pid/lby/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/lby #https://fhir.ee/sid/pid/lby/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/lby #https://fhir.ee/sid/pid/lby/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/lby #https://fhir.ee/sid/pid/lby/ppn ^property[=].valueCode = #LBY
* #https://fhir.ee/sid/pid/lby #https://fhir.ee/sid/pid/lby/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/lby #https://fhir.ee/sid/pid/lby/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LBY"
* #https://fhir.ee/sid/pid/gbr "Root identifier for person identification of country United Kingdom" "Suurbritannia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/gbr ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/gbr ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/gbr ^property[+].code = #country
* #https://fhir.ee/sid/pid/gbr ^property[=].valueCode = #GBR
* #https://fhir.ee/sid/pid/gbr #https://fhir.ee/sid/pid/gbr/ppn "Passport number of United Kingdom" "Suurbritannia passinumber"
* #https://fhir.ee/sid/pid/gbr #https://fhir.ee/sid/pid/gbr/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/gbr #https://fhir.ee/sid/pid/gbr/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/gbr #https://fhir.ee/sid/pid/gbr/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/gbr #https://fhir.ee/sid/pid/gbr/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/gbr #https://fhir.ee/sid/pid/gbr/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/gbr #https://fhir.ee/sid/pid/gbr/ppn ^property[=].valueCode = #GBR
* #https://fhir.ee/sid/pid/gbr #https://fhir.ee/sid/pid/gbr/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/gbr #https://fhir.ee/sid/pid/gbr/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GBR"
* #https://fhir.ee/sid/pid/swz "Root identifier for person identification of country Swaziland" "Svaasimaa identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/swz ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/swz ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/swz ^property[+].code = #country
* #https://fhir.ee/sid/pid/swz ^property[=].valueCode = #SWZ
* #https://fhir.ee/sid/pid/swz #https://fhir.ee/sid/pid/swz/ppn "Passport number of Swaziland" "Svaasimaa passinumber"
* #https://fhir.ee/sid/pid/swz #https://fhir.ee/sid/pid/swz/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/swz #https://fhir.ee/sid/pid/swz/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/swz #https://fhir.ee/sid/pid/swz/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/swz #https://fhir.ee/sid/pid/swz/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/swz #https://fhir.ee/sid/pid/swz/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/swz #https://fhir.ee/sid/pid/swz/ppn ^property[=].valueCode = #SWZ
* #https://fhir.ee/sid/pid/swz #https://fhir.ee/sid/pid/swz/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/swz #https://fhir.ee/sid/pid/swz/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SWZ"
* #https://fhir.ee/sid/pid/sjm "Root identifier for person identification of country Svalbard and Jan Mayen" "Svalbard ja Jan Mayen identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/sjm ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/sjm ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/sjm ^property[+].code = #country
* #https://fhir.ee/sid/pid/sjm ^property[=].valueCode = #SJM
* #https://fhir.ee/sid/pid/sjm #https://fhir.ee/sid/pid/sjm/ppn "Passport number of Svalbard and Jan Mayen" "Svalbard ja Jan Mayen passinumber"
* #https://fhir.ee/sid/pid/sjm #https://fhir.ee/sid/pid/sjm/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/sjm #https://fhir.ee/sid/pid/sjm/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/sjm #https://fhir.ee/sid/pid/sjm/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/sjm #https://fhir.ee/sid/pid/sjm/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/sjm #https://fhir.ee/sid/pid/sjm/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/sjm #https://fhir.ee/sid/pid/sjm/ppn ^property[=].valueCode = #SJM
* #https://fhir.ee/sid/pid/sjm #https://fhir.ee/sid/pid/sjm/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/sjm #https://fhir.ee/sid/pid/sjm/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SJM"
* #https://fhir.ee/sid/pid/syr "Root identifier for person identification of country Syrian Arab Republic" "Süüria identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/syr ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/syr ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/syr ^property[+].code = #country
* #https://fhir.ee/sid/pid/syr ^property[=].valueCode = #SYR
* #https://fhir.ee/sid/pid/syr #https://fhir.ee/sid/pid/syr/ppn "Passport number of Syrian Arab Republic" "Süüria passinumber"
* #https://fhir.ee/sid/pid/syr #https://fhir.ee/sid/pid/syr/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/syr #https://fhir.ee/sid/pid/syr/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/syr #https://fhir.ee/sid/pid/syr/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/syr #https://fhir.ee/sid/pid/syr/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/syr #https://fhir.ee/sid/pid/syr/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/syr #https://fhir.ee/sid/pid/syr/ppn ^property[=].valueCode = #SYR
* #https://fhir.ee/sid/pid/syr #https://fhir.ee/sid/pid/syr/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/syr #https://fhir.ee/sid/pid/syr/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SYR"
* #https://fhir.ee/sid/pid/che "Root identifier for person identification of country Switzerland" "Šveits identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/che ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/che ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/che ^property[+].code = #country
* #https://fhir.ee/sid/pid/che ^property[=].valueCode = #CHE
* #https://fhir.ee/sid/pid/che #https://fhir.ee/sid/pid/che/ppn "Passport number of Switzerland" "Šveits passinumber"
* #https://fhir.ee/sid/pid/che #https://fhir.ee/sid/pid/che/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/che #https://fhir.ee/sid/pid/che/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/che #https://fhir.ee/sid/pid/che/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/che #https://fhir.ee/sid/pid/che/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/che #https://fhir.ee/sid/pid/che/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/che #https://fhir.ee/sid/pid/che/ppn ^property[=].valueCode = #CHE
* #https://fhir.ee/sid/pid/che #https://fhir.ee/sid/pid/che/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/che #https://fhir.ee/sid/pid/che/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CHE"
* #https://fhir.ee/sid/pid/zwe "Root identifier for person identification of country Zimbabwe" "Zimbabwe identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/zwe ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/zwe ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/zwe ^property[+].code = #country
* #https://fhir.ee/sid/pid/zwe ^property[=].valueCode = #ZWE
* #https://fhir.ee/sid/pid/zwe #https://fhir.ee/sid/pid/zwe/ppn "Passport number of Zimbabwe" "Zimbabwe passinumber"
* #https://fhir.ee/sid/pid/zwe #https://fhir.ee/sid/pid/zwe/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/zwe #https://fhir.ee/sid/pid/zwe/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/zwe #https://fhir.ee/sid/pid/zwe/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/zwe #https://fhir.ee/sid/pid/zwe/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/zwe #https://fhir.ee/sid/pid/zwe/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/zwe #https://fhir.ee/sid/pid/zwe/ppn ^property[=].valueCode = #ZWE
* #https://fhir.ee/sid/pid/zwe #https://fhir.ee/sid/pid/zwe/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/zwe #https://fhir.ee/sid/pid/zwe/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ZWE"
* #https://fhir.ee/sid/pid/zwe #https://fhir.ee/sid/pid/zwe/ni "National identifier of Zimbabwe" "Zimbabwe personaalne identifikaator"
* #https://fhir.ee/sid/pid/zwe #https://fhir.ee/sid/pid/zwe/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/zwe #https://fhir.ee/sid/pid/zwe/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/zwe #https://fhir.ee/sid/pid/zwe/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/zwe #https://fhir.ee/sid/pid/zwe/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/zwe #https://fhir.ee/sid/pid/zwe/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/zwe #https://fhir.ee/sid/pid/zwe/ni ^property[=].valueCode = #ZWE
* #https://fhir.ee/sid/pid/dnk "Root identifier for person identification of country Denmark" "Taani identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/dnk ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/dnk ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/dnk ^property[+].code = #country
* #https://fhir.ee/sid/pid/dnk ^property[=].valueCode = #DNK
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/ppn "Passport number of Denmark" "Taani passinumber"
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/ppn ^property[=].valueCode = #DNK
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-DNK"
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/ni "National identifier of Denmark" "Taani personaalne identifikaator"
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/ni ^property[=].valueCode = #DNK
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/dl "Driver's licence number of Denmark" "Taani juhiloa number"
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/dnk #https://fhir.ee/sid/pid/dnk/dl ^property[=].valueCode = #DNK
* #https://fhir.ee/sid/pid/tjk "Root identifier for person identification of country Tajikistan" "Tadžikistan identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/tjk ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/tjk ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/tjk ^property[+].code = #country
* #https://fhir.ee/sid/pid/tjk ^property[=].valueCode = #TJK
* #https://fhir.ee/sid/pid/tjk #https://fhir.ee/sid/pid/tjk/ppn "Passport number of Tajikistan" "Tadžikistan passinumber"
* #https://fhir.ee/sid/pid/tjk #https://fhir.ee/sid/pid/tjk/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/tjk #https://fhir.ee/sid/pid/tjk/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/tjk #https://fhir.ee/sid/pid/tjk/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/tjk #https://fhir.ee/sid/pid/tjk/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/tjk #https://fhir.ee/sid/pid/tjk/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/tjk #https://fhir.ee/sid/pid/tjk/ppn ^property[=].valueCode = #TJK
* #https://fhir.ee/sid/pid/tjk #https://fhir.ee/sid/pid/tjk/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/tjk #https://fhir.ee/sid/pid/tjk/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TJK"
* #https://fhir.ee/sid/pid/tha "Root identifier for person identification of country Thailand" "Tai identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/tha ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/tha ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/tha ^property[+].code = #country
* #https://fhir.ee/sid/pid/tha ^property[=].valueCode = #THA
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/ppn "Passport number of Thailand" "Tai passinumber"
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/ppn ^property[=].valueCode = #THA
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-THA"
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/ni "National identifier of Thailand" "Tai personaalne identifikaator"
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/ni ^property[=].valueCode = #THA
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/cz "ID-card number of Thailand" "Tai ID-kaarti number"
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/cz ^property[=].valueCode = #THA
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/dl "Driver's licence number of Thailand" "Tai juhiloa number"
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/tha #https://fhir.ee/sid/pid/tha/dl ^property[=].valueCode = #THA
* #https://fhir.ee/sid/pid/twn "Root identifier for person identification of country Taiwan" "Taiwan identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/twn ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/twn ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/twn ^property[+].code = #country
* #https://fhir.ee/sid/pid/twn ^property[=].valueCode = #TWN
* #https://fhir.ee/sid/pid/twn #https://fhir.ee/sid/pid/twn/ppn "Passport number of Taiwan" "Taiwan passinumber"
* #https://fhir.ee/sid/pid/twn #https://fhir.ee/sid/pid/twn/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/twn #https://fhir.ee/sid/pid/twn/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/twn #https://fhir.ee/sid/pid/twn/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/twn #https://fhir.ee/sid/pid/twn/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/twn #https://fhir.ee/sid/pid/twn/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/twn #https://fhir.ee/sid/pid/twn/ppn ^property[=].valueCode = #TWN
* #https://fhir.ee/sid/pid/twn #https://fhir.ee/sid/pid/twn/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/twn #https://fhir.ee/sid/pid/twn/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TWN"
* #https://fhir.ee/sid/pid/twn #https://fhir.ee/sid/pid/twn/ni "National identifier of Taiwan" "Taiwan personaalne identifikaator"
* #https://fhir.ee/sid/pid/twn #https://fhir.ee/sid/pid/twn/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/twn #https://fhir.ee/sid/pid/twn/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/twn #https://fhir.ee/sid/pid/twn/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/twn #https://fhir.ee/sid/pid/twn/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/twn #https://fhir.ee/sid/pid/twn/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/twn #https://fhir.ee/sid/pid/twn/ni ^property[=].valueCode = #TWN
* #https://fhir.ee/sid/pid/tza "Root identifier for person identification of country Tanzania, United Republic of" "Tansaania identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/tza ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/tza ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/tza ^property[+].code = #country
* #https://fhir.ee/sid/pid/tza ^property[=].valueCode = #TZA
* #https://fhir.ee/sid/pid/tza #https://fhir.ee/sid/pid/tza/ppn "Passport number of Tanzania, United Republic of" "Tansaania passinumber"
* #https://fhir.ee/sid/pid/tza #https://fhir.ee/sid/pid/tza/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/tza #https://fhir.ee/sid/pid/tza/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/tza #https://fhir.ee/sid/pid/tza/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/tza #https://fhir.ee/sid/pid/tza/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/tza #https://fhir.ee/sid/pid/tza/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/tza #https://fhir.ee/sid/pid/tza/ppn ^property[=].valueCode = #TZA
* #https://fhir.ee/sid/pid/tza #https://fhir.ee/sid/pid/tza/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/tza #https://fhir.ee/sid/pid/tza/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TZA"
* #https://fhir.ee/sid/pid/tls "Root identifier for person identification of country Timor-Leste" "Timor-Leste identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/tls ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/tls ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/tls ^property[+].code = #country
* #https://fhir.ee/sid/pid/tls ^property[=].valueCode = #TLS
* #https://fhir.ee/sid/pid/tls #https://fhir.ee/sid/pid/tls/ppn "Passport number of Timor-Leste" "Timor-Leste passinumber"
* #https://fhir.ee/sid/pid/tls #https://fhir.ee/sid/pid/tls/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/tls #https://fhir.ee/sid/pid/tls/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/tls #https://fhir.ee/sid/pid/tls/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/tls #https://fhir.ee/sid/pid/tls/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/tls #https://fhir.ee/sid/pid/tls/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/tls #https://fhir.ee/sid/pid/tls/ppn ^property[=].valueCode = #TLS
* #https://fhir.ee/sid/pid/tls #https://fhir.ee/sid/pid/tls/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/tls #https://fhir.ee/sid/pid/tls/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TLS"
* #https://fhir.ee/sid/pid/tgo "Root identifier for person identification of country Togo" "Togo identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/tgo ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/tgo ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/tgo ^property[+].code = #country
* #https://fhir.ee/sid/pid/tgo ^property[=].valueCode = #TGO
* #https://fhir.ee/sid/pid/tgo #https://fhir.ee/sid/pid/tgo/ppn "Passport number of Togo" "Togo passinumber"
* #https://fhir.ee/sid/pid/tgo #https://fhir.ee/sid/pid/tgo/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/tgo #https://fhir.ee/sid/pid/tgo/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/tgo #https://fhir.ee/sid/pid/tgo/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/tgo #https://fhir.ee/sid/pid/tgo/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/tgo #https://fhir.ee/sid/pid/tgo/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/tgo #https://fhir.ee/sid/pid/tgo/ppn ^property[=].valueCode = #TGO
* #https://fhir.ee/sid/pid/tgo #https://fhir.ee/sid/pid/tgo/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/tgo #https://fhir.ee/sid/pid/tgo/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TGO"
* #https://fhir.ee/sid/pid/tkl "Root identifier for person identification of country Tokelau" "Tokelau identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/tkl ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/tkl ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/tkl ^property[+].code = #country
* #https://fhir.ee/sid/pid/tkl ^property[=].valueCode = #TKL
* #https://fhir.ee/sid/pid/tkl #https://fhir.ee/sid/pid/tkl/ppn "Passport number of Tokelau" "Tokelau passinumber"
* #https://fhir.ee/sid/pid/tkl #https://fhir.ee/sid/pid/tkl/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/tkl #https://fhir.ee/sid/pid/tkl/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/tkl #https://fhir.ee/sid/pid/tkl/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/tkl #https://fhir.ee/sid/pid/tkl/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/tkl #https://fhir.ee/sid/pid/tkl/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/tkl #https://fhir.ee/sid/pid/tkl/ppn ^property[=].valueCode = #TKL
* #https://fhir.ee/sid/pid/tkl #https://fhir.ee/sid/pid/tkl/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/tkl #https://fhir.ee/sid/pid/tkl/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TKL"
* #https://fhir.ee/sid/pid/ton "Root identifier for person identification of country Tonga" "Tonga identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/ton ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/ton ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/ton ^property[+].code = #country
* #https://fhir.ee/sid/pid/ton ^property[=].valueCode = #TON
* #https://fhir.ee/sid/pid/ton #https://fhir.ee/sid/pid/ton/ppn "Passport number of Tonga" "Tonga passinumber"
* #https://fhir.ee/sid/pid/ton #https://fhir.ee/sid/pid/ton/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ton #https://fhir.ee/sid/pid/ton/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/ton #https://fhir.ee/sid/pid/ton/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ton #https://fhir.ee/sid/pid/ton/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ton #https://fhir.ee/sid/pid/ton/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/ton #https://fhir.ee/sid/pid/ton/ppn ^property[=].valueCode = #TON
* #https://fhir.ee/sid/pid/ton #https://fhir.ee/sid/pid/ton/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/ton #https://fhir.ee/sid/pid/ton/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TON"
* #https://fhir.ee/sid/pid/tto "Root identifier for person identification of country Trinidad and Tobago" "Trinidad ja Tobago identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/tto ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/tto ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/tto ^property[+].code = #country
* #https://fhir.ee/sid/pid/tto ^property[=].valueCode = #TTO
* #https://fhir.ee/sid/pid/tto #https://fhir.ee/sid/pid/tto/ppn "Passport number of Trinidad and Tobago" "Trinidad ja Tobago passinumber"
* #https://fhir.ee/sid/pid/tto #https://fhir.ee/sid/pid/tto/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/tto #https://fhir.ee/sid/pid/tto/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/tto #https://fhir.ee/sid/pid/tto/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/tto #https://fhir.ee/sid/pid/tto/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/tto #https://fhir.ee/sid/pid/tto/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/tto #https://fhir.ee/sid/pid/tto/ppn ^property[=].valueCode = #TTO
* #https://fhir.ee/sid/pid/tto #https://fhir.ee/sid/pid/tto/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/tto #https://fhir.ee/sid/pid/tto/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TTO"
* #https://fhir.ee/sid/pid/tcd "Root identifier for person identification of country Chad" "Tšaad identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/tcd ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/tcd ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/tcd ^property[+].code = #country
* #https://fhir.ee/sid/pid/tcd ^property[=].valueCode = #TCD
* #https://fhir.ee/sid/pid/tcd #https://fhir.ee/sid/pid/tcd/ppn "Passport number of Chad" "Tšaad passinumber"
* #https://fhir.ee/sid/pid/tcd #https://fhir.ee/sid/pid/tcd/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/tcd #https://fhir.ee/sid/pid/tcd/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/tcd #https://fhir.ee/sid/pid/tcd/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/tcd #https://fhir.ee/sid/pid/tcd/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/tcd #https://fhir.ee/sid/pid/tcd/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/tcd #https://fhir.ee/sid/pid/tcd/ppn ^property[=].valueCode = #TCD
* #https://fhir.ee/sid/pid/tcd #https://fhir.ee/sid/pid/tcd/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/tcd #https://fhir.ee/sid/pid/tcd/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TCD"
* #https://fhir.ee/sid/pid/cze "Root identifier for person identification of country Czech Republic" "Tšehhi identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/cze ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/cze ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/cze ^property[+].code = #country
* #https://fhir.ee/sid/pid/cze ^property[=].valueCode = #CZE
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/ppn "Passport number of Czech Republic" "Tšehhi passinumber"
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/ppn ^property[=].valueCode = #CZE
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CZE"
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/ni "National identifier of Czech Republic" "Tšehhi personaalne identifikaator"
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/ni ^property[=].valueCode = #CZE
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/cz "ID-card number of Czech Republic" "Tšehhi ID-kaarti number"
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/cz ^property[=].valueCode = #CZE
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/dl "Driver's licence number of Czech Republic" "Tšehhi juhiloa number"
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/cze #https://fhir.ee/sid/pid/cze/dl ^property[=].valueCode = #CZE
* #https://fhir.ee/sid/pid/chl "Root identifier for person identification of country Chile" "Tšiili identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/chl ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/chl ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/chl ^property[+].code = #country
* #https://fhir.ee/sid/pid/chl ^property[=].valueCode = #CHL
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/ppn "Passport number of Chile" "Tšiili passinumber"
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/ppn ^property[=].valueCode = #CHL
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CHL"
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/ni "National identifier of Chile" "Tšiili personaalne identifikaator"
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/ni ^property[=].valueCode = #CHL
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/cz "ID-card number of Chile" "Tšiili ID-kaarti number"
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/cz ^property[=].valueCode = #CHL
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/dl "Driver's licence number of Chile" "Tšiili juhiloa number"
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/chl #https://fhir.ee/sid/pid/chl/dl ^property[=].valueCode = #CHL
* #https://fhir.ee/sid/pid/tun "Root identifier for person identification of country Tunisia" "Tuneesia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/tun ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/tun ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/tun ^property[+].code = #country
* #https://fhir.ee/sid/pid/tun ^property[=].valueCode = #TUN
* #https://fhir.ee/sid/pid/tun #https://fhir.ee/sid/pid/tun/ppn "Passport number of Tunisia" "Tuneesia passinumber"
* #https://fhir.ee/sid/pid/tun #https://fhir.ee/sid/pid/tun/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/tun #https://fhir.ee/sid/pid/tun/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/tun #https://fhir.ee/sid/pid/tun/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/tun #https://fhir.ee/sid/pid/tun/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/tun #https://fhir.ee/sid/pid/tun/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/tun #https://fhir.ee/sid/pid/tun/ppn ^property[=].valueCode = #TUN
* #https://fhir.ee/sid/pid/tun #https://fhir.ee/sid/pid/tun/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/tun #https://fhir.ee/sid/pid/tun/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TUN"
* #https://fhir.ee/sid/pid/tca "Root identifier for person identification of country Turks and Caicos Islands" "Turks ja Caicos identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/tca ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/tca ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/tca ^property[+].code = #country
* #https://fhir.ee/sid/pid/tca ^property[=].valueCode = #TCA
* #https://fhir.ee/sid/pid/tca #https://fhir.ee/sid/pid/tca/ppn "Passport number of Turks and Caicos Islands" "Turks ja Caicos passinumber"
* #https://fhir.ee/sid/pid/tca #https://fhir.ee/sid/pid/tca/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/tca #https://fhir.ee/sid/pid/tca/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/tca #https://fhir.ee/sid/pid/tca/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/tca #https://fhir.ee/sid/pid/tca/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/tca #https://fhir.ee/sid/pid/tca/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/tca #https://fhir.ee/sid/pid/tca/ppn ^property[=].valueCode = #TCA
* #https://fhir.ee/sid/pid/tca #https://fhir.ee/sid/pid/tca/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/tca #https://fhir.ee/sid/pid/tca/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TCA"
* #https://fhir.ee/sid/pid/tuv "Root identifier for person identification of country Tuvalu" "Tuvalu identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/tuv ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/tuv ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/tuv ^property[+].code = #country
* #https://fhir.ee/sid/pid/tuv ^property[=].valueCode = #TUV
* #https://fhir.ee/sid/pid/tuv #https://fhir.ee/sid/pid/tuv/ppn "Passport number of Tuvalu" "Tuvalu passinumber"
* #https://fhir.ee/sid/pid/tuv #https://fhir.ee/sid/pid/tuv/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/tuv #https://fhir.ee/sid/pid/tuv/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/tuv #https://fhir.ee/sid/pid/tuv/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/tuv #https://fhir.ee/sid/pid/tuv/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/tuv #https://fhir.ee/sid/pid/tuv/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/tuv #https://fhir.ee/sid/pid/tuv/ppn ^property[=].valueCode = #TUV
* #https://fhir.ee/sid/pid/tuv #https://fhir.ee/sid/pid/tuv/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/tuv #https://fhir.ee/sid/pid/tuv/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TUV"
* #https://fhir.ee/sid/pid/tur "Root identifier for person identification of country Turkey" "Türgi identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/tur ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/tur ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/tur ^property[+].code = #country
* #https://fhir.ee/sid/pid/tur ^property[=].valueCode = #TUR
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/ppn "Passport number of Turkey" "Türgi passinumber"
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/ppn ^property[=].valueCode = #TUR
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TUR"
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/ni "National identifier of Turkey" "Türgi personaalne identifikaator"
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/ni ^property[=].valueCode = #TUR
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/dl "Driver's licence number of Turkey" "Türgi juhiloa number"
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/tur #https://fhir.ee/sid/pid/tur/dl ^property[=].valueCode = #TUR
* #https://fhir.ee/sid/pid/tkm "Root identifier for person identification of country Turkmenistan" "Türkmenistan identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/tkm ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/tkm ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/tkm ^property[+].code = #country
* #https://fhir.ee/sid/pid/tkm ^property[=].valueCode = #TKM
* #https://fhir.ee/sid/pid/tkm #https://fhir.ee/sid/pid/tkm/ppn "Passport number of Turkmenistan" "Türkmenistan passinumber"
* #https://fhir.ee/sid/pid/tkm #https://fhir.ee/sid/pid/tkm/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/tkm #https://fhir.ee/sid/pid/tkm/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/tkm #https://fhir.ee/sid/pid/tkm/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/tkm #https://fhir.ee/sid/pid/tkm/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/tkm #https://fhir.ee/sid/pid/tkm/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/tkm #https://fhir.ee/sid/pid/tkm/ppn ^property[=].valueCode = #TKM
* #https://fhir.ee/sid/pid/tkm #https://fhir.ee/sid/pid/tkm/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/tkm #https://fhir.ee/sid/pid/tkm/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TKM"
* #https://fhir.ee/sid/pid/uga "Root identifier for person identification of country Uganda" "Uganda identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/uga ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/uga ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/uga ^property[+].code = #country
* #https://fhir.ee/sid/pid/uga ^property[=].valueCode = #UGA
* #https://fhir.ee/sid/pid/uga #https://fhir.ee/sid/pid/uga/ppn "Passport number of Uganda" "Uganda passinumber"
* #https://fhir.ee/sid/pid/uga #https://fhir.ee/sid/pid/uga/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/uga #https://fhir.ee/sid/pid/uga/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/uga #https://fhir.ee/sid/pid/uga/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/uga #https://fhir.ee/sid/pid/uga/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/uga #https://fhir.ee/sid/pid/uga/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/uga #https://fhir.ee/sid/pid/uga/ppn ^property[=].valueCode = #UGA
* #https://fhir.ee/sid/pid/uga #https://fhir.ee/sid/pid/uga/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/uga #https://fhir.ee/sid/pid/uga/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-UGA"
* #https://fhir.ee/sid/pid/ukr "Root identifier for person identification of country Ukraine" "Ukraina identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/ukr ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/ukr ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/ukr ^property[+].code = #country
* #https://fhir.ee/sid/pid/ukr ^property[=].valueCode = #UKR
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/ppn "Passport number of Ukraine" "Ukraina passinumber"
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/ppn ^property[=].valueCode = #UKR
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-UKR"
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/ni "National identifier of Ukraine" "Ukraina personaalne identifikaator"
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/ni ^property[=].valueCode = #UKR
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/cz "ID-card number of Ukraine" "Ukraina ID-kaarti number"
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/cz ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/cz ^property[=].valueCode = #CZ
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/cz ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/cz ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/cz ^property[+].code = #country
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/cz ^property[=].valueCode = #UKR
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/dl "Driver's licence number of Ukraine" "Ukraina juhiloa number"
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/dl ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/dl ^property[=].valueCode = #DL
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/dl ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/dl ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/dl ^property[+].code = #country
* #https://fhir.ee/sid/pid/ukr #https://fhir.ee/sid/pid/ukr/dl ^property[=].valueCode = #UKR
* #https://fhir.ee/sid/pid/hun "Root identifier for person identification of country Hungary" "Ungari identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/hun ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/hun ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/hun ^property[+].code = #country
* #https://fhir.ee/sid/pid/hun ^property[=].valueCode = #HUN
* #https://fhir.ee/sid/pid/hun #https://fhir.ee/sid/pid/hun/ppn "Passport number of Hungary" "Ungari passinumber"
* #https://fhir.ee/sid/pid/hun #https://fhir.ee/sid/pid/hun/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/hun #https://fhir.ee/sid/pid/hun/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/hun #https://fhir.ee/sid/pid/hun/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/hun #https://fhir.ee/sid/pid/hun/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/hun #https://fhir.ee/sid/pid/hun/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/hun #https://fhir.ee/sid/pid/hun/ppn ^property[=].valueCode = #HUN
* #https://fhir.ee/sid/pid/hun #https://fhir.ee/sid/pid/hun/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/hun #https://fhir.ee/sid/pid/hun/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-HUN"
* #https://fhir.ee/sid/pid/ury "Root identifier for person identification of country Uruguay" "Uruguay identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/ury ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/ury ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/ury ^property[+].code = #country
* #https://fhir.ee/sid/pid/ury ^property[=].valueCode = #URY
* #https://fhir.ee/sid/pid/ury #https://fhir.ee/sid/pid/ury/ppn "Passport number of Uruguay" "Uruguay passinumber"
* #https://fhir.ee/sid/pid/ury #https://fhir.ee/sid/pid/ury/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ury #https://fhir.ee/sid/pid/ury/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/ury #https://fhir.ee/sid/pid/ury/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ury #https://fhir.ee/sid/pid/ury/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ury #https://fhir.ee/sid/pid/ury/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/ury #https://fhir.ee/sid/pid/ury/ppn ^property[=].valueCode = #URY
* #https://fhir.ee/sid/pid/ury #https://fhir.ee/sid/pid/ury/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/ury #https://fhir.ee/sid/pid/ury/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-URY"
* #https://fhir.ee/sid/pid/uzb "Root identifier for person identification of country Uzbekistan" "Usbekistan identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/uzb ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/uzb ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/uzb ^property[+].code = #country
* #https://fhir.ee/sid/pid/uzb ^property[=].valueCode = #UZB
* #https://fhir.ee/sid/pid/uzb #https://fhir.ee/sid/pid/uzb/ppn "Passport number of Uzbekistan" "Usbekistan passinumber"
* #https://fhir.ee/sid/pid/uzb #https://fhir.ee/sid/pid/uzb/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/uzb #https://fhir.ee/sid/pid/uzb/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/uzb #https://fhir.ee/sid/pid/uzb/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/uzb #https://fhir.ee/sid/pid/uzb/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/uzb #https://fhir.ee/sid/pid/uzb/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/uzb #https://fhir.ee/sid/pid/uzb/ppn ^property[=].valueCode = #UZB
* #https://fhir.ee/sid/pid/uzb #https://fhir.ee/sid/pid/uzb/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/uzb #https://fhir.ee/sid/pid/uzb/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-UZB"
* #https://fhir.ee/sid/pid/ncl "Root identifier for person identification of country New Caledonia" "Uus-Kaledoonia identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/ncl ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/ncl ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/ncl ^property[+].code = #country
* #https://fhir.ee/sid/pid/ncl ^property[=].valueCode = #NCL
* #https://fhir.ee/sid/pid/ncl #https://fhir.ee/sid/pid/ncl/ppn "Passport number of New Caledonia" "Uus-Kaledoonia passinumber"
* #https://fhir.ee/sid/pid/ncl #https://fhir.ee/sid/pid/ncl/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ncl #https://fhir.ee/sid/pid/ncl/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/ncl #https://fhir.ee/sid/pid/ncl/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ncl #https://fhir.ee/sid/pid/ncl/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ncl #https://fhir.ee/sid/pid/ncl/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/ncl #https://fhir.ee/sid/pid/ncl/ppn ^property[=].valueCode = #NCL
* #https://fhir.ee/sid/pid/ncl #https://fhir.ee/sid/pid/ncl/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/ncl #https://fhir.ee/sid/pid/ncl/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NCL"
* #https://fhir.ee/sid/pid/nzl "Root identifier for person identification of country New Zealand" "Uus-Meremaa identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/nzl ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/nzl ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/nzl ^property[+].code = #country
* #https://fhir.ee/sid/pid/nzl ^property[=].valueCode = #NZL
* #https://fhir.ee/sid/pid/nzl #https://fhir.ee/sid/pid/nzl/ppn "Passport number of New Zealand" "Uus-Meremaa passinumber"
* #https://fhir.ee/sid/pid/nzl #https://fhir.ee/sid/pid/nzl/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/nzl #https://fhir.ee/sid/pid/nzl/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/nzl #https://fhir.ee/sid/pid/nzl/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/nzl #https://fhir.ee/sid/pid/nzl/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/nzl #https://fhir.ee/sid/pid/nzl/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/nzl #https://fhir.ee/sid/pid/nzl/ppn ^property[=].valueCode = #NZL
* #https://fhir.ee/sid/pid/nzl #https://fhir.ee/sid/pid/nzl/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/nzl #https://fhir.ee/sid/pid/nzl/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NZL"
* #https://fhir.ee/sid/pid/blr "Root identifier for person identification of country Belarus" "Valgevene identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/blr ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/blr ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/blr ^property[+].code = #country
* #https://fhir.ee/sid/pid/blr ^property[=].valueCode = #BLR
* #https://fhir.ee/sid/pid/blr #https://fhir.ee/sid/pid/blr/ppn "Passport number of Belarus" "Valgevene passinumber"
* #https://fhir.ee/sid/pid/blr #https://fhir.ee/sid/pid/blr/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/blr #https://fhir.ee/sid/pid/blr/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/blr #https://fhir.ee/sid/pid/blr/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/blr #https://fhir.ee/sid/pid/blr/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/blr #https://fhir.ee/sid/pid/blr/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/blr #https://fhir.ee/sid/pid/blr/ppn ^property[=].valueCode = #BLR
* #https://fhir.ee/sid/pid/blr #https://fhir.ee/sid/pid/blr/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/blr #https://fhir.ee/sid/pid/blr/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BLR"
* #https://fhir.ee/sid/pid/wlf "Root identifier for person identification of country Wallis and Futuna Islands" "Wallis ja Futuna identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/wlf ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/wlf ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/wlf ^property[+].code = #country
* #https://fhir.ee/sid/pid/wlf ^property[=].valueCode = #WLF
* #https://fhir.ee/sid/pid/wlf #https://fhir.ee/sid/pid/wlf/ppn "Passport number of Wallis and Futuna Islands" "Wallis ja Futuna passinumber"
* #https://fhir.ee/sid/pid/wlf #https://fhir.ee/sid/pid/wlf/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/wlf #https://fhir.ee/sid/pid/wlf/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/wlf #https://fhir.ee/sid/pid/wlf/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/wlf #https://fhir.ee/sid/pid/wlf/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/wlf #https://fhir.ee/sid/pid/wlf/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/wlf #https://fhir.ee/sid/pid/wlf/ppn ^property[=].valueCode = #WLF
* #https://fhir.ee/sid/pid/wlf #https://fhir.ee/sid/pid/wlf/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/wlf #https://fhir.ee/sid/pid/wlf/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-WLF"
* #https://fhir.ee/sid/pid/vut "Root identifier for person identification of country Vanuatu" "Vanuatu identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/vut ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/vut ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/vut ^property[+].code = #country
* #https://fhir.ee/sid/pid/vut ^property[=].valueCode = #VUT
* #https://fhir.ee/sid/pid/vut #https://fhir.ee/sid/pid/vut/ppn "Passport number of Vanuatu" "Vanuatu passinumber"
* #https://fhir.ee/sid/pid/vut #https://fhir.ee/sid/pid/vut/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/vut #https://fhir.ee/sid/pid/vut/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/vut #https://fhir.ee/sid/pid/vut/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/vut #https://fhir.ee/sid/pid/vut/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/vut #https://fhir.ee/sid/pid/vut/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/vut #https://fhir.ee/sid/pid/vut/ppn ^property[=].valueCode = #VUT
* #https://fhir.ee/sid/pid/vut #https://fhir.ee/sid/pid/vut/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/vut #https://fhir.ee/sid/pid/vut/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VUT"
* #https://fhir.ee/sid/pid/rus "Root identifier for person identification of country Russian Federation" "Venemaa identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/rus ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/rus ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/rus ^property[+].code = #country
* #https://fhir.ee/sid/pid/rus ^property[=].valueCode = #RUS
* #https://fhir.ee/sid/pid/rus #https://fhir.ee/sid/pid/rus/ppn "Passport number of Russian Federation" "Venemaa passinumber"
* #https://fhir.ee/sid/pid/rus #https://fhir.ee/sid/pid/rus/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/rus #https://fhir.ee/sid/pid/rus/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/rus #https://fhir.ee/sid/pid/rus/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/rus #https://fhir.ee/sid/pid/rus/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/rus #https://fhir.ee/sid/pid/rus/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/rus #https://fhir.ee/sid/pid/rus/ppn ^property[=].valueCode = #RUS
* #https://fhir.ee/sid/pid/rus #https://fhir.ee/sid/pid/rus/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/rus #https://fhir.ee/sid/pid/rus/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-RUS"
* #https://fhir.ee/sid/pid/ven "Root identifier for person identification of country Venezuela" "Venezuela identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/ven ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/ven ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/ven ^property[+].code = #country
* #https://fhir.ee/sid/pid/ven ^property[=].valueCode = #VEN
* #https://fhir.ee/sid/pid/ven #https://fhir.ee/sid/pid/ven/ppn "Passport number of Venezuela" "Venezuela passinumber"
* #https://fhir.ee/sid/pid/ven #https://fhir.ee/sid/pid/ven/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ven #https://fhir.ee/sid/pid/ven/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/ven #https://fhir.ee/sid/pid/ven/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ven #https://fhir.ee/sid/pid/ven/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ven #https://fhir.ee/sid/pid/ven/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/ven #https://fhir.ee/sid/pid/ven/ppn ^property[=].valueCode = #VEN
* #https://fhir.ee/sid/pid/ven #https://fhir.ee/sid/pid/ven/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/ven #https://fhir.ee/sid/pid/ven/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VEN"
* #https://fhir.ee/sid/pid/ven #https://fhir.ee/sid/pid/ven/ni "National identifier of Venezuela" "Venezuela personaalne identifikaator"
* #https://fhir.ee/sid/pid/ven #https://fhir.ee/sid/pid/ven/ni ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/ven #https://fhir.ee/sid/pid/ven/ni ^property[=].valueCode = #NI
* #https://fhir.ee/sid/pid/ven #https://fhir.ee/sid/pid/ven/ni ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/ven #https://fhir.ee/sid/pid/ven/ni ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/ven #https://fhir.ee/sid/pid/ven/ni ^property[+].code = #country
* #https://fhir.ee/sid/pid/ven #https://fhir.ee/sid/pid/ven/ni ^property[=].valueCode = #VEN
* #https://fhir.ee/sid/pid/vnm "Root identifier for person identification of country Viet Nam" "Vietnam identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/vnm ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/vnm ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/vnm ^property[+].code = #country
* #https://fhir.ee/sid/pid/vnm ^property[=].valueCode = #VNM
* #https://fhir.ee/sid/pid/vnm #https://fhir.ee/sid/pid/vnm/ppn "Passport number of Viet Nam" "Vietnam passinumber"
* #https://fhir.ee/sid/pid/vnm #https://fhir.ee/sid/pid/vnm/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/vnm #https://fhir.ee/sid/pid/vnm/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/vnm #https://fhir.ee/sid/pid/vnm/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/vnm #https://fhir.ee/sid/pid/vnm/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/vnm #https://fhir.ee/sid/pid/vnm/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/vnm #https://fhir.ee/sid/pid/vnm/ppn ^property[=].valueCode = #VNM
* #https://fhir.ee/sid/pid/vnm #https://fhir.ee/sid/pid/vnm/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/vnm #https://fhir.ee/sid/pid/vnm/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VNM"
* #https://fhir.ee/sid/pid/vir "Root identifier for person identification of country Virgin Islands (U.S.)" "USA Neitsisaared identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/vir ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/vir ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/vir ^property[+].code = #country
* #https://fhir.ee/sid/pid/vir ^property[=].valueCode = #VIR
* #https://fhir.ee/sid/pid/vir #https://fhir.ee/sid/pid/vir/ppn "Passport number of Virgin Islands (U.S.)" "USA Neitsisaared passinumber"
* #https://fhir.ee/sid/pid/vir #https://fhir.ee/sid/pid/vir/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/vir #https://fhir.ee/sid/pid/vir/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/vir #https://fhir.ee/sid/pid/vir/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/vir #https://fhir.ee/sid/pid/vir/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/vir #https://fhir.ee/sid/pid/vir/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/vir #https://fhir.ee/sid/pid/vir/ppn ^property[=].valueCode = #VIR
* #https://fhir.ee/sid/pid/vir #https://fhir.ee/sid/pid/vir/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/vir #https://fhir.ee/sid/pid/vir/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VIR"
* #https://fhir.ee/sid/pid/umi "Root identifier for person identification of country United States Minor Outlying Islands" "Ühendriikide hajasaared identifikaatorid isikutele"
* #https://fhir.ee/sid/pid/umi ^property[0].code = #notSelectable
* #https://fhir.ee/sid/pid/umi ^property[=].valueBoolean = true
* #https://fhir.ee/sid/pid/umi ^property[+].code = #country
* #https://fhir.ee/sid/pid/umi ^property[=].valueCode = #UMI
* #https://fhir.ee/sid/pid/umi #https://fhir.ee/sid/pid/umi/ppn "Passport number of United States Minor Outlying Islands" "Ühendriikide hajasaared passinumber"
* #https://fhir.ee/sid/pid/umi #https://fhir.ee/sid/pid/umi/ppn ^property[0].code = #idtype
* #https://fhir.ee/sid/pid/umi #https://fhir.ee/sid/pid/umi/ppn ^property[=].valueCode = #PPN
* #https://fhir.ee/sid/pid/umi #https://fhir.ee/sid/pid/umi/ppn ^property[+].code = #notSelectable
* #https://fhir.ee/sid/pid/umi #https://fhir.ee/sid/pid/umi/ppn ^property[=].valueBoolean = false
* #https://fhir.ee/sid/pid/umi #https://fhir.ee/sid/pid/umi/ppn ^property[+].code = #country
* #https://fhir.ee/sid/pid/umi #https://fhir.ee/sid/pid/umi/ppn ^property[=].valueCode = #UMI
* #https://fhir.ee/sid/pid/umi #https://fhir.ee/sid/pid/umi/ppn ^property[+].code = #naming-system
* #https://fhir.ee/sid/pid/umi #https://fhir.ee/sid/pid/umi/ppn ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-UMI"
