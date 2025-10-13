### Release notes

v1.2.0 - 04.09.2025

* EEBaseAddress version **changed** 1.0.0 -> 1.2.0
* address-official local extension **changed** to HL7 extension
* ADS and ADR examples **added** for EEBaseAddress
* In EEBaseAddress ISO3166-2 for country code VS **changed** to Riikide ja territooriumide klassifikaator https://fhir.ee/ValueSet/rtk-alpha-2 
* Terminology **correction**: https://fhir.ee/CodeSystem/eriala -> https://fhir.ee/CodeSystem/erialad
* Correct reference **added** to Erialad CS and VS 
* New page "Changes" **added** where all changes should be recorded
* Identifier domain references **corrected**
* Local terminology for Date Accuracy Index and Mode of Arrival **added**
* All local (experimental) VS references **removed** and **changed** to HL7 references
* Dependency from ee.fhir.terminology **removed**

v1.3.0 - 13.10.2025
* Added EEAdsAdrId CodeSystem and ValueSet (previously in ee.fhir.terminology), canonical url changed to https://fhir.ee/base/...
* Added EEAdsOid CodeSystem and ValueSet (previously in ee.fhir.terminology), canonical url changed to https://fhir.ee/base/...
* Patient.active changed cardinality 1..1 -> 0..1, matching FHIR default
