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
* ^experimental = false
// Code system for register identifiers for patient records:
* urn:ietf:rfc:3986#urn:oid:1.2.246.537.5.40150 "KanTa-palvelut - Potilasasiakirjan rekisteritunnus" 
// Code system for register identifiers for social care customer records
* urn:ietf:rfc:3986#urn:oid:1.2.246.537.6.1264 "Sosiaalihuolto - Asiakirjan rekisteritunnus"
