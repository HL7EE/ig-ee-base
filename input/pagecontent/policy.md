<!--div class="alert alert-warning">

<b>Work in progress.</b>
This section of the Implementation Guide is subject to change.

</div-->

<!--button onclick="topFunction()" id="topButton" title="Back to top">top</button-->
---

### General

#### FHIR-GEN-01 **HL7 FHIR standard compliance**.
- All FHIR implementations **MUST** comply with the HL7 FHIR standard.
- All implementations of FHIR interfaces **MUST** comply with the requirements outlined in the relevant release of the HL7 FHIR standards, as outlined on [fhir.hl7.org](http://fhir.hl7.org).

#### FHIR-GEN-02 **Availability of FHIR resources on a public server**.
- All FHIR resources are published on a public FHIR reference server.
- All FHIR resources relating to national systems and other nationally defined FHIR API profiles (including StructureDefinitions, ValueSets, OperationDefinitions, ImplementationGuides, etc.) that are ready for external use (in either DRAFT or ACTIVE status) **MUST** also be made available the HL7 Estonia reference server api.fhir.ee.
- Resources that are part of the National Estonian Health System (TIS) **MUST** also be published on a TEHIK branded public FHIR server fhir.tehik.ee.

#### FHIR-GEN-03 **Avoid FHIR Document Paradigm**
- Avoid FHIR [Document Paradigm](http://www.hl7.org/fhir/documents.html) when possible. Use [REST](http://www.hl7.org/fhir/http.html) and [Messaging Paradigms](http://www.hl7.org/fhir/messaging.html) instead.

---

### Conformance

#### FHIR-CONF-01 **Support conformance**
- All servers offering a FHIR API **MUST** publish a FHIR conformance/capability statement (in the form of a CapabilityStatement resource) at the root URL of their FHIR Server. Following HL7 EEBase-CapabilityStatement profile.

---

### Profiling
#### FHIR-PROFILE-01 **Profile tree**
The FHIR standard provides a mechanism to specialise and extend FHIR resources by creating [profiles](https://www.hl7.org/fhir/profiling.html).
In Estonia, profiles are developed according to the following “levels”:
- Level 1: The base [FHIR resource profiles](http://hl7.org/fhir/resourcelist.html) defined by HL7 International.
- Level 2: The ‘Estonian Base Profiles’ are Estonia-wide profiles curated through the HL7 FHIR Estonia community and published on the HL7 Estonia FHIR reference server.
- Level 3: The implementation-specific profiles for a particular system or domain. <br/>Profiles for upTIS are published on the TEHIK FHIR Reference Server. <br/>Profiles for Tervisekassa projects are published on the HL7 Estonia FHIR Reference Server.

#### FHIR-PROFILE-02 **Summary field**
- Profiles **MUST NOT** define alternate summary fields for resources.- All FHIR base resources have several fields defined as 'summary' fields, which appear when the client requests summary versions of the resource to be returned (for example, in [search results](https://www.hl7.org/fhir/search.html#summary)). These summary fields can only be defined in base resources and cannot be changed in any profiles.

#### FHIR-PROFILE-03 **Must Support**
- If *mustSupport* is true, conformant resource authors SHALL be capable of providing a value for the element and resource consumers SHALL be capable of extracting and doing something useful with the data element. If false, the element may be ignored and not supported. 
- The *mustSupport* is used in the profiles where standard developers want to leave an element as “optional”, but want to state that implementers playing in a particular space **must support** that element.

---

### Versioning
#### FHIR-VER-01: **Versioning of Profiles and Resources**
- Nationally defined FHIR profiles will be versioned during development using Git, following the standard GitFlow model. The versioning for published artefacts will broadly follow [semantic versioning standards](http://semver.org/).
The major and minor versions will be visible, and the patch version **MAY** also be exposed. 
Version numbers held in profiles and resource instanced **MUST** therefore be in one of the following forms:
MAJOR – e.g. 1
MAJOR.MINOR – e.g. 1.0
MAJOR.MINOR.PATCH – e.g. 1.0.2
- The version number <b>MUST NOT</b> be included in the profile name.
- The version number <b>MUST</b> be used as the profile version attribute.  

Example of a version number in Estonian base Organization
```json
{
  "resourceType": "StructureDefinition",
  "id": "EEBaseOrganization",
  "url": "https://fhir.ee/StructureDefinition/ee-organization",
  "version": "1.0.0"
}
```


---

### Naming
To promote consistency and make it easier for implementers to locate suitable profiles, extensions, value sets and others for their projects, a naming strategy will be adopted for EEBase-defined FHIR assets or FHIR assets derived from the EEBase. All EEBase-derived implementation guides and FHIR assets **MUST** follow these rules to claim conformace with the EEBase.
For detailed definitions of concepts discussed within this guidance document, refer to the appropriate published version of the [FHIR standard](http://www.hl7.org/fhir/).

#### FHIR-NAME-01: **Convention for Profile definition**
FHIR Profile name **MUST** follow an agreed format. 
The FHIR profile name consists of several logical name segments:
- **Base URL**: The **URL** used for standard publishing. For example, [hl7.org](http://fhir.hl7.org) for HL7 International and [fhir.ee](https://fhir.ee/index.html) for HL7 Estonia. **Mandatory**.
  - Check the full [list](#health-services) of providers. 
  - You can register your project with fhir.ee namespace through [HL7 Estonia Board](contact.html).
- **Base**: The provider name. May differ for *resource name* and for *id*. **Mandatory**. 
  - The base for Estonian Base is **EEBase** for resource names and **ee** for id-s. 
- **ResourceType**: The name of the FHIR Resource Type or the category of FHIR Resource. **Mandatory**.
- **BusinessNames**: Business names are only used where mutiple profiles exist for a given base resource type. **Optional**.
- No business version information is allowed in the  resource URL.
- Name segments **SHOULD** be U.S. English (spelled correctly)

The FHIR profile consists of (computable) name, id and url:
- **Resource Name**: The [**Base**], [**ResourceType**] and [<b>BusinessNames</b>] without hyphen (-) **SHOULD** be used as resource name. Segment names in FHIR Profile resource name **MUST** follow [Pascal case convention](https://www.theserverside.com/definition/Pascal-case). Resource name also known as computable name that **MAY** be used for code generation.
- **Resource Id**: The [**Base**]-[**ResourceType**]-[**BusinessNames**] with hyphen (-) and in lower-case is **RECOMMENDED** for this purpose.
- **Resource Url**: URL reuse the resource id - [**Base URL**]/StructureDefinition/[**Resource Id**]. 
- **Title**: The title of the resource MUST be the [**Base**], [**ResourceType**] and [**BusinessNames**] with added spaces to make it human readable and understandable.

Examples:

| Resource Name | Resource Id | Resource Url | Resource Title |
| -------- | ------------- | -------- | -------- |
| EEBasePatient | ee-patient | https://fhir.ee/StructureDefinition/ee-patient | EEBase Patient | 
| EEBaseAddress | ee-address | https://fhir.ee/StructureDefinition/ee-address |	EEBase Address | 
| EEMPIPatientUnknown | ee-mpi-patient-unknown | https://fhir.ee/StructureDefinition/ee-mpi-patient-unknown |EE MPI Patient Unknown | 
| EEMPISocialHistoryEducationLevel | ee-mpi-socialhistory-education-level | https://fhir.ee/StructureDefinition/ee-mpi-socialhistory-education-level |EE MPI SocialHistory Education Level | 

---

#### FHIR-NAME-02: **Convention for Extension definition**
FHIR Extension **MUST** follow an agreed format. 

The name of FHIR extension follows the rules of the FHIR profile. The only difference FHIR Extension should have word "Extension" at the beging of **Resource Name**.

Examples:

| Resource Name | Resource Id | Resource Url | Resource Title |
| -------- | ------------- | -------- | -------- |
| ExtensionEEBaseAdsAdrId | ee-ads-adr-id | https://fhir.ee/StructureDefinition/ee-ads-adr-id | EEBase ADS AdrId| 
| ExtensionEEBaseAdsOid | ee-ads-oid | https://fhir.ee/StructureDefinition/ee-ads-oid | EEBase ADS Oid| 
| ExtensionEEBaseModeOfArrival | ee-mode-of-arrival | https://fhir.ee/StructureDefinition/ee-mode-of-arrival | EEBase ModeOfArrival | 

---

#### FHIR-NAME-03: **Convention for OperationDefinition resource definition**
FHIR OperationDefinition **MUST** follow an agreed format. 

The FHIR operation name consists of several logical name segments:
- **Base URL**: The **URL** used for standard publishing. See profile definition.
- **Base**: The provider name. See profile definition. 
- **BusinessNames**: The business name of OperationDefinition. **Mandatory**.
- No business version information is allowed in the  resource URL.

The FHIR operation consists of (computable) name, id and url:
- **Resource Name**: The [**Base**] and [<b>BusinessNames</b>] without hyphen (-) **SHOULD** be used as resource name. Segment names in FHIR operation name **MUST** follow [Pascal case convention](https://www.theserverside.com/definition/Pascal-case). Operation name also known as computable name that **MAY** be used for code generation.
- **Resource Id**: The [**Base**]-[**BusinessNames**] with hyphen (-) and in lower-case is **RECOMMENDED** for this purpose.
- **Resource Url**: URL reuse the resource id - [**Base URL**]/OperationDefinition/[**Resource Id**]. 
- **Title**: The title of the resource MUST be the [**Base**] and [**BusinessNames**] with added spaces to make it human readable and understandable.

Examples:

| Resource Name | Resource Id | Resource Url | Resource Title |
| -------- | ------------- | -------- | -------- |
| EEMPIPatientEducationStatus | patient-education | https://fhir.ee/OperationDefinition/patient-education | EEMPI Patient Education Status | 
| EEMPIPatientLink | patient-link | https://fhir.ee/OperationDefinition/patient-link | EEMPI Patient Link | 

---

#### FHIR-NAME-04: **External CodeSystem and ValueSet names**
- The FHIR-managed [CodeSystems](https://terminology.hl7.org/codesystems.html) **SHOULD** use names defined by FHIR working groups.
- The FHIR-managed [ValueSets](https://terminology.hl7.org/valuesets.html) **SHOULD*** use names defined by FHIR working groups.
- Some ValueSets that use SNOMED CT will refer directly to SNOMED CT artefacts, for example, SNOMED CT Ref Sets, and there will not be a need to create a CodeSystem resource. There may be other ValueSets which follow the same principles, for example, LOINC.

---

#### FHIR-NAME-05: **CodeSystem name convention**
FHIR CodeSystems **MUST** follow an agreed format. 

The code systems name segments are defined as follows:
- **Base URL**: The URL used for standard publishing. *See profile definition.*
- **Base**: The standard provider name. *See profile definition*. **Conditional**.
- **BusinessNames**: The business names of the CodeSystem. The CodeSystem name **MUST** have at least one BusinessName segment. Where a CodeSystem **MAY** is used across several domains, business names **SHOULD** reflect that. **Mandatory.**
- Name segments **SHOULD** be U.S. English (spelled correctly)

The CodeSystem consists of (computable) name, id and url:
- **Resource Name**: [Base] and [BusinessNames] without hyphen (-) **SHOULD** be used as the resource name. Segment names in FHIR CodeSystem **MUST** follow [Pascal case convention](https://www.theserverside.com/definition/Pascal-case).
- **Resource Id**: [Base] and [BusinessNames] in lowercase where every word is separated with a hyphen (-). 
- **Resource Url**: URL reuse the resource id - [**Base URL**]/CodeSystem/[**Resource Id**]. 
- **Resource Title**: The resource's title **MUST** be [Base] and [BusinessNames] with added spaces to make it human-readable and understandable. 

Example:

| Resource Name | Resource Id | Resource Url | Resource Title |
| -------- | ------------- | -------- | -------- |
| EEBaseIdentitySystem | identity-system | https://fhir.ee/CodeSystem/identity-system | Identity System | 
| EEBaseAdsAdrId | ads-adr-id | https://fhir.ee/CodeSystem/ads-adr-id | ADS AdrId | 
| EEMPIEducationLevel | education-level | https://fhir.ee/CodeSystem/education-level | Education Level | 

---

#### FHIR-NAME-06: **ValueSet name convention**
FHIR ValueSet **MUST** follow an agreed format. 

*See CodeSystem convention.*
The only difference is resource url:
- **Resource Url**: URL reuse the resource id - [**Base URL**]/ValueSet/[**$ResourceId**]. 


Examples:

| Resource Name | Resource Id | Resource Url | Resource Title |
| -------- | ------------- | -------- | -------- |
| EEBasePatientIdentity | patient-identity | https://fhir.ee/ValueSet/patient-identity | Person Identity System | 
| EEBaseAdsAdrId | ads-adr-id | https://fhir.ee/ValueSet/ads-adr-id | ADS AdrId | 
| EEMPIEducationLevel | education-level | https://fhir.ee/ValueSet/education-level | Education Level | 

---

#### FHIR-NAME-07: **NamingSystem name convention**
FHIR NamingSystem **MUST** follow an agreed format. 

The code systems name segments are defined as follows:
- **Base URL**: The URL used for standard publishing. *See profile definition.*
- **Base**: The standard provider name. *See profile definition*. **Optional**.
- **BusinessNames**: The business names of the identifier system. 
- Name segments **SHOULD** be U.S. English (spelled correctly).

The NamingSystem consists of (computable) name, id and url:
- **Resource Name**: [Base] and [BusinessNames] without hyphen (-) **SHOULD** be used as the resource name. 
- **Resource Id**: [Base] and [BusinessNames] in lowercase where every word is separated with a hyphen (-). 
- **Resource Url**: URL reuse the resource id - [**Base URL**]/NamingSystem/[**Resource Id**]. 
- **Resource Title**: The human-readable and understandable resource's title. 

Examples:

| Resource Name | Resource Id | Resource Url | Resource Title |
| -------- | ------------- | -------- | -------- |
| EHAK | ehak | https://fhir.ee/NamingSystem/ehak | EHAK | 
| PidEstNi | pid-est-ni | https://fhir.ee/NamingSystem/pid-est-ni | Estonian Personal National Identification Code | 
| OrgVATIN | org-vatin | https://fhir.ee/NamingSystem/org-vatin | VAT identification number | 

---

### Resource identifiers

#### FHIR-ID-01 **FHIR resource ID**
- Resource IDs **MUST** be generated only by FHIR server.
- Business ID-s **MUST NOT** be used as the resource ID.


#### FHIR-ID-02 **References between REST resources**
- References between ReST resources **SHOULD** be literal references without FHIR server path but **MAY** be logical references.
  - When using the FHIR ReST Paradigm, resources <b>SHOULD</b> reference other resources via URL (i.e. a [literal reference](https://www.hl7.org/fhir/references.html#literal) in the FHIR standard). The resource owner should (where possible) only reference other resources that they can be relatively confident consumers of their API will be able to resolve and retrieve. For referencing other things outside this, a logical reference **SHOULD** be used.
  - Note: URL references to other resources will (by default) return the latest version of the referenced resource. If this isn’t desirable, the resource owner may either contain the resource or use a versioned URL as a literal reference.


#### FHIR-ID-03 **Logical references**
- References in FHIR messaging **SHOULD** be logical references.
- When using the FHIR Messaging Paradigm, messages will likely include references to external resources. These references **SHOULD** use an identifier from a known NamingSystem. This is known as a logical reference in the FHIR standard. The NamingSystem URI **SHOULD** be searchable on a FHIR Reference server to return the NamingSystem resource that describes the identifiers used (for example, [https://fhir.ee/NamingSystem](https://fhir.ee/NamingSystem/index.html)).

---

### Publishing

#### FHIR-PUB-01 **Official repository**
- The Github repository for Estonian FHIR Base is [https://github.com/HL7EE/ig-ee-base](https://github.com/HL7EE/ig-ee-base).

#### FHIR-PUB-02 **Availability of source code**
- All FHIR resources relating to national systems and other nationally defined FHIR API profiles (including StructureDefinitions, ValueSets, OperationDefinitions, ImplementationGuides and others) **MUST** be held on a publicly available GitHub repository which **MAY** be synchronised with a Simplifier project.

#### FHIR-PUB-03 **Development of standard**
- Comments, feedback and suggestions from developers on FHIR resources (and associated documentation) **SHOULD** be managed through Github using the standard features for raising and tracking issues on the appropriate project.
  - Use [https://github.com/HL7EE/ig-ee-base/issues](https://github.com/HL7EE/ig-ee-base/issues) for HL7EE EEBase issue mananagement.

#### FHIR-PUB-04 **Pattern for URI-s**
- All FHIR resource URIs must be resolvable URLs.
  - The new URI-s SHOULD be registred in [GitHub fhir.ee project](https://github.com/HL7EE/fhir.ee)
- All FHIR resources relating to national systems and other nationally defined FHIR API profiles (including StructureDefinitions, ValueSets, OperationDefinitions, ImplementationGuides and others) **MUST** have a URI that is a resolvable URL. Usually, this will be the URL of the resource on the FHIR API reference server (fhir.ee).

#### FHIR-PUB-05 **Packaging**
- All FHIR resources **MUST** be made publicly available as FHIR Implementation Guide and released as a FHIR package.
- All FHIR packages that may be used as dependecy for other packages **SHOULD** uploaded to [Estonian FHIR Packages Repository](https://fhir.ee/packages/) through [GitHub fhir.ee project](https://github.com/HL7EE/fhir.ee).

---

### Serialization

#### FHIR-SER-01 **Supported mime-types**
- FHIR REST APIs **MUST** support JSON serialisation and **SHOULD** also support XML serialisation.
  - All FHIR ReST endpoints **MUST** support JSON formatted requests/responses.
  - FHIR ReST endpoints **SHOULD** also support XML formatted requests/responses.
  - The serialisation mime-types supported **MUST** be declared in the Conformance/CapabilityStatement resource for the endpoint, and the server **MUST** use the usual FHIR mechanisms to allow clients to request a specific Content Type as per the FHIR spec (servers may choose to reject the use of XML if it is not supported).

#### FHIR-SER-02 **Allowed namespaces**
- Namespaces outside those defined in the FHIR specification **MUST NOT** be used.
  - The FHIR standard [specifies a specific namespace](http://hl7.org/implement/standards/fhir/xml.html) for FHIR XML elements, with a second namespace for XHTML content in narrative sections. Those specifying FHIR APIs **MUST** not use other namespaces in their APIs.

---

### FHIR operations
#### FHIR-OPER-01 **Reuse standard FHIR operation**
- Where a request maps to a [standard FHIR operation](http://hl7.org/fhir/operationslist.html), the standard operation **SHOULD** be used.

#### FHIR-OPER-02 **Define new FHIR operation when needed**
- More complex and behaviours involving updates to multiple resources or complex querying or composition of resources **MAY** use an RPC-style FHIR Operation.

---

### Health Services

#### FHIR-SERV-01 **FHIR resource base Paths**
- National FHIR resources <b>MUST</b> use consistent basePaths.

| API Name | Provider code | Base url |
| -------- | ------------- | -------- |
| Estonian (FHIR) Base | EE | https://fhir.ee |	
| Estonian National Health Services | EETIS | https://tis.tehik.ee/fhir |	
| Estonian Health Insurance Fund | EEHIF | https://fhir.ee |	

---
