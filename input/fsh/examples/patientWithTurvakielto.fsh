Instance: PatientWithTurvakielto
InstanceOf: FiBasePatient
Title: "Patient - has TURVAKIELTO security label."
Description: "An example of a FI Base patient that has the TURVAKIELTO security label indicating non-disclosure for personal safety reasons."
Usage: #example
* meta.security[0] = SecurityLabelCS#TURVAKIELTO
* id = "patient-with-turvakielto"
* identifier[PIC]
  * use = #official
  * type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
  * type.coding.code = #NNFIN
  * system = #urn:oid:1.2.246.21
  * value = "010190-999X"
* birthDate = "1990-01-01"
* name
  * given = "Turva"
  * family = "Henkilö"
* active = true
* extension[MunicipalityCode].valueCoding.system = #urn:oid:1.2.246.537.6.21.2003
* extension[MunicipalityCode].valueCoding.code = #020
* extension[MunicipalityCode].valueCoding.display = "Akaa"
