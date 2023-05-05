CodeSystem: TestCS
Id: testcs
Title: "Test code system"
Description: "Test code system"
* ^caseSensitive = false
* ^experimental = true
* ^hierarchyMeaning = #is-a
* ^property[0].code = #status
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#status"
* ^property[=].type = #code
* #AA "Root of AA" 
* #AA ^property[0].code = #status
* #AA ^property[=].valueCode = #A
  * #AA1 "AA1" 
    * ^property[0].code = #status
    * ^property[=].valueCode = #A
  * #AA2 "AA2" 
    * ^property[0].code = #status
    * ^property[=].valueCode = #R
* #BB "Root of BB" 
* #BB ^property[0].code = #status
* #BB ^property[=].valueCode = #R

ValueSet: ActiveConcepts
Title: "Active concepts"
Description: "Active concepts"
* ^experimental = true
* include codes from system TestCS where status = "A"

ValueSet: ChildrenOfAA
Title: "ChildrenOfAA"
Description: "ChildrenOfAA"
* ^experimental = true
* include codes from system TestCS where concept descendent-of #AA

ValueSet: ActiveChildrenOfAA
Title: "ActiveChildrenOfAA"
Description: "ActiveChildrenOfAA"
* ^experimental = true
* include codes from system TestCS where concept descendent-of #AA and status = "A"
