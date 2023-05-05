CodeSystem: EEBaseIdentitySystem
Id: ee-identity-system
Title: "Identity Systems"
Description: "Description of the identity system concepts acceptable for entity identification"
* ^caseSensitive = false
* ^experimental = true
* ^publisher = "HL7 Estonia"
* ^content = #complete
* ^hierarchyMeaning = #is-a
* ^property[0].code = #idtype
//* ^property[=].uri = "http://terminology.hl7.org/CodeSystem/v2-0203"
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#idtype"
* ^property[=].description = "Identifier type of concept according to http://terminology.hl7.org/CodeSystem/v2-0203"
* ^property[=].type = #code
* ^property[+].code = #country
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#country"
* ^property[=].description = "ISO 3166 аlpha3 country code"
* ^property[=].type = #code
* ^property[+].code = #naming-system
* ^property[=].description = "The uri to the related naming system"
* ^property[=].type = #string
* ^property[+].code = #status
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#status"
* ^property[=].description = "Status of the concept according to http://terminology.hl7.org/CodeSystem/v3-ConceptStatus"
* ^property[=].type = #code
* #https://fhir.ee/sid/org "Root of identifiers for organization identification" "Identifikaatorid asutustele"
* #https://fhir.ee/sid/org ^property[0].code = #status
* #https://fhir.ee/sid/org ^property[=].valueCode = #R
  * #https://fhir.ee/sid/org/est/br
      "Estonian Business Register Code" 
      "Äriregistri number"
    * ^property[0].code = #idtype
    * ^property[=].valueCode = #XX
    * ^property[+].code = #country
      * ^property[=].valueCode = #EST
    * ^property[+].code = #naming-system
    * ^property[=].valueString = "https://fhir.ee/NamingSystem/org-est-br"
    * ^property[+].code = #status
    * ^property[=].valueCode = #A      
  * #https://fhir.ee/sid/org/est/medre
      "License number provided by The National Institute for Health Development"  
      "Terviseameti litsentsi number"
    * ^property[0].code = #idtype
    * ^property[=].valueCode = #XX
    * ^property[+].code = #country
      * ^property[=].valueCode = #EST
    * ^property[+].code = #naming-system
    * ^property[=].valueString = "https://fhir.ee/NamingSystem/org-est-medre"
    * ^property[+].code = #status
    * ^property[=].valueCode = #A      
  * #https://fhir.ee/sid/org/vatin
      "VAT identification number"
      "KMKR"
    * ^property[0].code = #idtype
    * ^property[=].valueCode = #XX
    * ^property[+].code = #naming-system
    * ^property[=].valueString = "https://fhir.ee/NamingSystem/org-vatin"    
    * ^property[+].code = #status
    * ^property[=].valueCode = #A    
* #https://fhir.ee/sid/pid "Root of identifiers for person identification" "Identifikaatorid isikutele"
* #https://fhir.ee/sid/pid ^property[0].code = #status
* #https://fhir.ee/sid/pid ^property[=].valueCode = #R
  * #https://fhir.ee/sid/pid/est "Root of Estonian identifiers for person identification" "Eesti identifikaatorid isikutele"
  * #https://fhir.ee/sid/pid/est ^property[0].code = #status
  * #https://fhir.ee/sid/pid/est ^property[=].valueCode = #R
  * #https://fhir.ee/sid/pid/est ^property[+].code = #country
  * #https://fhir.ee/sid/pid/est ^property[=].valueCode = #EST 
    * #https://fhir.ee/sid/pid/est/ni
        "Estonian personal national identification code"
        "Eesti isikukood"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #country
      * ^property[=].valueCode = #EST
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "https://fhir.ee/NamingSystem/pid-est-ni"  
      * ^property[+].code = #status
      * ^property[=].valueCode = #A       
    * #https://fhir.ee/sid/pid/est/ppn
        "Estonian passport number"
        "Eesti passinumber"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #country
      * ^property[=].valueCode = #EST
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-EST"  
      * ^property[+].code = #status
      * ^property[=].valueCode = #A       
  * #https://fhir.ee/sid/pid/deu "Root of German identifiers for person identification" "Saksamaa identifikaatorid isikutele"
  * #https://fhir.ee/sid/pid/deu ^property[0].code = #status
  * #https://fhir.ee/sid/pid/deu ^property[=].valueCode = #R
  * #https://fhir.ee/sid/pid/deu ^property[+].code = #country
  * #https://fhir.ee/sid/pid/deu ^property[=].valueCode = #DEU     
    * #https://fhir.ee/sid/pid/deu/ppn
        "German passport number"
        "Saksamaa passinumber"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #country
      * ^property[=].valueCode = #DEU
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-DEU"  
      * ^property[+].code = #status
      * ^property[=].valueCode = #A       
  * #https://fhir.ee/sid/pid/usa "Root of USA identifiers for person identification" "USA identifikaatorid isikutele"
  * #https://fhir.ee/sid/pid/usa ^property[0].code = #status
  * #https://fhir.ee/sid/pid/usa ^property[=].valueCode = #R
  * #https://fhir.ee/sid/pid/usa ^property[+].code = #country
  * #https://fhir.ee/sid/pid/usa ^property[=].valueCode = #USA   
    * #https://fhir.ee/sid/pid/usa/ppn
        "USA passport number"
        "USA passinumber"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #country
      * ^property[=].valueCode = #USA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-USA"  
      * ^property[+].code = #status
      * ^property[=].valueCode = #A            
  * #https://fhir.ee/sid/pid/fin "Root of Finnish identifiers for person identification" "Soome identifikaatorid isikutele"
  * #https://fhir.ee/sid/pid/fin ^property[0].code = #status
  * #https://fhir.ee/sid/pid/fin ^property[=].valueCode = #R
  * #https://fhir.ee/sid/pid/fin ^property[+].code = #country
  * #https://fhir.ee/sid/pid/fin ^property[=].valueCode = #FIN     
    * #https://fhir.ee/sid/pid/fin/ni
        "Finnish personal national identification code"
        "Soome isikukood"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #country
      * ^property[=].valueCode = #FIN
      * ^property[+].code = #status
      * ^property[=].valueCode = #A     
    * #https://fhir.ee/sid/pid/fin/ppn
        "Finnish passport number"
        "Soome passinumber"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #country
      * ^property[=].valueCode = #FIN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-FIN"  
      * ^property[+].code = #status
      * ^property[=].valueCode = #A       
* #https://fhir.ee/sid/pro "Root of identifiers for healthcare professionals" "Identifikaatorid tervishoiutöötajatele"
* #https://fhir.ee/sid/pro ^property[0].code = #status
* #https://fhir.ee/sid/pro ^property[=].valueCode = #R
  * #https://fhir.ee/sid/pro/est "Root of Estonian identifiers for healthcare professionals" "Eesti identifikaatorid tervishoiutöötajatele"
  * #https://fhir.ee/sid/pro/est ^property[0].code = #status
  * #https://fhir.ee/sid/pro/est ^property[=].valueCode = #R
  * #https://fhir.ee/sid/pro/est ^property[+].code = #country
  * #https://fhir.ee/sid/pro/est ^property[=].valueCode = #EST
    * #https://fhir.ee/sid/pro/est/medre
        "Healthcare professional number provided by The National Institute for Health Development"
        "Tervishoiutöötaja TAM kood"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #AC
      * ^property[+].code = #country
      * ^property[=].valueCode = #EST
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "https://fhir.ee/NamingSystem/pro-est-medre"  
      * ^property[+].code = #status
      * ^property[=].valueCode = #A   

ValueSet: EEBaseIdentitySystemActive
Id: ee-identity-active
Title: "Active Identity Systems"
Description: "Active Identity Systems"
* ^experimental = true
* include codes from system EEBaseIdentitySystem where status = "A"

ValueSet: EEBaseOrganizationIdentity
Id: ee-organization-identity
Title: "Organization Identity Systems"
Description: "Identity system acceptable for organization identification"
* ^experimental = true
* EEBaseIdentitySystem#https://fhir.ee/sid/org/est/medre
* EEBaseIdentitySystem#https://fhir.ee/sid/org/est/br
* EEBaseIdentitySystem#https://fhir.ee/sid/org/vatin

ValueSet: EEBasePractitionerIdentity
Id: ee-practitioner-identity
Title: "Practitioner Identity Systems"
Description: "Identity system acceptable for practitioner identification"
* ^experimental = true
* EEBaseIdentitySystem#https://fhir.ee/sid/pid/est/ni
* EEBaseIdentitySystem#https://fhir.ee/sid/pro/est/medre

ValueSet: EEBaseIdentitySystemPid
Id: ee-identity-system-pid
Title: "Person Identity Systems"
Description: "Identity system acceptable for organization identification"
* ^experimental = true
//* EEBaseIdentitySystem#https://fhir.ee/sid/pid/est/ni
* include codes from system EEBaseIdentitySystem where concept descendent-of "https://fhir.ee/sid/pid"
//* include codes from system EEBaseIdentitySystem where idtype = "PPN" and idtype = "NI"
//* exclude codes from system EEBaseIdentitySystem where status = "R" 

ValueSet: EEBasePatientIdentity
Id: ee-patient-identity
Title: "Person Identity Systems"
Description: "Identity system acceptable for organization identification"
* ^experimental = true
* include codes from valueset EEBaseIdentitySystemPid and EEBaseIdentitySystemActive
