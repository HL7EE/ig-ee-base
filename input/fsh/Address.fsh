Alias: $address-official = http://hl7.org/fhir/StructureDefinition/address-official

Extension: ExtensionEEBaseAddressNotice
Id: ee-address-notice
Title: "EEBase Address Notice"
Description: "EEBase Address Notice"
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* ^context.type = #element
* ^context.expression = "Address"
* . ^short = "Address notice or warning"
* . ^definition = "Aadressi hoiused või märkused"
* value[x] only Coding
* value[x].system ^short = "Address notice or warning"
* value[x].code 1..


Extension: ExtensionEEBaseAdsAdrId
Id: ee-ads-adr-id
Title: "EEBase ADS AdrId"
Description: "EEBase ADS AdrId extension"
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* ^context.type = #element
* ^context.expression = "Address"
* . ^short = "ADS ADR-ID extension"
* . ^definition = "Aadressiandmete süsteemi (ADS) aadressi versiooni unikaalne identifikaator"
* value[x] only Coding
* value[x] from EEAdsAdrId
* value[x].system ^short = "Reference to ADS AdrId (address identifier)"
* value[x].system ^definition = "https://geoportaal.maaamet.ee/est/Ruumiandmed/Aadressiandmed-p112.html"
* value[x].code 1..


Extension: ExtensionEEBaseAdsOid
Id: ee-ads-oid
Title: "EEBase ADS Oid"
Description: "EEBase ADS Oid extension"
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* ^context.type = #element
* ^context.expression = "Address"
* . ^short = "ADS OID extension"
* . ^definition = "Aadressiandmete süsteemi (ADS) aadressi objekti identifikaator. Omab sama väärtust erinevate versioonide (ehk aadressite identifikaatorite lõikes)."
* value[x] only Coding
* value[x] from EEAdsOid
* value[x].system ^short = "Reference to ADS Oid (address object)"
* value[x].system ^definition = "https://geoportaal.maaamet.ee/est/Ruumiandmed/Aadressiandmed-p112.html"
* value[x].code 1..

Extension: ExtensionEEBaseEhak
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
* ^version = "2.0.0"
* ^status = #draft
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    ExtensionEEBaseAdsAdrId named adsAdrId 0..1 and
    ExtensionEEBaseAdsOid named adsOid 0..1 and
    ExtensionEEBaseEhak named ehak 0..1 and
    $address-official named official 0..1 and
    ExtensionEEBaseAddressNotice named notice 0..* 
* extension[adsAdrId] ^short = "ADS AdrId"
* extension[adsAdrId] ^isModifier = false
* extension[adsOid] ^short = "ADS Oid"
* extension[adsOid] ^isModifier = false
* extension[ehak] ^short = "EHAK code"
* extension[ehak] ^isModifier = false
* extension[official] ^short = "Indicator of address of residency"
* extension[official] ^isModifier = false
* extension[notice] ^short = "Address notices and warnings"
* extension[notice] ^isModifier = false
* country 1..1
* country ^short = "Should use a 2 digit country code"
* country ^definition = "Riigi kood (kasutusel Riikide ja territooriumide klassifikaator (RTK), kus koodid on samad, mis ISO-3166-2"
* country from $country2
* use 1..1
* text
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
