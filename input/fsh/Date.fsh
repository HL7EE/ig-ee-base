Extension: ExtensionEEBaseDateAccuracyIndicator
Id: ee-date-accuracy-indicator
Title: "EEBase Date Accuracy Indicator"
Description: "This extension applies to the [date](http://hl7.org/fhir/datatypes.html#date) and [dateTime](http://hl7.org/fhir/datatypes.html#dateTime) data types and is used to represent the accuracy of the associated date."
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
* value[x] from EEDateAccuracyIndicator (required)
* value[x] ^short = "Date accuracy coding"
* value[x] ^definition = "Coding of the accuracy of a date."
* value[x] ^binding.description = "Date accuracy coding"

