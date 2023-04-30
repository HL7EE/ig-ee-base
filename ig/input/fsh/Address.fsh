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
* value[x].system 1..
* value[x].system = "https://fhir.ee/sid/ads" (exactly)
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
* value[x].system 1..
* value[x].system = "https://fhir.ee/sid/ehak" (exactly)
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
Description: "EEBase Address Type"
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
* line.extension[censusTract] ^short = "A geographic sub-unit delineated for demographic purposes."
* line.extension[censusTract] ^definition = "Väikekoht (AÜ, SÜ, GÜ, vkt). Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 4."
* line.extension[censusTract] ^isModifier = false
* line.extension[streetName] ^short = "Street name"
* line.extension[streetName] ^definition = "Liikluspind (tee, tänav, puiestee, maantee). Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 5."
* line.extension[streetName] ^isModifier = false
* line.extension[streetNameBase] ^short = "The base name of a roadway or artery recognized by a municipality (excluding street type and direction)."
* line.extension[streetNameBase] ^definition = "Nimi (kohanimi, maaüksuse nimi). Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 6."
* line.extension[streetNameBase] ^isModifier = false
* line.extension[houseNumber] ^short = "House number"
* line.extension[houseNumber] ^definition = "Aadressinumber (maaüksuse või hoone erilisand). Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 7."
* line.extension[houseNumber] ^isModifier = false
* line.extension[additionalLocator] ^short = "Additional locator"
* line.extension[additionalLocator] ^definition = "Korteri või muu hooneosa number. Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 8."
* line.extension[additionalLocator] ^isModifier = false
* city ^definition = "Omavalitsus (linn, vald). Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 2."
* district ^short = "The name of the administrative area"
* district ^definition = "Asula (küla, alevik, alev, vallasisene linn) või linnaosa. Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 3."
* state ^short = "Sub-unit of country"
* state ^definition = "Maakond. Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 1."
* postalCode ^definition = "Postiindeks"
* country ^definition = "Riigi kood (lubatud ISO 3166 2 or 3 koodid)"

