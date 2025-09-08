CodeSystem: EEDateAccuracyIndicator
Id:         date-accuracy-indicator
Title:     "Date Accuracy Indicator"
Description: "The Date Accuracy Indicator code system defines concepts that indicate the accuracy of components of a reported date. The concepts defined in this code system are equivalent to those defined in the METeOR value domains for Date—accuracy indicator, code AAA (http://meteor.aihw.gov.au/content/index.phtml/itemId/294429)."
* ^experimental = true
* ^caseSensitive = false
* #AAA	"Day, month and year are accurate"
* #AAE	"Day and month are accurate, year is estimated"
* #AAU	"Day and month are accurate, year is unknown"
* #AEA	"Day is accurate, month is estimated, year is accurate"
* #AEE	"Day is accurate, month and year are estimated"
* #AEU	"Day is accurate, month is estimated, year is unknown"
* #AUA	"Day is accurate, month is unknown, year is accurate"
* #AUE	"Day is accurate, month is unknown, year is estimated"
* #AUU	"Day is accurate, month and year are unknown"
* #EAA	"Day is estimated, month and year are accurate"
* #EAE	"Day is estimated, month is accurate, year is estimated"
* #EAU	"Day is estimated, month is accurate, year is unknown"
* #EEA	"Day and month are estimated, year is accurate"
* #EEE	"Day, month and year are estimated"
* #EEU	"Day and month are estimated, year is unknown"
* #EUA	"Day is estimated, month is unknown, year is accurate"
* #EUE	"Day is estimated, month is unknown, year is estimated"
* #EUU	"Day is estimated, month and year are unknown"
* #UAA	"Day is unknown, month and year are accurate"
* #UAE	"Day is unknown, month is accurate, year is estimated"
* #UAU	"Day is unknown, month is accurate, year is unknown"
* #UEA	"Day is unknown, month is estimated, year is accurate"
* #UEE	"Day is unknown, month and year are estimated"
* #UEU	"Day is unknown, month is estimated, year is unknown"
* #UUA	"Day and month are unknown, year is accurate"
* #UUE	"Day and month are unknown, year is estimated"
* #UUU	"Day, month and year are unknown"

ValueSet: EEDateAccuracyIndicator
Id: date-accuracy-indicator
Title: "Date Accuracy Indicator"
Description: "Date Accuracy Indicator"
* ^experimental = true
* include codes from system EEDateAccuracyIndicator 