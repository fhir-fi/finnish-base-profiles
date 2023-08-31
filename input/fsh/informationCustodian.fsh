Profile: FiBaseInformationCustodian
Parent: FiBaseProvenance
Id: fi-base-information-custodian
Title: "FI Base InformationCustodian"
Description: "This is the Finnish base profile for the Provenance resource, to be used to communicate the custodian of information (*rekisterinpitäjä*)."

* agent ^slicing.discriminator.type = #value
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent ^slicing.description = "An agent SHALL have the `type` CST from http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
  * ^definition = "An agent SHALL have the `type` http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST, and a `role` from system `oid:1.2.246.537.5.40172` (*eArkisto - Rekisteripitäjän laji*)."
  * ^short = "An agent with type http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST"

* agent contains custodian 1..1
  * ^definition = "The custodian of information (aka *rekisterinpitäjä*)."
  * ^short = "The custodian (aka rekisterinpitäjä)."
* agent[custodian].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST
* agent[custodian].role.coding.system = "urn:oid:1.2.246.537.5.40172"
  * ^definition = "The status of the healthcare provider (*eArkisto - Rekisteripitäjän laji*), i.e., whether the provider is a public or private actor. The value for the identifier SHALL be 1 for public, 2 for private."
  * ^short = "Public or private occupational healthcare provider"
* agent[custodian].who.identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
* agent[custodian].who.identifier.system = "urn:oid:1.2.246.537.6.202"
  * ^definition = "The ID of the social or healthcare provider in system `oid:1.2.246.537.6.202` (*THL - SOTE-organisaatiorekisteri*)."
  * ^short = "ID of the provider in SOTE-organisaatiorekisteri"

* entity ^slicing.discriminator.type = #value
* entity ^slicing.discriminator.path = "what.identifier.system"
* entity ^slicing.rules = #open
* entity ^slicing.description = "One entity SHALL have the `.role` `source` and a `.what` with an identifier with the system `urn:oid:1.2.246.537.5.40150` (*KanTa-palvelut - Potilasasiakirjan rekisteritunnus*) that indicates the type of the registry.  If the identifier has the value 4 (*työterveyshuolto*, occupational healthcare), another entity element specifies the business ID (*y-tunnus*) of the customer organization."
  * ^definition = "One entity SHALL have the `.role` `source` and a `.what` with an identifier with the system `urn:oid:1.2.246.537.5.40150` (*KanTa-palvelut - Potilasasiakirjan rekisteritunnus*) that indicates the type of the registry.  If the identifier has the value 4 (*työterveyshuolto*, occupational healthcare), another entity element specifies the business ID (*y-tunnus*) of the customer organization."
  * ^short = "Role source and a .what with an identifier with the system urn:oid:1.2.246.537.5.40150"

* entity contains registerType 1..1
* entity[registerType].role = #source
* entity[registerType].what.identifier.system = #urn:oid:1.2.246.537.5.40150
  * ^definition = "The type of the information registry. From the system `oid:1.2.246.537.5.40150` (*KanTa-palvelut - Potilasasiakirjan rekisteritunnus*)."
  * ^short = "Type of registry"

* entity contains registerSpecifierCompanyId 0..1
* entity[registerSpecifierCompanyId].role = #source
* entity[registerSpecifierCompanyId].what.identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#TAX
* entity[registerSpecifierCompanyId].what.identifier.system = "urn:oid:1.2.246.10"
  * ^definition = "The customer company of an occupational healthcare provider, expressed with the business ID (*y-tunnus*) registered in the Finnish organization register [ytj.fi](https://ytj.fi). This is a required specifier for Kanta system when the data registry is for occupational healthcare for private companies."
  * ^short = "Customer company of private occupational healthcare"

* entity contains registerSpecifierPersonId 0..1
* entity[registerSpecifierPersonId].role = #source
* entity[registerSpecifierPersonId].what.identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#NNFIN
* entity[registerSpecifierPersonId].what.identifier.system = "urn:oid:1.2.246.21"
  * ^definition = "An individual customer of an occupational healthcare provider, expressed with the Finnish national PIC (*hetu*)."
  * ^short = "Customer of private occupational healthcare"

* entity contains registerSpecifierCompanyWithoutId 0..1
* entity[registerSpecifierCompanyWithoutId].role = #source
* entity[registerSpecifierCompanyWithoutId].what.identifier.system = "urn:oid:1.2.246.537.30"
  * ^definition = "A company without a Finnish business ID as a customer of an occupational healthcare provider."
  * ^short = "Customer of private occupational healthcare"
