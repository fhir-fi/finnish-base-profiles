Profile: FiBaseInformationCustodian
Parent: FiBaseProvenance
Id: fi-base-information-custodian
Title: "FI Base InformationCustodian"
Description: "This is a Finnish abstract base profile for the Provenance resource, used to communicate the custodian of information (*rekisterinpitäjä*)."
* ^abstract = true

* agent ^slicing.discriminator.type = #value
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent ^slicing.description = "An agent SHALL have the `type` `CST` from http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
  * ^definition = "An agent SHALL have the `type` http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST, a `role` from system `oid:1.2.246.537.5.40172` (*eArkisto - Rekisteripitäjän laji*), and an applicable provider identifier."
  * ^short = "An agent with type http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST"

* agent contains custodian 1..*

* agent[custodian].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST
* agent[custodian].role 1..*
* agent[custodian].who.identifier 1..1
* agent[custodian].who.identifier.type 1..1
* agent[custodian].who.identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN

* agent[custodian].role ^slicing.discriminator.type = #value
* agent[custodian].role ^slicing.discriminator.path = "coding.system"
* agent[custodian].role ^slicing.rules = #open
* agent[custodian].role ^slicing.description = "At least one of the roles must have a coding with a system"

* agent[custodian].role contains custodianRole 1..*
* agent[custodian].role[custodianRole].coding 1..*
* agent[custodian].role[custodianRole].coding.system 1..1

* agent[custodian].role[custodianRole].coding ^slicing.discriminator.type = #value
* agent[custodian].role[custodianRole].coding ^slicing.discriminator.path = "system"
* agent[custodian].role[custodianRole].coding ^slicing.rules = #open
* agent[custodian].role[custodianRole].coding ^slicing.description = "The information custodian agent SHALL have a role with coding of `system` `urn:oid:1.2.246.537.5.40172` ([*eArkisto - Rekisteripitäjän laji*](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=268&versionKey=345)), i.e., whether the provider is a public or private actor. The value for the identifier SHALL be 1 for public, 2 for private."
  * ^definition = "The information custodian agent SHALL have a role with coding of `system` `urn:oid:1.2.246.537.5.40172` ([*eArkisto - Rekisteripitäjän laji*](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=268&versionKey=345)), i.e., whether the provider is a public or private actor. The value for the identifier SHALL be 1 for public, 2 for private."
  * ^short = "A role with type urn:oid:1.2.246.537.5.40172"

* agent[custodian].role[custodianRole].coding contains custodianRoleCoding 1..*

* agent[custodian].role[custodianRole].coding[custodianRoleCoding].system = "urn:oid:1.2.246.537.5.40172"
  * ^definition = "The status of the healthcare provider ([*eArkisto - Rekisteripitäjän laji*](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=268&versionKey=345)), i.e., whether the provider is a public or private actor. The value for the identifier SHALL be 1 for public, 2 for private."
  * ^short = "Public or private occupational healthcare provider"

* entity 1..*

* entity ^slicing.discriminator.type = #value
* entity ^slicing.discriminator.path = "what.identifier.system"
* entity ^slicing.rules = #open
* entity ^slicing.description = "One entity SHALL have the `.role` `source` and a `.what` with an identifier with the system specified."
  * ^definition = "One entity SHALL have the `.role` `source` and a `.what` with an identifier with the system specified."
  * ^short = "Role source and a .what with an identifier with the system specified"

* entity contains registerType 1..* and registerSpecifierCompanyId 0..1 and registerSpecifierPersonId 0..1 and registerSpecifierCustomerWithoutId 0..1

* entity[registerType].role = #source
* entity[registerType].what 1..1
* entity[registerType].what.identifier 1..1
* entity[registerType].what.identifier.system 1..1
* entity[registerType].what.identifier.system from FiBaseRegisterIdentifier
// "One entity SHALL have a `.what` with an identifier with either the system `urn:oid:1.2.246.537.5.40150` (*KanTa-palvelut - Potilasasiakirjan rekisteritunnus*) or the system `urn:oid:1.2.246.537.6.1264` (*Sosiaalihuolto - Asiakirjan rekisteritunnus*)."
  * ^definition = "One entity SHALL have a `.what` with an identifier with system `urn:oid:1.2.246.537.5.40150` or system `urn:oid:1.2.246.537.6.1264`."
  * ^short = "Role source and a .what with an identifier with the system urn:oid:1.2.246.537.5.40150 or urn:oid:1.2.246.537.6.1264"

* entity[registerSpecifierCompanyId].role = #source
* entity[registerSpecifierCompanyId].what.identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#XX
* entity[registerSpecifierCompanyId].what.identifier.system = "urn:oid:1.2.246.10"
  * ^definition = "The customer company of an occupational healthcare provider, expressed with the business ID (*y-tunnus*) registered in the Finnish organization register [ytj.fi](https://ytj.fi). This is a required specifier for Kanta system when the data registry is for occupational healthcare for private companies."
  * ^short = "Customer company of private occupational healthcare"

* entity[registerSpecifierPersonId].role = #source
* entity[registerSpecifierPersonId].what.identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#NNFIN
* entity[registerSpecifierPersonId].what.identifier.system = "urn:oid:1.2.246.21"
  * ^definition = "An individual customer of an occupational healthcare provider, expressed with the Finnish national PIC (*hetu*)."
  * ^short = "Customer of private occupational healthcare"

* entity[registerSpecifierCustomerWithoutId].role = #source
* entity[registerSpecifierCustomerWithoutId].what.identifier.system = "urn:oid:1.2.246.537.30"
  * ^definition = "A customer without a Finnish person or business ID as a customer of an occupational healthcare provider."
  * ^short = "Customer of private occupational healthcare"

Profile: FiBaseInformationCustodianPublic
Parent: FiBaseInformationCustodian
Id: fi-base-information-custodian-public
Title: "FI Base Information Custodian (Public Organization)"
Description: "This is the Finnish base profile for the Provenance resource, used to communicate a public organization as the custodian of information (*rekisterinpitäjä*)."

* agent.role.coding.code = #1
* agent.who.identifier.system = "urn:oid:1.2.246.537.6.40174"
  * ^definition = "The ID of the social or healthcare provider in system `oid:1.2.246.537.6.40174` [(*eArkisto - Rekisterinpitäjärekisteri*)](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=419&versionKey=496)."
  * ^short = "ID of the provider in Rekisterinpitäjärekisteri"

Profile: FiBaseInformationCustodianPrivate
Parent: FiBaseInformationCustodian
Id: fi-base-information-custodian-private
Title: "FI Base Information Custodian (Private Organization)"
Description: "This is the Finnish base profile for the Provenance resource, used to communicate a private organization as the custodian of information (*rekisterinpitäjä*)."

* agent.role.coding.code = #2
* agent.who.identifier.system = "urn:oid:1.2.246.537.6.202"
  * ^definition = "The ID of the social or healthcare provider in system `oid:1.2.246.537.6.202` [(*THL - SOTE-organisaatiorekisteri*)](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=421&versionKey=501)."
  * ^short = "ID of the provider in SOTE-organisaatiorekisteri"

Profile: FiBaseInformationCustodianIndividual
Parent: FiBaseInformationCustodian
Id: fi-base-information-custodian-individual
Title: "FI Base Information Custodian (Individual Provider)"
Description: "This is the Finnish base profile for the Provenance resource, used to communicate an individual practitioner as the custodian of information (*rekisterinpitäjä*)."

* agent.role.coding.code = #2
* agent.who.identifier.system = "urn:oid:1.2.246.537.6.203"
  * ^definition = "The ID of the social or healthcare provider in system `oid:1.2.246.537.6.203` [(*Valvira - Terveydenhuollon itsenäiset ammatinharjoittajat*)](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=1163&versionKey=1303)."
  * ^short = "ID of the provider in Terveydenhuollon itsenäiset ammatinharjoittajat"

ValueSet: FiBaseRegisterIdentifier
Id: fi-base-register-identifier
Title: "Finnish ValueSet for systems of registry specifiers"
Description: "This value set contains the systems that can be used to identify the registry specifier for information custodianship."
// Code system for register identifiers for patient records:
* urn:ietf:rfc:3986#urn:oid:1.2.246.537.5.40150 "KanTa-palvelut - Potilasasiakirjan rekisteritunnus" 
// Code system for register identifiers for social care customer records
* urn:ietf:rfc:3986#urn:oid:1.2.246.537.6.1264 "Sosiaalihuolto - Asiakirjan rekisteritunnus"

Profile: KantaDocumentMetadata
Parent: FiBaseProvenance
Id: kanta-document-metadata-profile
Title: "An imaginary profile for Kanta system, utilizing the Finnish Base Information Custodian profile"
Description: "This is one way in which a system might use the Finnish Base Information Custodian profile. Kanta has expressed the wish to have only one big Provenance resource containing all document metadata. This can be accomplished by creating a profile based on the Finnish Base Provenance profile and [imposing](http://hl7.org/fhir/extensions/StructureDefinition-structuredefinition-imposeProfile.html) the Finnish Base Information Custodian profile."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension.valueCanonical = "https://hl7.fi/fhir/finnish-base-profiles/StructureDefinition/fi-base-information-custodian"

* agent.role ^slicing.discriminator.type = #value
* agent.role ^slicing.discriminator.path = "coding.system"
* agent.role ^slicing.rules = #open
* agent.role ^slicing.description = "Kanta specific profiling"

* agent.role contains kantaRole 1..*
* agent.role[kantaRole].coding 1..*
* agent.role[kantaRole].coding.system 1..1
* agent.role[kantaRole].coding.system = "http://gen.kanta.fi/fikanta-cs-rolecategory"

Instance: KantaDocumentMetadataExample
InstanceOf: KantaDocumentMetadata
Title: "An imaginary example of a Provenance resource instance conforming to the imaginary metadata profile for Kanta system"
Description: "This example demonstrates one way in which a system might use the Finnish Base Information Custodian profile."
Usage: #example
* id = "kanta-document-metadata-profile-example"
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
  * role[kantaRole].coding = http://gen.kanta.fi/fikanta-cs-rolecategory#8 "Palvelunjärjestäjä"
  * who.reference = #jarjestajaorg1
* agent[+]
  * role[kantaRole].coding = http://gen.kanta.fi/fikanta-cs-rolecategory#11 "Palveluntuottaja"
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
  * role[kantaRole].coding = http://gen.kanta.fi/fikanta-cs-rolecategory#8 "Palvelunjärjestäjä"
  * who.reference = #jarjestajaorg1
* agent[+]
  * role[kantaRole].coding = http://gen.kanta.fi/fikanta-cs-rolecategory#11 "Palveluntuottaja"
  * who.reference = #tuottajaorg1
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
 