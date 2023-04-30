<div class="alert alert-warning">

**Work in progress.**
This section of the Implementation Guide is subject to change.

</div>
<button onclick="topFunction()" id="topButton" title="Back to top">top</button>

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

<div class="card border-success mb-3" id="fhir-conf-01-en">
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
        <div id="xmlVer" class="tabletabcontent" style="display: block;">
          </br>
<pre>
  &lt;StructureDefinition xmlns="http://hl7.org/fhir"&gt;
    &lt;url value="http://hl7.ee/fhir/StructureDefinition/EEBase-Organization"/&gt;
    &lt;name value="EEBaseOrganization"/&gt;
    &lt;version value="1.0.0"/&gt;
</pre>
        </div>
        <div id="jsonVer" class="tabletabcontent">
          </br>
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

<br/>
<!--FHIR-NAME-01 Convention for Profile definition -->
<div class="card border-success mb-3" id="fhir-name-01">
  <div class="card-header bg-success">
  <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-NAME-01 Convention for      Profile definition</strong>
   <a href="#fhir-name-01"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>FHIR Profile name <b>MUST</b> follow an agreed format.</li>
      <li>The URL of a profile consists of several name segments and will be in the form: <br/>https://[<b>base url</b>]/fhir/StructureDefinition/[<b>Base</b>]-[<b>FHIRAssetName</b>]-[<b>BusinessName1</b>]-[<b>BusinessName2</b>]
        <ul>
          <li><b>Base URL:</b> The <b>URL</b> used for standard publishing. For example, <a href="#">hl7.org</a> for HL7 International and <a href="#">hl7.ee</a> for HL7 Estonia. Check the full <a href="/guide/ee-fhir-base/Home/Policy/Health-Services.guide.md?version=current">list</a> for details.</li>
          <li><b>Base:</b> The provider name. <b>EEBase</b> for Estonian Base. <b>Mandatory</b></li>
          <li><b>FHIRAssetName:</b> The name of the base FHIR Resource. <b>Mandatory</b></li>            
          <li><b>BusinessNames:</b> Business names are only used where mutiple profiles exist for a given base resource type. <b>Optional</b></li>
          <li>No business version information is allowed in the  resource URL.</li>
          <li>Segment names in FHIR Profile URL <b>MUST</b> follow <a href="https://learn.microsoft.com/en-us/previous-versions/dotnet/netframework-4.0/ms229043(v=vs.100)?redirectedfrom=MSDN">Pascal case convention</a>.</li>
        </ul>  
<div class="callout callout-success">
    <strong>Examples</strong>
    <br/>
    EEBase-Patient
    <br/>
    EEBase-Patient-Unknown
    <br/>
    EEBase-Observation-EducationLevel
    <br/>
    RETS-MedicationRequest
    <br/>
    EEHIF-MedicationRequest-Inpatient
</div>      
      <li><b>Resource name:</b> The [<b>Base</b>], [<b>FHIRAssetName</b>] and [<b>BusinessNames</b>] without hyphen (-)  <b>SHOULD</b> be used as resource name.</li>            
      <li><b>Resource id:</b> The specification does not specify the form of resource id. [<b>Base</b>]-[<b>FHIRAssetName</b>]-[<b>BusinessNames</b>] with hyphen (-) is <b>RECOMMENDED</b> for this purpose.</li>  
      <li><b>Title:</b> The title of the resource <b>MUST</b> be the [<b>Base</b>], [<b>FHIRAssetName</b>] and [<b>BusinessNames</b>] with added spaces to make it human readable and understandable.</li>           
    </ul>

<div class="callout callout-success" id="profDefEx">
<strong>Example of EEBase Organization definition</strong><br/>
<br/>    
<div class="tabletab">
  <button class="tabletablinks active" onclick="openTab(event, 'xmlProfDef','profDefEx')">XML</button>
  <button class="tabletablinks" onclick="openTab(event, 'jsonProfDef','profDefEx')">JSON</button>
</div>
<div id="xmlProfDef" class="tabletabcontent" style="display: block;">
  </br>
  <pre>
    &lt;StructureDefinition xmlns="http://hl7.org/fhir"&gt;
      &lt;id value="EEBase-Organization"/&gt;
      &lt;url value="http://hl7.ee/fhir/StructureDefinition/EEBase-Organization"/&gt;
      &lt;version value="1.0.0"/&gt;
      &lt;name value="EEBaseOrganization"/&gt;
      &lt;title value="EEBase Organization"/&gt;
  </pre>
</div>
  <div id="jsonProfDef" class="tabletabcontent">
    </br>
    <pre>
    {
      "resourceType": "StructureDefinition",
      "id": "EEBase-Organization",
      "url": "https://hl7.ee/fhir/StructureDefinition/EEBase-Organization",
      "version": "1.0.0",
      "name": "EEBaseOrganization",
      "title": "EEBase Organization"
    }
    </pre>
  </div> 
</div>
</div>
</div>

<!--FHIR-NAME-02 Convention for Extension definition -->
<div class="card border-success mb-3" id="fhir-name-02">
  <div class="card-header bg-success">
   <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-NAME-02 Convention for Extension definition</strong>
   <a href="#fhir-name-02"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>FHIR Extension <b>MUST</b> follow an agreed format.</li>
      <li>The <b>URL</b> of an Extension consists of several name segments and will be in the form: <br/>https://[<b>base url</b>]/fhir/StructureDefinition/Extension-[<b>Base</b>]-[<b>BusinessName</b>]
        <ul>
          <li><b>Base URL:</b> The URL used for standard publishing. <i>See profile definition.</i> </li>
          <li><b>Base:</b> The standard provider name. <i>See profile definition.</i> <b>Mandatory</b></li>
          <li><b>BusinessName:</b> The business name of the Extension. <b>Mandatory</b></li>
          <li>No business version information is allowed in the  Extension URL</li>
          <li>Segment names in FHIR Extension URL <b>MUST</b> follow <a href="https://learn.microsoft.com/en-us/previous-versions/dotnet/netframework-4.0/ms229043(v=vs.100)?redirectedfrom=MSDN">Pascal case convention</a>.</li>  
        </ul>    
      <li><b>Resource name:</b> "Extension", [Base] and [BusinessName] without hyphen (-) <b>SHOULD</b> be used as resource name.</li>           
      <li><b>Resource id:</b> The specification does not specify the form of resource id. "Extension", [Base] and [BusinessName] with hyphen (-) <b>RECOMMENDED</b> as resource id.</li>  
      <li><b>Title:</b> The title of the resource <b>MUST</b> be [Base] and [BusinessName], and the word "extension" with added spaces to make it human-readable and understandable.</li>           
    </ul>

<div class="callout callout-success" id="extDefEx">
<strong>Example of EEBase ADS extension definition</strong><br/> 
<br/>   
<div class="tabletab">
  <button class="tabletablinks active" onclick="openTab(event, 'xmlExtDef','extDefEx')">XML</button>
  <button class="tabletablinks" onclick="openTab(event, 'jsonExtDef','extDefEx')">JSON</button>
</div>
<div id="xmlExtDef" class="tabletabcontent" style="display: block;">
  </br>
  <pre>
    &lt;StructureDefinition xmlns="http://hl7.org/fhir"&gt;
      &lt;url value="http://hl7.ee/fhir/StructureDefinition/Extension-EEBase-ADS"/&gt;
      &lt;name value="ExtensionEEBaseADS"/&gt;
      &lt;version value="1.0.0"/&gt;
      &lt;id value="Extension-EEBase-ADS"/&gt;
      &lt;title value="EEBase ADS extension"/&gt;
  </pre>
</div>
  <div id="jsonExtDef" class="tabletabcontent">
    </br>
    <pre>
    {
      "resourceType": "StructureDefinition",
      "id": "Extension-EEBase-ADS",
      "url": "https://hl7.ee/fhir/StructureDefinition/Extension-EEBase-ADS",
      "version": "1.0.0",
      "name": "ExtensionEEBaseADS",
      "title": "EEBase ADS extension" 
    }
    </pre>
  </div> 
</div>    
</div>  
</div>

<!--FHIR-NAME-03 Convention for OperationDefinition resource definition -->
<div class="card border-success mb-3" id="fhir-name-03">
  <div class="card-header bg-success">
   <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-NAME-03 Convention for OperationDefinition resource definition</strong>
   <a href="#fhir-name-03"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>FHIR OperationDefinition <b>MUST</b> follow an agreed format.</li>
      <li>The <b>URL</b> of an OperationDefinition consists of several name segments and will be in the form: <br/>https://[<b>base url</b>]/fhir/OperationDefinition/[<b>Base</b>]-[<b>BusinessName</b>]
        <ul>
          <li><b>Base URL:</b> The URL used for standard publishing. <i>See profile definition.</i></li>
          <li><b>Base:</b> The standard provider name. <i>See profile definition.</i> <b>Mandatory</b></li>
          <li><b>BusinessName:</b> The business name of OperationDefinition. <b>Mandatory</b></li>
          <li>No business version information is allowed in the  OperationDefinition URL.</li>
          <li>Segment names in FHIR OperationDefinition URL <b>MUST</b> follow <a href="https://learn.microsoft.com/en-us/previous-versions/dotnet/netframework-4.0/ms229043(v=vs.100)?redirectedfrom=MSDN">Pascal case convention</a>.</li>
        </ul>    
      <li><b>Resource name:</b> [Base] and [BusinessName] without hyphen (-) <b>SHOULD</b> be used as the resource name.</li>           
      <li><b>Resource id:</b> The specification does not specify the form of resource id. [Base] and [BusinessName] with Hyphen (-) <b>RECOMMENDED</b> as resource id.</li>  
      <li><b>Title:</b> The title of the resource <b>MUST</b> be [Base] and [BusinessName] with added spaces to make it human-readable and understandable.</li>           
    </ul>

<div class="callout callout-success" id="opdDefEx">
<strong>Example of OperationDefinition resource definition</strong><br/> 
<br/> 
<div class="tabletab">
  <button class="tabletablinks active" onclick="openTab(event, 'xmlOpdDef', 'opdDefEx')">XML</button>
  <button class="tabletablinks" onclick="openTab(event, 'jsonOpdDef', 'opdDefEx')">JSON</button>
</div>
<div id="xmlOpdDef" class="tabletabcontent" style="display: block;">
  </br>
<pre>
  &lt;OperationDefinition xmlns="http://hl7.org/fhir"&gt;
      &lt;id value="EEBase-PatientMerge"/&gt;
      &lt;url value="https://hl7.org/fhir/OperationDefinition/EEBase-PatientMerge"/&gt; 
      &lt;version value="1.0.0" /&gt;
      &lt;name value="EEBasePatientMerge"/&gt;
      &lt;title value="EEBase PatientMerge"/&gt;
</pre>
</div>
  <div id="jsonOpdDef" class="tabletabcontent">
    </br>
    <pre>
    {
      "resourceType": "OperationDefinition",
      "id": "EEBase-PatientMerge",
      "url": "https://hl7.org/fhir/OperationDefinition/EEBase-PatientMerge",
      "version": "1.0.0",
      "name": "EEBasePatientMerge",
      "title": "EEBase PatientMerge" 
    }
    </pre>
  </div> 
</div> 
</div>
</div>

<!--FHIR-NAME-04: External CodeSystem and ValueSet names -->
<div class="card border-success mb-3" id="fhir-name-04">
  <div class="card-header bg-success">
   <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-NAME-04: External CodeSystem and ValueSet names</strong>
   <a href="#fhir-name-04"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
        <li>The FHIR-managed <a href="https://www.hl7.org/fhir/terminologies-systems.html">CodeSystems</a> <b>SHOULD</b> use names defined by FHIR working groups.</li>
        <li>The FHIR-managed <a href="https://www.hl7.org/fhir/terminologies-valuesets.html">ValueSets</a> <b>SHOULD</b> use names defined by FHIR working groups.</li>
        <li>Some ValueSets that use SNOMED CT will refer directly to SNOMED CT artefacts, for example, SNOMED CT Ref Sets, and there will not be a need to create a CodeSystem resource. There may be other ValueSets which follow the same principles, for example, LOINC.</li>
    </ul>
  </div>
</div>

<!--FHIR-NAME-05: CodeSystem name convention -->
<div class="card border-success mb-5" id="fhir-name-05">
  <div class="card-header bg-success">
   <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-NAME-05: CodeSystem name convention</strong>
   <a href="#fhir-name-05"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
        <li>FHIR CodeSystem names <b>MUST</b> follow an agreed format.</li>
        <li>The <b>URL</b> of a CodeSystem consists of several segments and will be in the form: <br/>https://[<b>base url</b>]/fhir/CodeSystem/[<b>base</b>]-[<b>businessname1</b>]-[<b>businessname2</b>]
        <li>The segments are defined as follows:
          <ul>
            <li><b>Base URL:</b> The URL used for standard publishing. <i>See profile definition.</i></li>
            <li><b>Base:</b> The standard provider name. <i>See profile definition.</i> <b>Mandatory</b></li>
            <li><b>BusinessNames:</b> The business names of the CodeSystem. The CodeSystem name <b>MUST</b> have at least one BusinessName segment. Where a CodeSystem <b>MAY</b> is used across several domains, business names <b>SHOULD</b> reflect that. <b>Mandatory</b></li>            
          </ul> 
        </li>
        <li><b>Resource name:</b> [Base] and [BusinessNames] without hyphen (-) <b>SHOULD</b> be used as the resource name.</li>                <li><b>Resource id:</b> [Base] and [BusinessNames] in lowercase where every word is separated with a hyphen (-). The same formatting rules <b>SHOULD</b> be applied to the resource URL.</li>  
        <li><b>Title:</b> The resource's title <b>MUST</b> be [Base] and [BusinessNames] with added spaces to make it human-readable and understandable. BusinessName segment(s) of the title <b>MAY</b> follow <a href="https://learn.microsoft.com/en-us/previous-versions/dotnet/netframework-4.0/ms229043(v=vs.100)?redirectedfrom=MSDN">Camel case convention</a>.</li>  
        </ul> </li>   
        <li>The CodeSystems name <b>MUST</b> be used as the CodeSystems filename.</li> 
    </ul>

<div class="callout callout-success" id="CodeDefEx">
<strong>Example of ArrivalMode CodeSystem definition</strong><br/> 
<br/> 
<div class="tabletab">
  <button class="tabletablinks active" onclick="openTab(event, 'xmlCodeDef', 'CodeDefEx')">XML</button>
  <button class="tabletablinks" onclick="openTab(event, 'jsonCodeDef', 'CodeDefEx')">JSON</button>
</div>
<div id="xmlCodeDef" class="tabletabcontent" style="display: block;">
  </br>
  <pre>
    &lt;CodeSystem xmlns="http://hl7.org/fhir"&gt;
      &lt;id value="eebase-arrivalmode"/&gt;
      &lt;url value="https://hl7.ee/fhir/CodeSystem/eebase-arrivalmode"/&gt; 
      &lt;version value="1.0.0" /&gt;
      &lt;name value="EEBaseArrivalMode"/&gt;
      &lt;title value="EEBase arrivalMode"/&gt;
  </pre>
</div>
  <div id="jsonCodeDef" class="tabletabcontent">
    </br>
    <pre>
    {
      "resourceType": "CodeSystem",
      "id": "eebase-arrivalmode",
      "url": "https://hl7.ee/fhir/CodeSystem/eebase-arrivalmode",
      "version": "1.0.0",
      "name": "EEBaseArrivalMode",
      "title": "EEBase arrivalMode" 
    }
    </pre>
  </div> 
</div>      
</div>
</div>

<!--FHIR-NAME-06: ValueSet name convention -->
<div class="card border-success mb-3" id="fhir-name-06">
  <div class="card-header bg-success">
   <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-NAME-06: ValueSet name convention</strong>
   <a href="#fhir-name-06"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
        <li>FHIR ValueSet names <b>MUST</b> follow an agreed format.</li>
        <li>The <b>URL</b> of a ValueSet consists of several name segments and will be in the form: <br/>https://[<b>base url</b>]/fhir/ValueSet/[<b>base</b>]-[<b>businessname1</b>]-[<b>businessname2</b>]
        <li>The segments are defined as follows:
          <ul>
            <li><b>Base URL:</b> The URL used for standard publishing. <i>See profile definition.</i></li>
            <li><b>Base:</b> The standard provider name. <i>See profile definition.</i> <b>Mandatory</b></li>
            <li><b>BusinessNames:</b> The list of business names of the ValueSet. The ValueSet name <b>MUST</b> have at least one BusinessName segment. Where a ValueSet <b>MAY</b> be used across several domains, business names <b>SHOULD</b> reflect that. <b>Mandatory</b></li>            
          </ul> 
        </li>
        <li><b>Resource name:</b> [Base] and [BusinessNames] without hyphen (-) <b>SHOULD</b> be used as the resource name.</li>                <li><b>Resource id:</b> [Base] and [BusinessNames] in lowercase where every word is separated with a hyphen (-). The same formatting rules <b>SHOULD</b> be applied to the resource URL.</li>  
        <li><b>Title:</b> The title of the resource <b>MUST</b> be [Base] and [BusinessNames] with added spaces to make it human-readable and understandable. BusinessName segment(s) of the title <b>MAY</b> follow <a href="https://learn.microsoft.com/en-us/previous-versions/dotnet/netframework-4.0/ms229043(v=vs.100)?redirectedfrom=MSDN">Camel case convention</a></li>   
        <li>The ValueSet name <b>MUST</b> be used as the ValueSet's filename.</li> 
    </ul> 

<div class="callout callout-success" id="ValDefEx">
<strong>Example of ArrivalMode ValueSet definition</strong><br/> 
<br/> 
<div class="tabletab">
  <button class="tabletablinks active" onclick="openTab(event, 'xmlValDef', 'ValDefEx')">XML</button>
  <button class="tabletablinks" onclick="openTab(event, 'jsonValDef', 'ValDefEx')">JSON</button>
</div>
<div id="xmlValDef" class="tabletabcontent" style="display: block;">
  </br>
  <pre>
    &lt;ValueSet xmlns="http://hl7.org/fhir"&gt;
      &lt;id value="eebase-arrivalmode"/&gt;
      &lt;url value="https://hl7.ee/fhir/ValueSet/eebase-arrivalmode"/&gt; 
      &lt;version value="1.0.0" /&gt;
      &lt;name value="EEBaseArrivalMode"/&gt;
      &lt;title value="EEBase arrivalMode"/&gt;
  </pre>
</div>
  <div id="jsonValDef" class="tabletabcontent">
    </br>
    <pre>
    {
      "resourceType": "ValueSet",
      "id": "eebase-arrivalmode",
      "url": "https://hl7.ee/fhir/ValueSet/eebase-arrivalmode",
      "version": "1.0.0",
      "name": "EEBaseArrivalMode",
      "title": "EEBase arrivalMode" 
    }
    </pre>
  </div> 
</div>      
</div>
</div>

<!--FHIR-NAME-07: Identifier systems name convention -->
<div class="card border-success mb-3" id="fhir-name-07">
  <div class="card-header bg-success">
   <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-NAME-07: Identifier systems name convention</strong>
   <a href="#fhir-name-07"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
        <li>FHIR identifier systems <b>MUST</b> follow an agreed format.</li>
        <li>The identifier systems <b>MAY</b> be used in the system element of the Identifier datatype. They establish the namespace for an asset's identifier.value element and have a URI datatype.</li>
        <li>The <b>URL</b> of an identifier systems consists of several name segments and will be in the form: <br/>https://[<b>base url</b>]/fhir/NamingSystem/[<b>businessname1</b>]-[<b>businessname2</b>]-[<b>businessname3</b>]-[<b>businessname4</b>]</li>
        <li>The segments are defined as follows:
          <ul>
            <li><b>Base URL:</b> The URL used for standard publishing. <i>See profile definition.</i></li>
            <li><b>NamingSystem:</b> The NamingSystem section of the identifier is formatted as a string 'NamingSystem'. This segment denotes that the string is an identifier system and is <b>Mandatory</b>.</li>
            <li><b>BusinessNames:</b> The business name segments describe the identifier system. The first business name is Mandatory, but all subsequent ones are optional. There <b>MAY</b> be up to four business names each separated by a hyphen (-) character.</li>            
          </ul> 
        </li>
        <li>Business names <b>SHOULD</b> be used as the logical ID in lowercase.</li> 
    </ul>
</div>

<div class="callout callout-success" id="NsCodeEx">
  <strong>Example of NamingSystem definition for Estonian Address Data System (ADS)</strong><br/>
  <br/> 
  <div class="tabletab">
      <button class="tabletablinks active" onclick="openTab(event, 'xmlNsCode', 'NsCodeEx')">XML</button>
      <button class="tabletablinks" onclick="openTab(event, 'jsonNsCode', 'NsCodeEx')">JSON</button>
  </div>
  <div id="xmlNsCode" class="tabletabcontent" style="display: block;">
    </br>
    <pre>
      &lt;NamingSystem xmlns="http://hl7.org/fhir"&gt;
        &lt;id value="ads-id"/&gt;
        &lt;url value="https://hl7.ee/fhir/NamingSystem/ads-id"/&gt; 
        &lt;version value="1.0.0" /&gt;
        &lt;name value="ADSID"/&gt;
    </pre>
  </div>
  <div id="jsonNsCode" class="tabletabcontent">
    </br>
    <pre>     
    {
      "resourceType": "NamingSystem",
      "id": "ads-id",
      "url": "https://hl7.ee/fhir/NamingSystem/ads-id",
      "version": "1.0.0",
      "name": "ADSID",
    }
    </pre>
  </div>  
    </div>
  </div>
</div>


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

<div class="card border-success mb-3" id="fhir-serv-01-en">
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



