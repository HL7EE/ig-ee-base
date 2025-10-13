CodeSystem: EEAdsAdrId
Id: ads-adr-id
Title: "ADS AdrId"
Description: "Address identifiers in the Estonian Address."
* ^experimental = true
* ^caseSensitive = false
* ^content = #fragment
* #2103553 "Harju maakond, Tallinn"
* #2103556 "Harju maakond, Tallinn, Lasnamäe linnaosa"
* #2280361 "Harju maakond, Tallinn, Lasnamäe linnaosa, Valukoja tn 10"
* #3020414 "Tartu maakond, Tartu linn"
* #3066282 "Tartu maakond, Tartu linn, Tartu linn, K. Veeberi tn 4"
* #3020415 "Tartu maakond, Tartu linn, Tähtvere küla"

ValueSet: EEAdsAdrId
Id: ads-adr-id
Title: "ADS AdrId"
Description: "Address identifiers in the Estonian Address."
* ^experimental = true
* include codes from system EEAdsAdrId

CodeSystem: EEAdsOid
Id: ads-oid
Title: "ADS Oid"
Description: "Address objects in the Estonian Address System."
* ^experimental = true
* ^caseSensitive = false
* ^content = #fragment
* #OV00000784 "Harju maakond, Tallinn"
* #LO00000339 "Harju maakond, Tallinn, Lasnamäe linnaosa"
* #ME03379409 "Harju maakond, Tallinn, Lasnamäe linnaosa, Valukoja tn 10"
* #AY03658881 "Tartu maakond, Tartu linn"
* #EE00752500 "Tartu maakond, Tartu linn, Tartu linn, K. Veeberi tn 4"
* #AY00008560 "Tartu maakond, Tartu linn, Tähtvere küla"

ValueSet: EEAdsOid
Id: ads-oid
Title: "ADS Oid"
Description: "Address objects in the Estonian Address System."
* ^experimental = true
* include codes from system EEAdsOid
