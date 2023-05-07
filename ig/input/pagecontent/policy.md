<div class="alert alert-warning">

<b>Work in progress.</b>
This section of the Implementation Guide is subject to change.

</div>

<!--button onclick="topFunction()" id="topButton" title="Back to top">top</button-->
---

### General

#### FHIR-GEN-01 **HL7 FHIR standard compliance**.
- All FHIR implementations **MUST** comply with the HL7 FHIR standard.
- All implementations of FHIR interfaces **MUST** comply with the requirements outlined in the relevant release of the HL7 FHIR standards, as outlined on [http://fhir.hl7.org](http://fhir.hl7.org).

#### FHIR-GEN-02 **Availability of FHIR resources on a public server**.
- All FHIR resources are published on a public FHIR reference server.
- All FHIR resources relating to national systems and other nationally defined FHIR API profiles (including StructureDefinitions, ValueSets, OperationDefinitions, ImplementationGuides, etc.) that are ready for external use (in either DRAFT or ACTIVE status) **MUST** also be made available the HL7 Estonia reference server api.fhir.ee.
- Resources that are part of the National Estonian Health System (TIS) **MUST** also be published on a TEHIK branded public FHIR server fhir.tehik.ee.

#### FHIR-GEN-03 **Avoid FHIR Document Paradigm**
- Avoid FHIR [Document Paradigm](https://www.hl7.org/fhir/documents.html) when possible. Use [REST](https://www.hl7.org/fhir/http.html) and [Messaging Paradigms](https://www.hl7.org/fhir/messaging.html) instead.

---

### Conformance

#### FHIR-CONF-01 **Support conformance**
- All servers offering a FHIR API **MUST** publish a FHIR conformance/capability statement (in the form of a CapabilityStatement resource) at the root URL of their FHIR Server. Following HL7EEBase-CapabilityStatement profile.

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

<!--div class="card border-success mb-3" id="fhir-ver-03">
  <div class="card-header bg-warning">
   <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-VER-03: HL7 FHIR version in FHIR Endpoint URL</strong>
   <a href="#fhir-ver-03"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
        <li>TO BE DELETED</li>
        <li>Nationally delivered FHIR endpoints (i.e. servers that implement FHIR standards to serve FHIR resources or respond to calls to FHIR operations), including FHIR messaging endoints, <b>MUST NOT</b> differentiate the HL7 FHIR version (e.g. R4, R5, etc) in the FHIR base URL.
        </br>        
This <b>MUST</b> follow the format: <b>https://[baseurl]</b>
</br>
This <b>MUST NOT</b> follow the format: <b>https://[baseurl]/[fhir-version]</b>
</li>
    </ul>
  </div>
</div-->

---

### Naming
To promote consistency and make it easier for implementers to locate suitable profiles, extensions, value sets and others for their projects, a naming strategy will be adopted for EEBase-defined FHIR assets or FHIR assets derived from the EEBase. All EEBase-derived implementation guides and FHIR assets <b>MUST</b> follow these rules to claim conformace with the EEBase.
For detailed definitions of concepts discussed within this guidance document, refer to the appropriate published version of the [FHIR standard](https://www.hl7.org/fhir/).

---

### Resource identifiers

#### FHIR-ID-01 **FHIR resource ID**
- Resource IDs **MUST** be generated only by FHIR server.
- Business ID-s **MUST NOT** be used as the resource ID.


#### FHIR-ID-02 **References between REST resources**
- References between ReST resources **SHOULD** be literal references without FHIR server path but **MAY** be logical references.</li>
  - When using the FHIR ReST Paradigm, resources <b>SHOULD</b> reference other resources via URL (i.e. a [literal reference](https://www.hl7.org/fhir/references.html#literal) in the FHIR standard). The resource owner should (where possible) only reference other resources that they can be relatively confident consumers of their API will be able to resolve and retrieve. For referencing other things outside this, a logical reference **SHOULD** be used.
  - Note: URL references to other resources will (by default) return the latest version of the referenced resource. If this isn’t desirable, the resource owner may either contain the resource or use a versioned URL as a literal reference.


#### FHIR-ID-03 **Logical references**
- References in FHIR messaging **SHOULD** be logical references.
- When using the FHIR Messaging Paradigm, messages will likely include references to external resources. These references **SHOULD** use an identifier from a known NamingSystem. This is known as a logical reference in the FHIR standard. The NamingSystem URI **SHOULD** be searchable on a FHIR Reference server to return the NamingSystem resource that describes the identifiers used (for example, [https://fhir.ee/NamingSystem](https://fhir.ee/NamingSystem)).

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
- All FHIR resources relating to national systems and other nationally defined FHIR API profiles (including StructureDefinitions, ValueSets, OperationDefinitions, ImplementationGuides and others) **MUST** have a URI that is a resolvable URL. Usually, this will be the URL of the resource on the FHIR API reference server (fhir.ee).

#### FHIR-PUB-05 **Packaging**
- All FHIR resources **MUST** be made publicly available as FHIR Implementation Guide and released as a FHIR package.
- All FHIR packages that may be used as dependecy for other packages **SHOULD** uploaded to [Estonian FHIR Packages Repository](https://fhir.ee/packages) through [GitHub fhir.ee project](https://github.com/HL7EE/fhir.ee).

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
| Estonian (FHIR) Base | EE | fhir.ee |	
| Estonian National Health Services | EETIS | tis.tehik.ee |	
| Estonian Health Insurance Fund | EEHIF | fhir.ee |	

---
---
---

Content below to DELETE.


### General

<div class="card border-success mb-3" id="fhir-gen-01">
  <div class="card-header bg-success">
   <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-GEN-01 HL7 FHIR standard compliance</strong>
   <a href="#fhir-gen-01"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
        <li>All FHIR implementations <b>MUST</b> comply with the HL7 FHIR standard.</li>
        <ul>
            <li>All implementations of FHIR interfaces <b>MUST</b> comply with the requirements outlined in the relevant release of the HL7 FHIR standards, as outlined on <a href="http://fhir.hl7.org/">http://fhir.hl7.org/.</a></li>
        </ul>
    </ul>
  </div>
</div>

<div class="card border-success mb-3" id="fhir-gen-02">
  <div class="card-header bg-success">
   <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-GEN-02 Availability of FHIR resources on a public server.</strong>
   <a href="#fhir-gen-02"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
        <li>All FHIR resources are published on a public FHIR reference server.</li>
        <ul>
            <li>All FHIR resources relating to national systems and other nationally defined FHIR API profiles (including StructureDefinitions, ValueSets, OperationDefinitions, ImplementationGuides, etc.) that are ready for external use (in either DRAFT or ACTIVE status) <b>MUST</b> also be made available the HL7 Estonia reference server api.fhir.hl7.ee.</li>
            <li>Resources that are part of the National Estonian Health System (TIS) <b>MUST</b> also be published on a TEHIK branded public FHIR server fhir.tehik.ee.</li>
        </ul>
    </ul>
  </div>
</div>

<div class="card border-success mb-3" id="fhir-gen-03">
  <div class="card-header bg-success">
   <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-GEN-03 Avoid FHIR Document Paradigm</strong>
   <a href="#fhir-gen-03"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
        <li>Avoid FHIR <a href="https://www.hl7.org/fhir/documents.html">Document Paradigm</a> when possible. Use <a href="https://www.hl7.org/fhir/http.html">REST</a> and <a href="https://www.hl7.org/fhir/messaging.html">Messaging Paradigms</a> instead.</li>
    </ul>
  </div>
</div>


### Conformance

<div class="card border-success mb-3" id="fhir-conf-01">
  <div class="card-header bg-success">
   <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-CONF-01 Support conformance</strong>
   <a href="#fhir-conf-01"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
        <li>All servers offering a FHIR API <b>MUST</b> publish a FHIR conformance/capability statement (in the form of a CapabilityStatement resource) at the root URL of their FHIR Server. Following HL7EEBase-CapabilityStatement profile.</li>
    </ul>
  </div>
</div>


### Profiling
<div class="card border-success mb-3" id="fhir-profile-01">
  <div class="card-header bg-success">
   <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-PROFILE-01 Profile tree</strong>
   <a href="#fhir-profile-01"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
The FHIR standard provides a mechanism to specialise and extend FHIR resources by creating <a href="https://www.hl7.org/fhir/profiling.html">profiles</a>.<br/>In Estonia, profiles are developed according to the following “levels”:
    <ul>
        <li>Level 1: The base <a href="http://hl7.org/fhir/resourcelist.html">FHIR resource profiles</a> defined by HL7 International.</li>
        <li>Level 2: The ‘Estonian Base Profiles’ are Estonia-wide profiles curated through the HL7 FHIR Estonia community and published on the HL7 Estonia FHIR reference server.</li>
        <li>Level 3: The implementation-specific profiles for a particular system or domain. <br/>Profiles for upTIS are published on the TEHIK FHIR Reference Server. <br/>Profiles for Tervisekassa projects are published on the Tervisekassa FHIR Reference Server.</li>
    </ul>
  </div>
</div>


<div class="card border-success mb-3" id="fhir-profile-02">
  <div class="card-header bg-success">
   <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-PROFILE-02 Summary field</strong>
   <a href="#fhir-profile-01"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
        <li>Profiles <b>MUST NOT</b> define alternate summary fields for resources.</li>
        <ul>
            <li>All FHIR base resources have several fields defined as 'summary' fields, which appear when the client requests summary versions of the resource to be returned (for example, in <a href="https://www.hl7.org/fhir/search.html#summary">search results</a>). These summary fields can only be defined in base resources and cannot be changed in any profiles.</li>
            <!--li>Note: This is a rule established by HL7, but is not clear in the HL7 FHIR specification.</li-->
        </ul>
    </ul>
  </div>
</div>


### Versioning
<div class="card border-success mb-3" id="fhir-ver-01">
  <div class="card-header bg-success">
   <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-VER-01: Versioning of Profiles and Resources</strong>
   <a href="#fhir-ver-01"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>Nationally defined FHIR profiles will be versioned during development using Git, following the standard GitFlow model. The versioning for published artefacts will broadly follow           <a href="http://semver.org/">semantic versioning standards</a>.
      The major and minor versions will be visible, and the patch version <b>MAY</b> also be exposed. 
      Version numbers held in profiles and resource instanced <b>MUST</b> therefore be in one of the           following forms:
      </br>
      MAJOR – e.g. 1
      </br>
      MAJOR.MINOR – e.g. 1.0
      </br>
      MAJOR.MINOR.PATCH – e.g. 1.0.2
      </li>
      <li>The version number <b>MUST NOT</b> be included in the profile name.</li>
      <li>The version number <b>MUST</b> be used as the profile version attribute.</li>
    </ul>
    <div class="callout callout-success">
      <div id="VerEx">
        <strong>Example of a version number in Estonian base Organization profile</strong><br/> 
        </br>
        <div class="tabletab">
          <button class="tabletablinks active" onclick="openTab(event, 'xmlVer', 'VerEx')">XML</button>
          <button class="tabletablinks" onclick="openTab(event, 'jsonVer', 'VerEx')">JSON</button>
        </div>
        <div id="xmlVer" class="fhir-resource-tab-index tabletabcontent" style="display: block;">
<pre>
  &lt;StructureDefinition xmlns="http://hl7.org/fhir"&gt;
    &lt;url value="http://hl7.ee/fhir/StructureDefinition/EEBase-Organization"/&gt;
    &lt;name value="EEBaseOrganization"/&gt;
    &lt;version value="1.0.0"/&gt;
</pre>
        </div>
        <div id="jsonVer" class="fhir-resource-tab-index tabletabcontent">
<pre>
  {
    "resourceType": "StructureDefinition",
    "id": "EEBase-Organization",
    "url": "https://hl7.ee/fhir/StructureDefinition/EEBase-Organization",
    "version": "1.0.0"
  }
</pre>
        </div> 
      </div>
    </div>
  </div>
</div>


<!--div class="card border-success mb-3" id="fhir-ver-03">
  <div class="card-header bg-warning">
   <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-VER-03: HL7 FHIR version in FHIR Endpoint URL</strong>
   <a href="#fhir-ver-03"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
        <li>TO BE DELETED</li>
        <li>Nationally delivered FHIR endpoints (i.e. servers that implement FHIR standards to serve FHIR resources or respond to calls to FHIR operations), including FHIR messaging endoints, <b>MUST NOT</b> differentiate the HL7 FHIR version (e.g. R4, R5, etc) in the FHIR base URL.
        </br>        
This <b>MUST</b> follow the format: <b>https://[baseurl]</b>
</br>
This <b>MUST NOT</b> follow the format: <b>https://[baseurl]/[fhir-version]</b>
</li>
    </ul>
  </div>
</div-->


### Naming
To promote consistency and make it easier for implementers to locate suitable profiles, extensions, value sets and others for their projects, a naming strategy will be adopted for EEBase-defined FHIR assets or FHIR assets derived from the EEBase. All EEBase-derived implementation guides and FHIR assets <b>MUST</b> follow these rules to claim conformace with the EEBase.
For detailed definitions of concepts discussed within this guidance document, refer to the appropriate published version of the [FHIR standard](https://www.hl7.org/fhir/).

### Resource identifiers

<div class="card border-success mb-3" id="fhir-id-01">
  <div class="card-header bg-success">
    <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-ID-01 FHIR resource ID</strong>
    <a href="#fhir-id-01"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>Resource IDs <b>MUST</b> be generated only by FHIR server.</li>
      <li>Business ID-s <b>MUST NOT</b> be used as the resource ID.</li>
    </ul>
  </div>
</div>
<div class="card border-success mb-3" id="fhir-id-02">
  <div class="card-header bg-success">
    <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-ID-02 References between ReST resources</strong>
    <a href="#fhir-id-02"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>References between ReST resources <b>SHOULD</b> be literal references without FHIR server path but <b>MAY</b> be logical references.</li>
      <ul>
        <li>When using the FHIR ReST Paradigm, resources <b>SHOULD</b> reference other resources via URL (i.e. a <a href="https://www.hl7.org/fhir/references.html#literal">literal reference</a> in the FHIR standard). The resource owner should (where possible) only reference other resources that they can be relatively confident consumers of their API will be able to resolve and retrieve. For referencing other things outside this, a logical reference <b>SHOULD</b> be used.</li>
        <li>Note: URL references to other resources will (by default) return the latest version of the referenced resource. If this isn’t desirable, the resource owner may either contain the resource or use a versioned URL as a literal reference.</li>
      </ul>
    </ul>
  </div>
</div>
<div class="card border-success mb-3" id="fhir-id-03">
  <div class="card-header bg-success">
    <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-ID-03 Logical references</strong>
    <a href="#fhir-id-03"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>References in FHIR messaging <b>SHOULD</b> be logical references.</li>
      <li>When using the FHIR Messaging Paradigm, messages will likely include references to external resources. These references <b>SHOULD</b> use an identifier from a known NamingSystem. This is known as a logical reference in the FHIR standard. The NamingSystem URI <b>SHOULD</b> be searchable on a FHIR Reference server to return the NamingSystem resource that describes the identifiers used (for example, <a href="https://fhir.hl7.ee/NamingSystem">https://fhir.hl7.ee/NamingSystem</a>).</li>
    </ul>
  </div>
</div>

### Publishing

<div class="card border-success mb-3" id="fhir-pub-01">
  <div class="card-header bg-success">
    <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-PUB-01 Official repository</strong>
    <a href="#fhir-pub-01"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>The Github repository for Estonian FHIR Base is <a href="https://github.com/HL7EE/ee-fhir-base">https://github.com/HL7EE/ee-fhir-base</a>.</li>
    </ul>
  </div>
</div>
<div class="card border-success mb-3" id="fhir-pub-02">
  <div class="card-header bg-success">
    <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-PUB-02 Availability of source code</strong>
    <a href="#fhir-pub-02"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>All FHIR resources relating to national systems and other nationally defined FHIR API profiles (including StructureDefinitions, ValueSets, OperationDefinitions, ImplementationGuides and others) <b>MUST</b> be held on a publicly available GitHub repository which <b>MAY</b> be synchronised with a Simplifier project.</li>
    </ul>
  </div>
</div>
<div class="card border-success mb-3" id="fhir-pub-03">
  <div class="card-header bg-success">
    <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-PUB-03 Development of standard</strong>
    <a href="#fhir-pub-03"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>Comments, feedback and suggestions from developers on FHIR resources (and associated documentation) <b>SHOULD</b> be managed through Simplifier using the standard features for raising and tracking issues on the <a href="https://simplifier.net/ee-base/~resources?category=Text&fhirVersion=R4">Simplifier ee-base project</a>.</li>
    </ul>
  </div>
</div>
<div class="card border-success mb-3" id="fhir-pub-04">
  <div class="card-header bg-success">
    <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-PUB-04 Pattern for URI-s</strong>
    <a href="#fhir-pub-04"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>All FHIR resource URIs must be resolvable URLs.</li>
      <ul>
        <li>All FHIR resources relating to national systems and other nationally defined FHIR API profiles (including StructureDefinitions, ValueSets, OperationDefinitions, ImplementationGuides and others) <b>MUST</b> have a URI that is a resolvable URL. Usually, this will be the URL of the resource on the FHIR API reference server (hl7.ee/fhir).</li>
      </ul>
    </ul>
  </div>
</div>
<div class="card border-success mb-3" id="fhir-pub-05">
  <div class="card-header bg-success">
    <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-PUB-05 Packaging</strong>
    <a href="#fhir-pub-05"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>All FHIR resources <b>MUST</b> be made publicly available as FHIR Implementation Guide and released as a FHIR package.</li>
    </ul>
  </div>
</div>

### Serialization

<div class="card border-success mb-3" id="fhir-ser-01">
  <div class="card-header bg-success">
    <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-SER-01 Supported mime-types</strong>
    <a href="#fhir-ser-01"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>FHIR ReST APIs <b>MUST</b> support JSON serialisation and <b>SHOULD</b> also support XML serialisation.</li>
      <ul>
        <li>All FHIR ReST endpoints <b>MUST</b> support JSON formatted requests/responses.</li>
        <li>FHIR ReST endpoints <b>SHOULD</b> also support XML formatted requests/responses.</li>
        <li>The serialisation mime-types supported <b>MUST</b> be declared in the Conformance/CapabilityStatement resource for the endpoint, and the server <b>MUST</b> use the usual FHIR mechanisms to allow clients to request a specific Content Type as per the FHIR spec (servers may choose to reject the use of XML if it is not supported).</li>
      </ul>
    </ul>
  </div>
</div>
<div class="card border-success mb-3" id="fhir-ser-02">
  <div class="card-header bg-success">
    <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-SER-02 Allowed namespaces</strong>
    <a href="#fhir-ser-02"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>Namespaces outside those defined in the FHIR specification <b>MUST NOT</b> be used.</li>
      <ul>
        <li>The FHIR standard <a href="http://hl7.org/implement/standards/fhir/xml.html">specifies a specific namespace</a> for FHIR XML elements, with a second namespace for XHTML content in narrative sections. Those specifying FHIR APIs <b>MUST</b> not use other namespaces in their APIs.</li>
      </ul>
    </ul>
  </div>
</div>

### FHIR operations

<div class="card border-success mb-3" id="fhir-oper-01">
  <div class="card-header bg-success">
    <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-OPER-01 Reuse standard FHIR operation</strong>
    <a href="#fhir-oper-01"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>Where a request maps to a <a href="http://hl7.org/fhir/operationslist.html">standard FHIR operation</a>, the standard operation <b>SHOULD</b> be used.</li>
    </ul>
  </div>
</div>
<div class="card border-success mb-3" id="fhir-oper-02">
  <div class="card-header bg-success">
    <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-OPER-02 Define new FHIR operation when needed</strong>
    <a href="#fhir-oper-02"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>More complex and behaviours involving updates to multiple resources or complex querying or composition of resources <b>MAY</b> use an RPC-style FHIR Operation.</li>
    </ul>
  </div>
</div>

### Health Services

<div class="card border-success mb-3" id="fhir-serv-01">
  <div class="card-header bg-success">
    <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-SERV-01 FHIR resource basePaths</strong>
    <a href="#fhir-serv-01"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>National FHIR resources <b>MUST</b> use consistent basePaths.</li>
    </ul>
    |API Name| Provider code |	Base url |
    |-
    |Estonian (FHIR) base | EEBase	| fhir.ee |	
    |Estonian National Health Services | TIS	| tis.tehik.ee |	
    |Estonian Health Insurance Fund | EHIF	| fhir.tervisekassa.ee |	
  </div>
</div>



