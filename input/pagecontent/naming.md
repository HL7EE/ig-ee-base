



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
      <li>
        The segments are defined as follows:
        <ul>
          <li><b>Base URL:</b> The URL used for standard publishing. <i>See profile definition.</i></li>
          <li><b>Base:</b> The standard provider name. <i>See profile definition.</i> <b>Mandatory</b></li>
          <li><b>BusinessNames:</b> The business names of the CodeSystem. The CodeSystem name <b>MUST</b> have at least one BusinessName segment. Where a CodeSystem <b>MAY</b> is used across several domains, business names <b>SHOULD</b> reflect that. <b>Mandatory</b></li>
        </ul>
      </li>
      <li><b>Resource name:</b> [Base] and [BusinessNames] without hyphen (-) <b>SHOULD</b> be used as the resource name.</li>
      <li><b>Resource id:</b> [Base] and [BusinessNames] in lowercase where every word is separated with a hyphen (-). The same formatting rules <b>SHOULD</b> be applied to the resource URL.</li>
      <li><b>Title:</b> The resource's title <b>MUST</b> be [Base] and [BusinessNames] with added spaces to make it human-readable and understandable. BusinessName segment(s) of the title <b>MAY</b> follow <a href="https://learn.microsoft.com/en-us/previous-versions/dotnet/netframework-4.0/ms229043(v=vs.100)?redirectedfrom=MSDN">Camel case convention</a>.</li>
    </ul>
    </li>   
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
      <li>
        The segments are defined as follows:
        <ul>
          <li><b>Base URL:</b> The URL used for standard publishing. <i>See profile definition.</i></li>
          <li><b>Base:</b> The standard provider name. <i>See profile definition.</i> <b>Mandatory</b></li>
          <li><b>BusinessNames:</b> The list of business names of the ValueSet. The ValueSet name <b>MUST</b> have at least one BusinessName segment. Where a ValueSet <b>MAY</b> be used across several domains, business names <b>SHOULD</b> reflect that. <b>Mandatory</b></li>
        </ul>
      </li>
      <li><b>Resource name:</b> [Base] and [BusinessNames] without hyphen (-) <b>SHOULD</b> be used as the resource name.</li>
      <li><b>Resource id:</b> [Base] and [BusinessNames] in lowercase where every word is separated with a hyphen (-). The same formatting rules <b>SHOULD</b> be applied to the resource URL.</li>
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
      <li>
        The segments are defined as follows:
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


