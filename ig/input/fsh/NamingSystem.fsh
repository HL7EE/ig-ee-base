Instance: ads
InstanceOf: NamingSystem
Usage: #definition
* name = "ADS"
* title = "Estonian Address Data System"
* status = #draft
* kind = #identifier
* date = "2022-11-05T11:45:29.0437162+00:00"
* publisher = "HL7 Estonia"
* contact.telecom.system = #url
* contact.telecom.value = "https://xgis.maaamet.ee/adsavalik/"
* description = "The national identifier of Estonian address data. ADS."
* jurisdiction = urn:iso:std:iso:3166#EE
* usage = "ADS extension is used in resources which include the address element."
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://fhir.ee/sid/ads"
* uniqueId[=].preferred = true

Instance: ehak
InstanceOf: NamingSystem
Usage: #definition
* name = "EHAK"
* title = "Estonian Administrative and Settlement Classification"
* status = #draft
* kind = #codesystem
* date = "2022-11-05T11:45:29.0437162+00:00"
* publisher = "HL7 Estonia"
* contact.telecom.system = #url
* contact.telecom.value = "https://klassifikaatorid.stat.ee/Item/stat.ee/c4c47742-12d7-4fea-bc8c-5aeca9112e2a/76"
* description = "The national code system of Estonian administrative and settlement data. EHAK."
* jurisdiction = urn:iso:std:iso:3166#EE
* usage = "EHAK extension is used in resources which include the address element."
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://fhir.ee/sid/ehak"
* uniqueId[=].preferred = true
* uniqueId[+].type = #oid
* uniqueId[=].value = "1.3.6.1.4.1.28284.6.2.3.2"
* uniqueId[=].preferred = false 


Instance: org-est-br
InstanceOf: NamingSystem
Usage: #definition
* name = "MedreOrganizationLicense"
* title = "Medre Organization License"
* status = #draft
* kind = #identifier
* date = "2022-11-14T18:39:08.4689312+00:00"
* publisher = "HL7 Estonia"
* contact.telecom.system = #url
* contact.telecom.value = "https://ariregister.rik.ee"
* type = $identifier-type#XX
* description = "The national identifier of Estonian organization."
* jurisdiction = urn:iso:std:iso:3166#EE
* usage = "Used in resources defining the identifier for a facility or business."
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://fhir.ee/sid/org/est/br"
* uniqueId[=].preferred = true

Instance: org-est-medre
InstanceOf: NamingSystem
Usage: #definition
* name = "EstonianBusinessRegistryNumber"
* title = "Estonian Business Registry Number"
* status = #draft
* kind = #identifier
* date = "2022-11-14T18:39:08.4689312+00:00"
* publisher = "HL7 Estonia"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.terviseamet.ee"
* type = $identifier-type#XX
* description = "he license number of Estonian health care facilities registered at Health Board."
* jurisdiction = urn:iso:std:iso:3166#EE
* usage = "Used in resources defining the identifier for a facility or business."
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://fhir.ee/sid/org/est/medre"
* uniqueId[=].preferred = true

Instance: org-vatin
InstanceOf: NamingSystem
Usage: #definition
* name = "VatIdentificationNumber"
* title = "VAT identification number"
* status = #draft
* kind = #identifier
* date = "2022-11-05T12:40:30.7439354+00:00"
* publisher = "HL7 Estonia"
* contact.telecom.system = #url
* contact.telecom.value = "https://taxation-customs.ec.europa.eu/vat-identification-numbers_en"
* type = $identifier-type#XX
* description = "VAT identification number."
* jurisdiction = urn:iso:std:iso:3166#EE
* usage = "Used in resources defining the identifier for a taxable person (business) or non-taxable legal entity that is registered for VAT."
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://fhir.ee/sid/org/vatin"
* uniqueId[=].preferred = true

Instance: pid-est-medre
InstanceOf: NamingSystem
Usage: #definition
* name = "MedrePractitonerIdentifier"
* title = "Estonian Health Care Professional License Number"
* status = #draft
* kind = #identifier
* date = "2022-11-05T11:55:28.6412938+00:00"
* publisher = "HL7 Estonia"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.terviseamet.ee"
* description = "The license number of Estonian health care professional registered at Health Board."
* jurisdiction = urn:iso:std:iso:3166#EE
* usage = "Used in resources where the health care professional is identified with a code provided by Estonian Health Board."
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://fhir.ee/sid/pid/est/medre"
* uniqueId[=].preferred = true


Instance: pid-est-ni
InstanceOf: NamingSystem
Usage: #definition
* name = "PidEstNi"
* title = "Estonian Personal National Identification Code"
* status = #draft
* kind = #identifier
* date = "2022-11-05T11:45:29.0437162+00:00"
* publisher = "HL7 Estonia"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.politsei.ee/"
* type = $identifier-type#SB
* description = "The personal national identification code of Estonian citizens and residents."
* jurisdiction = urn:iso:std:iso:3166#EE
* usage = "Used in resources where the Estonian identification code for a person is needed."
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://fhir.ee/sid/pid/est/ni"
* uniqueId[=].preferred = true
* uniqueId[+].type = #oid
* uniqueId[=].value = "1.3.6.1.4.1.28284.6.2.2.1"
* uniqueId[=].preferred = true