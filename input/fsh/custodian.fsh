Profile: FiBaseCustodian
Parent: FiBaseProvenance
Id: fi-base-custodian
Title: "FI Base Custodian"
Description: "This is the Finnish base profile for the Provenance resource, to be used to communicate the custodian of information (rekisterinpitäjä)."

* agent ^slicing.discriminator.type = #value
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent ^slicing.description = "An agent SHALL have the type CST from http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* agent ^slicing.ordered = false
  * ^short = "An agent SHALL have the type http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST. Other identifier may also be included."

* agent contains custodian 1..1
  * ^short = "custodian (aka rekisterinpitäjä)."
* agent[custodian].type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* agent[custodian].type.coding.code = #CST

* entity ^slicing.discriminator.type = #value
* entity ^slicing.discriminator.path = "entity"
* entity ^slicing.rules = #open
* entity ^slicing.description = "An entity SHALL have the .role source and a .what with an identifier the system urn:oid:1.2.246.537.5.40150 (KanTa-palvelut - Potilasasiakirjan rekisteritunnus)"
* entity ^slicing.ordered = false
  * ^short = "Role source and a .what with an identifier with the system urn:oid:1.2.246.537.5.40150"

* entity contains registerType 1..1
  * ^short = "registerType"
* entity[registerType].role = #source
* entity[registerType].what.identifier.system = #urn:oid:1.2.246.537.5.40150

/*
* entity contains occupationalHealthcare 0..1
  * ^short = "occupationalHealthcare"
* entity[occupationalHealthcare].role = #source
* entity[occupationalHealthcare].what.identifier.system = #urn:oid::1.2.246.537.5.40150
* entity[occupationalHealthcare].what.identifier.value = #2
*/

* entity contains privateOrg 0..1
  * ^short = "privateOrg"
* entity[privateOrg].role = #source
* entity[privateOrg].what.identifier.system = #urn:oid:1.2.246.537.5.40172
* entity[privateOrg].what.identifier.value = #2

* entity contains registerSpecifier 0..1
  * ^short = "registerSpecifier"
* entity[registerSpecifier].role = #source
* entity[registerSpecifier].what.identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#TAX
* entity[registerSpecifier].what.identifier.system = "https://ytj.fi/"
