Profile: KantaDocumentMetadata
Parent: FiBaseProvenance
Id: kanta-document-metadata-profile
Title: "An imaginary profile for Kanta system, utilizing the Finnish Base Information Custodian profile"
Description: "This is one way in which a system might use the Finnish Base Information Custodian profile. Kanta has expressed the wish to have only one big Provenance resource containing all document metadata. This can be accomplished by creating a profile based on the Finnish Base Provenance profile and [imposing](http://hl7.org/fhir/extensions/StructureDefinition-structuredefinition-imposeProfile.html) the Finnish Base Information Custodian profile."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "https://hl7.fi/fhir/finnish-base-profiles/StructureDefinition/fi-base-information-custodian"

* agent ^slicing.discriminator.type = #value
* agent ^slicing.discriminator.path = "role"
* agent ^slicing.rules = #open
* agent ^slicing.description = "Ensure there is a coded role"

* agent contains codedAgent 1..*
* agent[codedAgent].role.coding 1..*
* agent[codedAgent].role.coding.system 1..1

* agent[codedAgent].role.coding ^slicing.discriminator.type = #value
* agent[codedAgent].role.coding ^slicing.discriminator.path = "system"
* agent[codedAgent].role.coding ^slicing.rules = #open
* agent[codedAgent].role.coding ^slicing.description = "Kanta specific profiling"

* agent[codedAgent].role.coding contains kantaCoding 1..*
* agent[codedAgent].role.coding[kantaCoding].system = "http://gen.kanta.fi/fikanta-cs-rolecategory"

Instance: KantaDocumentMetadataExample
InstanceOf: KantaDocumentMetadata
Title: "An imaginary example of a Provenance resource instance conforming to the imaginary metadata profile for Kanta system"
Description: "This example demonstrates one way in which a system might use the Finnish Base Information Custodian profile."
Usage: #example
* id = "kanta-document-metadata-profile-example"
* contained[0]
  * resourceType = "Organization"
  * id = "jarjestajaorg1"
  * identifier[0]
    * system = "urn:oid:1.2.246.537.6.40174"
    * value = "urn:oid:1.2.246.10.32213086.10.0"
  * name = "Pirkanmaan hyvinvointialue"
* contained[+]
  * resourceType = "Organization"
  * id = "tuottajaorg1"
  * identifier[0]
    * system = "urn:oid:1.2.246.537.6.40174"
    * value = "urn:oid:1.2.246.10.32213086.10.0"
  * name = "Pirkanmaan hyvinvointialue"
* agent[0]
  * type
    * coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST "custodian"
    * text = "Rekisterinpitäjä"
  * role[0]
    * coding = urn:oid:1.2.246.537.5.40172#1 "Julkinen"
    * text = "Julkinen"
  * who[0]
    * type = "Organization"
    * identifier
      * type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
      * system = "urn:oid:1.2.246.537.6.40174"
      * value = "urn:oid:1.2.246.10.32213086.19.0"
    * display = "Pirkanmaan hyvinvointialueen rekisterinpitäjä"
* agent[+]
  * role[0].coding = http://gen.kanta.fi/fikanta-cs-rolecategory#8 "Palvelunjärjestäjä"
  * who.reference = #jarjestajaorg1
* agent[+]
  * role[0].coding = http://gen.kanta.fi/fikanta-cs-rolecategory#11 "Palveluntuottaja"
  * who.reference = #tuottajaorg1
* entity[0]
  * role = #source
  * what
    * identifier
      * system = "urn:oid:1.2.246.537.5.40150"
      * value = "4"
    * display = "Työterveyshuolto"
* entity[+]
  * role = #source
  * what
    * identifier
      * type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#XX
      * system = "urn:oid:1.2.246.10"
      * value = "2606155-7"
    * display = "Sensotrend Oy"
* target[0].reference = "EpisodeOfCare/id-for-episode-1"
* recorded = "2023-08-25T16:42:17.239+03:00"
 
Instance: KantaDocumentMetadataExample2
InstanceOf: KantaDocumentMetadata
Title: "An imaginary example of a Provenance resource instance conforming to the imaginary metadata profile for Kanta system, using the kanta code also for the custodian agent"
Description: "This example demonstrates one way in which a system might use the Finnish Base Information Custodian profile."
Usage: #example
* id = "kanta-document-metadata-profile-example-2"
* contained[0]
  * resourceType = "Organization"
  * id = "jarjestajaorg1"
  * identifier[0]
    * system = "urn:oid:1.2.246.537.6.40174"
    * value = "urn:oid:1.2.246.10.32213086.10.0"
  * name = "Pirkanmaan hyvinvointialue"
* contained[+]
  * resourceType = "Organization"
  * id = "tuottajaorg1"
  * identifier[0]
    * system = "urn:oid:1.2.246.537.6.40174"
    * value = "urn:oid:1.2.246.10.32213086.10.0"
  * name = "Pirkanmaan hyvinvointialue"
* agent[0]
  * type
    * coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST "custodian"
    * text = "Rekisterinpitäjä"
  * role[0]
    * coding = urn:oid:1.2.246.537.5.40172#1 "Julkinen"
    * text = "Julkinen"
  * role[+]
    * coding = http://gen.kanta.fi/fikanta-cs-rolecategory#2 "Rekisterinpitäjä" // Don't know which is the right code, just selecting one...
    * text = "Rekisterinpitäjä"
  * who[0]
    * type = "Organization"
    * identifier
      * type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
      * system = "urn:oid:1.2.246.537.6.40174"
      * value = "urn:oid:1.2.246.10.32213086.19.0"
    * display = "Pirkanmaan hyvinvointialueen rekisterinpitäjä"
* agent[+]
  * role[0].coding = http://gen.kanta.fi/fikanta-cs-rolecategory#8 "Palvelunjärjestäjä"
  * who.reference = #jarjestajaorg1
* agent[+]
  * role[0].coding = http://gen.kanta.fi/fikanta-cs-rolecategory#11 "Palveluntuottaja"
  * who.reference = #tuottajaorg1
* entity[0]
  * role = #source
  * what
    * identifier
      * system = "urn:oid:1.2.246.537.5.40150"
      * value = "4"
    * display = "Työterveyshuolto"
* entity[+]
  * role = #source
  * what
    * identifier
      * type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#XX
      * system = "urn:oid:1.2.246.10"
      * value = "2606155-7"
    * display = "Sensotrend Oy"
* target[0].reference = "EpisodeOfCare/id-for-episode-1"
* recorded = "2023-08-25T16:42:17.239+03:00"

Instance: KantaDocumentMetadataFailingExample1
InstanceOf: KantaDocumentMetadata
Title: "A test example demonstrating that validation works"
Description: "This example does not have the registerType entity mandated by the Finnish Base Information Custodian profile. QA report is expected to show an error."
Usage: #example
* id = "kanta-document-metadata-profile-test-example-1"
* contained[0]
  * resourceType = "Organization"
  * id = "the-same-org"
  * identifier[0]
    * system = "urn:oid:1.2.246.537.6.40174"
    * value = "urn:oid:1.2.246.10.32213086.10.0"
  * name = "Pirkanmaan hyvinvointialue"
* agent[0]
  * type
    * coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST "custodian"
    * text = "Rekisterinpitäjä"
  * role[0]
    * coding = urn:oid:1.2.246.537.5.40172#1 "Julkinen"
    * text = "Julkinen"
  * who[0]
    * type = "Organization"
    * identifier
      * type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
      * system = "urn:oid:1.2.246.537.6.40174"
      * value = "urn:oid:1.2.246.10.32213086.19.0"
    * display = "Pirkanmaan hyvinvointialueen rekisterinpitäjä"
* agent[+]
  * role[0].coding = http://gen.kanta.fi/fikanta-cs-rolecategory#8 "Palvelunjärjestäjä"
  * who.reference = #the-same-org
* agent[+]
  * role[0].coding = http://gen.kanta.fi/fikanta-cs-rolecategory#11 "Palveluntuottaja"
  * who.reference = #the-same-org
* entity[0]
  * role = #source
  * what
    * identifier
      * type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#XX
      * system = "urn:oid:1.2.246.10"
      * value = "2606155-7"
    * display = "Sensotrend Oy"
* target[0].reference = "EpisodeOfCare/id-for-episode-1"
* recorded = "2023-08-25T16:42:17.239+03:00"
 
Instance: KantaDocumentMetadataFailingExample2
InstanceOf: KantaDocumentMetadata
Title: "Another test example demonstrating that validation works"
Description: "This example does not have a role with the code system specified by Kanta. QA report is expected to show an error."
Usage: #example
* id = "kanta-document-metadata-profile-test-example-2"
* agent[0]
  * type
    * coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST "custodian"
    * text = "Rekisterinpitäjä"
  * role[0]
    * coding = urn:oid:1.2.246.537.5.40172#1 "Julkinen"
    * text = "Julkinen"
  * who[0]
    * type = "Organization"
    * identifier
      * type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
      * system = "urn:oid:1.2.246.537.6.40174"
      * value = "urn:oid:1.2.246.10.32213086.19.0"
    * display = "Pirkanmaan hyvinvointialueen rekisterinpitäjä"
* entity[0]
  * role = #source
  * what
    * identifier
      * system = "urn:oid:1.2.246.537.5.40150"
      * value = "4"
    * display = "Työterveyshuolto"
* entity[+]
  * role = #source
  * what
    * identifier
      * type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#XX
      * system = "urn:oid:1.2.246.10"
      * value = "2606155-7"
    * display = "Sensotrend Oy"
* target[0].reference = "EpisodeOfCare/id-for-episode-1"
* recorded = "2023-08-25T16:42:17.239+03:00"
