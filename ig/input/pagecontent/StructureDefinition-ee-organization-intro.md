### Purpose
According to FHIR specification, [Organization](https://www.hl7.org/fhir/organization.html) is a resource intended for documenting information related to an entity that has been formed for the purpose of achieving some form of collective action. 'Organization' as such has a narrower definition in context of EEBase - in order to be conformant to EEBaseOrganization profile, an organization MUST be registered as a business, since _Organization.identifier_ element uses specific namespaces (see below). Yet, Organization could be used for documenting contact information and/or providing support for other resources that need to reference organizations.

### Usage
- Query for organizations that are part of a specific organization using the query parameter _Organization.partOf_
- Query for organizations that share the code specifying the type of the organization using the query parameter _Organization.type_
- Exchange Organization information within a FHIR document or message


{:.grid}

{% include markdown-link-references.md %}


