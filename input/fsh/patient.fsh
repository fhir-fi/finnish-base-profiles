Profile: FiBasePatient
Parent: http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-patient
Id: fi-base-patient
Title: "FI Base Patient"
Description: "This is the Finnish base profile for the Patient resource."
* id 1..1

* meta.security ^slicing.discriminator.type = #value
* meta.security ^slicing.discriminator.path = "system"
* meta.security ^slicing.rules = #openAtEnd
* meta.security ^slicing.description = "Information about non-disclosure (turvakielto) SHALL be handled in meta.security."
* meta.security ^slicing.ordered = false

* meta.security contains non-disclosure 0..1
* meta.security[non-disclosure].system = "http://terminology.hl7.org/CodeSystem/v3-Confidentiality"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier ^slicing.description = "When using the Finnish personal identifier, identifier.system SHALL be #urn:oid:1.2.246.21."
* identifier ^slicing.ordered = false

* identifier contains SSN 0..1
* identifier[SSN].system = #urn:oid:1.2.246.21

* extension contains MunicipalityCode named municipality 0..1
* extension contains interpreterRequired named interpreterRequired 0..1

Extension: MunicipalityCode
Id: municipality-code
Title: "MunicipalityCode"
Description: "Extension for home municipality"
* value[x] only Coding
* valueCoding 1..1
  * system = #urn:oid:1.2.246.537.6.21.2003

Extension: PatientProfession
Id: patient-profession
Title: "Patient Profession Extension"
Description: "Extension for presenting patient profession."
* . ^short = "Patient Profession"
* value[x] only Coding
* valueCoding 1..1
  * system = #urn:oid:1.2.246.537.6.74
