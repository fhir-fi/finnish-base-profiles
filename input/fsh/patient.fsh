Profile: FiBasePatient
Parent: Patient
Id: fi-base-patient
Title: "FI Base Patient"
Description: "This is the Finnish base profile for the Patient resource."
* generalPractitioner only Reference(FiBaseOrganization or FiBasePractitioner or FiBasePractitionerRole)
* managingOrganization only Reference(FiBaseOrganization)
* link.other only Reference(FiBasePatient or RelatedPerson)

* meta.security ^slicing.discriminator.type = #value
* meta.security ^slicing.discriminator.path = "system"
* meta.security ^slicing.rules = #open
* meta.security ^slicing.description = ""
* meta.security ^slicing.ordered = false
  * ^short = "Information about TURVAKIELTO SHALL be handled in meta.security."

* meta.security contains turvakielto 0..1
* meta.security[turvakielto].system = "https://hl7.fi/fhir/finnish-base-profiles/CodeSystem/fi-base-security-label-cs"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "When using the official Finnish personal identifier code (PIC, also known as HETU), identifier.system SHALL be urn:oid:1.2.246.21."
* identifier ^slicing.ordered = false
  * ^definition = "When using the official Finnish personal identifier code (PIC, also known as *HETU*), identifier.system SHALL be `urn:oid:1.2.246.21`."
  * ^short = "Identifier contains Finnish personal identity code which can be official or temporary. Other identifier may also be included."

* identifier contains PIC 0..1
  * ^short = "PIC (aka HETU)."
* identifier[PIC].use = #official
* identifier[PIC].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PIC].type.coding.code = #NNFIN
* identifier[PIC].system = #urn:oid:1.2.246.21

* extension contains MunicipalityCode named municipality 0..1
* extension contains interpreterRequired named interpreterRequired 0..1
* extension contains PatientProfession named patientProfession 0..1

Extension: MunicipalityCode
Id: municipality-code
Title: "Municipality Code"
Description: "Extension for home municipality. Home municipality is relevant for ex. in billing and listing available healthcare services, and for statistical purposes. It it not necessarily the place where a patient lives, rather closer to where they pay their taxes."
* . ^short = "The home municipality of the patient (not necessarily where they live)."
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only Coding
* valueCoding 1..1
  * system = #urn:oid:1.2.246.537.6.21

Extension: PatientProfession
Id: patient-profession
Title: "Patient Profession Extension"
Description: "Extension for presenting patient profession."
* . ^short = "Patient Profession"
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only Coding
* valueCoding 1..1
  * system = #urn:oid:1.2.246.537.6.74
