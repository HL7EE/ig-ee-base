CodeSystem: DateAccuracyIndicator
Id:         ee-date-accuracy-indicator
Title:     "Date Accuracy Indicator"
Description: "Date Accuracy Indicator. Check full list here https://www.healthterminologies.gov.au/integration/R4/fhir/CodeSystem/date-accuracy-indicator-1."
* ^experimental = true
* ^caseSensitive = false
//* ^url =  https://fhir.ee/CodeSystem/date-accuracy-indicator
* #AAA "DMY" "Day, month and year are accurate"
* #AAU "DM" "Day and month are accurate, year is unknown"
* #UAA "MY" "Day is unknown, month and year are accurate"
* #UEA "~MY" "Day is unknown, month is estimated, year is accurate"
* #UUU "N/A" "Day, month and year are unknown"


ValueSet: DateAccuracyIndicator
Id: ee-date-accuracy-indicator
Title: "Date Accuracy Indicator"
Description: "Date Accuracy Indicator"
* ^experimental = true
* include codes from system DateAccuracyIndicator 


Extension: ExtensionEEBaseDateAccuracyIndicator
Id: ee-date-accuracy-indicator
Title: "Date Accuracy Indicator"
Description: "This extension applies to the [date](http://hl7.org/fhir/R4/datatypes.html#date) and [dateTime](http://hl7.org/fhir/R4/datatypes.html#dateTime) data types and is used to represent the accuracy of the associated date."
/*
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 2
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[=]._valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=]._valueCode.extension.valueCanonical = "http://hl7.org.au/fhir/ImplementationGuide/hl7.fhir.au.base"
*/
* ^version = "5.0.0"
* ^publisher = "HL7 Estonia"
* ^jurisdiction = urn:iso:std:iso:3166#EE
* ^context[0].type = #element
* ^context[=].expression = "date"
* ^context[+].type = #element
* ^context[=].expression = "dateTime"
* . ..1
* . ^short = "Date accuracy indicator"
* . ^definition = "General date accuracy indicator coding."
* . ^comment = "In some circumstances, systems may capture date or dateTime data that has unknown or estimated parts. This coding indicates the accuracy of the day, month and year parts. This concept is equivalent to Australian Institute of Health and Welfare data element 294418 [Date—accuracy indicator](https://meteor.aihw.gov.au/content/index.phtml/itemId/294418)."
* value[x] 1..
* value[x] only Coding
* value[x] from DateAccuracyIndicator (required)
* value[x] ^short = "Date accuracy coding"
* value[x] ^definition = "Coding of the accuracy of a date."
* value[x] ^binding.description = "Date accuracy coding"

