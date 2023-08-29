Profile: FiBaseCustodian
Parent: FiBaseProvenance
Id: fi-base-custodian
Title: "FI Base Custodian"
Description: "This is the Finnish base profile for the Provenance resource, to be used to communicate the custodian of information (*rekisterinpitäjä*)."

* agent ^slicing.discriminator.type = #value
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent ^slicing.description = "An agent SHALL have the `type` CST from http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
  * ^definition = "An agent SHALL have the `type` http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST."
  * ^short = "An agent SHALL have the `type` http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST"

* agent contains custodian 1..1
  * ^definition = "The custodian of information (aka *rekisterinpitäjä*)."
  * ^short = "The custodian (aka rekisterinpitäjä)."
* agent[custodian].type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* agent[custodian].type.coding.code = #CST

* entity ^slicing.discriminator.type = #value
* entity ^slicing.discriminator.path = "entity"
* entity ^slicing.rules = #open
* entity ^slicing.description = "An entity SHALL have the `.role` `source` and a `.what` with an identifier with the system `urn:oid:1.2.246.537.5.40150` (*KanTa-palvelut - Potilasasiakirjan rekisteritunnus*)"
  * ^definition = "One entity with `.role` `source` and a `.what` with an identifier with the system `urn:oid:1.2.246.537.5.40150`."
  * ^short = "Role source and a .what with an identifier with the system urn:oid:1.2.246.537.5.40150"

* entity contains registerType 1..1
* entity[registerType].role = #source
* entity[registerType].what.identifier.system = #urn:oid:1.2.246.537.5.40150

* entity contains organizationRole 0..1
* entity[organizationRole].role = #source
* entity[organizationRole].what.identifier.system = #urn:oid:1.2.246.537.5.40172
  * ^definition = "The status of an occupational healthcare provider (*eArkisto - Rekisteripitäjän laji*), i.e., whether the provider is a public or private actor. The value for the identifier SHALL be 1 for public, 2 for private."
  * ^short = "Public or private occupational healthcare provider"

* entity contains registerSpecifier 0..1
* entity[registerSpecifier].role = #source
* entity[registerSpecifier].what.identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#TAX
* entity[registerSpecifier].what.identifier.system = "https://ytj.fi/"
  * ^definition = "The customer company of an occupational healthcare provider, expressed with the business ID (*y-tunnus*) registered in the Finnish organization register [ytj.fi](https://ytj.fi). This is a required specifier for Kanta system when the data registry is for occupational healthcare for private companies."
  * ^short = "Customer of private occupational healthcare"
