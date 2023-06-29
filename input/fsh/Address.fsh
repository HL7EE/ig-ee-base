CodeSystem: EEBaseADS
Id:         ee-ads
Title:     "ADS"
Description: "Estonian Address Data System."
* ^experimental = true
* ^caseSensitive = false
* ^content = #fragment
* #2103553 "Harju maakond, Tallinn"
* #2103556 "Harju maakond, Tallinn, Lasnamäe linnaosa"
* #2280361 "Harju maakond, Tallinn, Lasnamäe linnaosa, Valukoja tn 10"
* #3020414 "Tartu maakond, Tartu linn" "Tartu maakond, Tartu linn, Tartu linn"
* #3066282 "Tartu maakond, Tartu linn, Tartu linn, K. Veeberi tn 4"
* #3020415 "Tartu maakond, Tartu linn, Tähtvere küla"


ValueSet: EEBaseADS
Id: ee-ads
Title: "ADS"
Description: "Estonian Address Data System."
* ^experimental = true
* include codes from system EEBaseADS 


Extension: ExtensionEEBaseADS
Id: ee-ads
Title: "EEBase ADS"
Description: "EEBase ADS extension"
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* ^context.type = #element
* ^context.expression = "Address"
* . ^short = "ADS extension"
* . ^definition = "Aadressiandmete süsteem (ADS) koosneb aadressiandmete süsteemi infosüsteemist ning erinevatest nõuetest. ADS-i eesmärk on tagada ühene aadressiandmete kogumine, registreerimine, töötlemine, säilitamine, identifitseerimine ning töötlemise funktsioonide ühetaoline korraldamine."
* value[x] only Coding
* value[x] from EEBaseADS
* value[x].system ^short = "Reference to ADR-ID (identifier of address object and its version)"
* value[x].system ^definition = "https://geoportaal.maaamet.ee/est/Ruumiandmed/Aadressiandmed-p112.html"
* value[x].code 1..


Extension: ExtensionEEBaseEHAK
Id: ee-ehak
Title: "EEBase EHAK"
Description: "EEBase EHAK extension"
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* ^context.type = #element
* ^context.expression = "Address"
* . ^short = "EHAK extension"
* . ^definition = "Eesti haldus- ja asustusjaotuse klassifikaator (EHAK) on ette nähtud territoriaalse paiknemise tähistamiseks. Igale klassifitseerimisobjektile on antud unikaalne neljakohaline kood ja näidatud on objekti nimi ning rööpnimi (kui see on olemas)."
* value[x] only Coding
* value[x].system ^short = "Reference to EHAK classifier"
* value[x].system ^comment = "HL7 V3 OID puus registreeritud väärtusena 1.3.6.1.4.1.28284.6.2.3.2"
* value[x].code 1..


Alias: $iso21090-ADXP-censusTract = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-censusTract
Alias: $iso21090-ADXP-streetName = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName
Alias: $iso21090-ADXP-streetNameBase = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase
Alias: $iso21090-ADXP-houseNumber = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber
Alias: $iso21090-ADXP-additionalLocator = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator



Profile: EEBaseAddress
Parent: Address
Id: ee-address
Title: "EEBase Address"
Description: "An address expressed using postal conventions (as opposed to GPS or other location definition formats). This datatype may be used to convey addresses for use in delivering mail as well as for visiting locations which might not be valid for mail delivery. There are a variety of postal address formats defined around the world. EEBase Address resource is developed in cooperation with Estonian Land Board. EEBase Address resource describes both Estonian and foreign addresses."
* ^version = "1.0.0"
* ^status = #draft
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    ExtensionEEBaseADS named ads 0..1 MS and
    ExtensionEEBaseEHAK named ehak 0..1 MS
* extension[ads] ^short = "ADR-ID"
* extension[ads] ^isModifier = false
* extension[ehak] ^short = "EHAK code"
* extension[ehak] ^isModifier = false
* country 1..1 MS 
* country ^short = "Should use a 2 digit ISO 3166 code"
* country ^definition = "Riigi kood (lubatud ISO-3166-2 koodid)"
* country from $country2
* use 1..1 MS
* text MS
* state ^short = "Sub-unit of country"
* district ^short = "Administrative or political subdivision of a state or city"
* line.extension ^slicing.discriminator.type = #value
* line.extension ^slicing.discriminator.path = "url"
* line.extension ^slicing.rules = #open
* line.extension ^min = 0
* line.extension contains
    $iso21090-ADXP-censusTract named censusTract 0..1 and
    $iso21090-ADXP-streetName named streetName 0..1 and
    $iso21090-ADXP-streetNameBase named streetNameBase 0..1 and
    $iso21090-ADXP-houseNumber named houseNumber 0..1 and
    $iso21090-ADXP-additionalLocator named additionalLocator 0..1
* line.extension[censusTract] ^isModifier = false
* line.extension[streetName] ^isModifier = false
* line.extension[streetNameBase] ^isModifier = false
* line.extension[houseNumber] ^isModifier = false
* line.extension[additionalLocator] ^isModifier = false
* line.extension[censusTract] ^short = "A geographic sub-unit delineated for demographic purposes."
* line.extension[streetName] ^short = "Street name"
* line.extension[streetNameBase] ^short = "The base name of a roadway or artery recognized by a municipality (excluding street type and direction)."
* line.extension[houseNumber] ^short = "House number"
* line.extension[additionalLocator] ^short = "Additional locator"

* line.extension[censusTract] ^definition = "Väikekoht (AÜ, SÜ, GÜ, vkt). Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 4."
* line.extension[streetName] ^definition = "Liikluspind (tee, tänav, puiestee, maantee). Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 5."
* line.extension[streetNameBase] ^definition = "Nimi (kohanimi, maaüksuse nimi). Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 6."
* line.extension[houseNumber] ^definition = "Aadressinumber (maaüksuse või hoone erilisand). Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 7."
* line.extension[additionalLocator] ^definition = "Korteri või muu hooneosa number. Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 8."
* postalCode ^definition = "Postiindeks"
//* district ^short = "Omavalitsus (linn, vald). Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 2."
* city ^definition = "Asula (küla, alevik, alev, vallasisene linn) või linnaosa. Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 3."

/*
Invariant: inv-add-1
Description: "Country code shall be 2 symbols"
Severity: #error
Expression: "matches('^[A-Z]{2}$')"

Profile: EEBaseAddressEE
Parent: EEBaseAddress
Id: ee-address-ee
Title: "Estonain Address"
Description: "Estonian Address Type"
* ^version = "1.0.0"
* ^status = #draft
* country = #EE (exactly)
* text ^short = "Täisaadressi visuaalne esitlus"
* state ^short = "Maakond. Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 1."
* city ^short = "Omavalitsus (linn, vald). Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 2."
* district ^short = "Asula (küla, alevik, alev, vallasisene linn) või linnaosa. Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 3."
* postalCode ^short = "Postiindeks"
* postalCode obeys inv-add-2
* line.extension[censusTract] ^short = "Väikekoht (AÜ, SÜ, GÜ, vkt). Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 4."
* line.extension[streetName] ^short = "Liikluspind (tee, tänav, puiestee, maantee). Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 5."
* line.extension[streetNameBase] ^short = "Nimi (kohanimi, maaüksuse nimi). Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 6."
* line.extension[houseNumber] ^short = "Aadressinumber (maaüksuse või hoone erilisand). Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 7."
* line.extension[additionalLocator] ^short = "Korteri või muu hooneosa number. Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 8."

Invariant: inv-add-2
Description: "Postal code shall be 5 digits"
Severity: #error
Expression: "matches('^[0-9]{5}$')"

Profile: EEBaseAddressNonEE
Parent: EEBaseAddress
Id: ee-address-non-ee
Title: "Foreigner Address"
Description: "This profile defines an address structure for non Estonian patients."
* ^jurisdiction = urn:iso:std:iso:3166#EE
* . ^short = "Välismaalase aadress"
* text 1..1 MS 
* text ^short = "Täisaadressi visuaalne esitlus"
* country ^short = "Should use non 'EE' a 2 digit ISO 3166 code"
* obeys inv-add-3

Invariant: inv-add-3
Description: "Non Estonian aadress"
Severity: #error
Expression: "country != 'EE'"

*/
