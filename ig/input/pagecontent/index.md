<div class="alert alert-warning">


**Please note:**
<br/>
**The guidance does not form the basis for a completely described deployable service in and of itself but is the basis from which other FHIR implementation guides can be derived.**
<br/>
<br/>
**This version of the EEBase Implementation Guide is currently under development and will be updated daily.** Known issues currently being addressed have been listed below:  
<br/>
<ul>
     <li>Some of the URLs might not be resolvable yet, there may be a few broken links.</li>
     <li>Some of the CodeSystems and ValueSets are still in development.</li>
     <li>Subpages "People and Organizations" and "Profiling Guidelines" are still in development.</li>
     <li>Official contacts and the list of contributors/reviewers will be added in the near future. Until then the main contact point for inquiries is <b>fhir@tehik.ee</b>.</li>
</ul>     
<!--- Please follow the guidance on the  <a href="https://simplifier.net/guide/ee-fhir-base/Home/Contact-Us.page.md?version=current">Contact Us</a> page if you need any assistance.</li> --->


</div>

<br/>

#### Introduction

The EEBase Implementation Guide covers a set of national base profiles, terminology components and guiding principles based on <a href="http://hl7.org/fhir/R4/index.html">FHIR®© version R4</a>. The switch from document-based data exchange to a more granular one will be realized as a transitional process. The development of this Implementation Guide should be considered the first step in helping event-based health data exchange to become a real-life scenario in Estonia.

This guide serves the purpose of simplifying the process of implementing FHIR and thus increasing interoperability and clinical data quality in the Estonian context by including the following components:
<ul>
    <li>FHIR resources tailored for local use, e.g. <b>base profiles</b>, whereas conformance requirements must support flags and binding strengths have been held to as minimum as possible to support <a href= "https://informatiestandaarden.nictiz.nl/wiki/FHIR:V1.0_FHIR_Profiling_Guidelines_R4#Open_vs._closed_world_modeling">open-world modeling</a>;
    <li>Ready-to-use <b>CodeSystems</b> and <b>ValueSets</b> developed for Estonian healthcare data exchange specifically;
    <li><b>Implementation and profiling guidance</b> to support a smooth transition from other standards to FHIR.
</ul>
Even though the initial draft of the EEBase Implementation Guide was developed in March-October 2022 as part of project "Estonian National Health Information System support for event-based data exchange", it should be regarded as the intellectual property of a community of contributors and reviewers who have provided valuable input during the validation process of this guide. 
<br/>

<br/>


#### Audience
This document aims to provide standardized clinical data components and instructional materials to both implementation guide author communities and vendor communities. Users of this guide are expected to be familiar with FHIR, at least to some degree, to find additional information from the <a href="http://hl7.org/fhir/">official specification page</a> if needed. Implementation of, testing and offering feedback on this specification is highly encouraged. Readers of this guide are welcome to find the appropriate e-mail address on the [Contact Us](guide/ee-fhir-base/Home/Contact-Us.page.md) page in case of questions, suggestions, information requests, or collaboration offers.

<br/>

#### Scope
From the perspective of future and current implementers, it is most logical to divide the content of the EEBase Implementation Guide into three parts by the function they serve:
<ul>
    <li><b>FHIR profiles and extensions</b> suitable for use in the Estonian healthcare domain specifically. Each profile has its dedicated page for details on example use cases, usage instructions and descriptions of data items. For a general overview of all profiles and extensions in this guide, it is suggested to look at the <a href= "https://simplifier.net/guide/ee-fhir-base/Home/Profiles-and-Extensions/Profiles-Index.guide.md?version=current">Profiles Index</a> page, where one can find profiling guidelines developed and followed in the profiling process of EEBase. The profiling guidelines offer insight into the principles and best practices, which are especially valuable in the early stage of building profiles based on one's use cases. <b>Please note that EEBase profiles are intended as a starting point for utilizing the possibilities offered by FHIR for specific use cases, projects and/or services.</b> The profiles provided <b>should not be considered suitable for use straight out of the box but must be used as a base profile to derive additional profiles from</b>;
    <li><b>CodeSystems and ValueSets</b> specially developed for EEBase (this means that CodeSystems and ValueSets developed by HL7 are not included in this IG even when bound with data elements in EEBase profiles, as the latest documentation of these artefacts could be found on <a href= "http://hl7.org/fhir/terminologies-systems.html">FHIR’s webpage</a>). <a style="font-weight:bold" href= "https://simplifier.net/guide/ee-fhir-base/Home/Terminology/ConceptMaps.page.md?version=current">ConceptMaps</a> from custom value sets developed for EEBase to HL7’s ’default’ value sets are also provided in case of implementers decide on using the ones provided by HL7. For maximum interoperability, it is encouraged to use stable identifiers (either a URI or OID) in profiles. For that purpose, the authors of this implementation guide have utilized the <a style="font-weight:bold" href= "https://simplifier.net/guide/ee-fhir-base/Home/Terminology/NamingSystems-and-Terminology.guide.md?version=current">NamingSystem</a>  resources. For more information on using terminology, see the Profiling Guidelines section on the <a href= "https://simplifier.net/guide/ee-fhir-base/Home/Profiles-and-Extensions/Profiles-Index.guide.md?version=current">Profiles Index</a> page and pages under the Terminology tab;
    <li><b>Policy</b> from general compliance principles to FHIR operations to be followed when implementing FHIR within your jurisdiction. For more information, see the <a href= "https://simplifier.net/guide/ee-fhir-base/Home/Policy/Policy-Index?version=current">Policy Index</a> page.
</ul>
<br/>

#### How to Read This Guide

This Guide is divided into several pages, which are listed at the top of each page in the menu bar.

- [Home](/guide/ee-fhir-base/Home): The home page provides the introduction and background for EEBase.
- {{pagelink:Home/Policy/Policy-Index}}: The Policy page provides the set of rules for FHIR standard developers in Estonia.
  - {{pagelink:Home/Policy/Policy-Index/General.guide.md}}: <!-- siia lisada selgitus -->
  - {{pagelink:Home/Policy/Policy-Index/Conformance.guide.md}}: <!-- siia lisada selgitus -->
  - {{pagelink:Home/Policy/Policy-Index/Profiling.guide.md}}: <!-- siia lisada selgitus -->
  - {{pagelink:Home/Policy/Policy-Index/Versioning.guide.md}}: <!-- siia lisada selgitus -->
  - {{pagelink:Home/Policy/Policy-Index/Naming.guide.md}}: <!-- siia lisada selgitus -->
  - {{pagelink:Home/Policy/Policy-Index/Resource-identifiers.guide.md}}: <!-- siia lisada selgitus -->
  - {{pagelink:Home/Policy/Policy-Index/Publishing.guide.md}}: <!-- siia lisada selgitus -->
  - {{pagelink:Home/Policy/Policy-Index/Serialization.guide.md}}: <!-- siia lisada selgitus -->
  - {{pagelink:Home/Policy/Policy-Index/FHIR-operations.guide.md}}: <!-- siia lisada selgitus -->
  - {{pagelink:Home/Policy/Policy-Index/Health-Services.guide.md}}: List of providers of National Health Services.
- Profiles and Extensions: The header for pages about Extensions and Profiles
  - {{pagelink:Home/Profiles-and-Extensions/Extensions-Index}}: The Extension Library, which have been defined for the EEBase.
  - {{pagelink:Home/Profiles-and-Extensions/Profiles-Index.guide.md}}: The Profiles, which have been defined for the EEBase.
  - {{pagelink:Home/Profiles-and-Extensions/Profile-EEBaseEncounter}}
  - {{pagelink:Home/Profiles-and-Extensions/Profile-EEBaseEpisodeOfCare}}
  - {{pagelink:Home/Profiles-and-Extensions/Profile-EEBaseHealthcareService}}
  - {{pagelink:Home/Profiles-and-Extensions/Profile-EEBaseLocation}}
  - {{pagelink:Home/Profiles-and-Extensions/Profile-EEBaseObservation}}
  - {{pagelink:Home/Profiles-and-Extensions/Profile-EEBaseOrganization}}
  - {{pagelink:Home/Profiles-and-Extensions/Profile-EEBasePatient}}
  - {{pagelink:Home/Profiles-and-Extensions/Profile-EEBasePractitioner}}
  - {{pagelink:Home/Profiles-and-Extensions/Profile-EEBasePractitionerRole}}
  - {{pagelink:Home/Profiles-and-Extensions/Profile-EEBaseRelatedPerson}}
- Terminology: This page lists all the Terminology assets defined as part of this Implementation Guide.
  - {{pagelink:Home/Terminology/ConceptMaps.page.md}}: This is the list of all ConceptMaps necessary to guarantee interoperability for using EEBase and HL7 terminology resources.
  - {{pagelink:Home/Terminology/CodeSystems-and-ValueSets.page.md}}: This is the list of all CodeSystems and ValueSets defined for use within the EEBase.
  - {{pagelink:Home/Terminology/NamingSystems.guide.md}}: This is the list of all Namingsystems defined for use within the EEBase.
- {{pagelink:Home/Downloads.page.md}}: List of downloads available.
- {{pagelink:Home/Contact-Us.page.md}}: How to Contact the key parties associated with this implementation guide.

<br/>

<button onclick="topFunction()" id="topButton" title="Back to top">top</button>

<!-- <div class="alert alert-warning">

**Licensing and Publisher**\
Copyright © 2022+ HL7 Estonia Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at https://www.hl7.org/fhir/license.html.
<br/>
<br/>
Developed and authored by HL7 Estonia Base Development Team and published by HL7 Estonia.

</div> -->
