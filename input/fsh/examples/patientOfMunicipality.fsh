Instance: PatientOfMunicipality
InstanceOf: FiBasePatient
Title: "Patient - with the MunicipalityCode extension."
Description: "An example of a FI Base patient with the MunicipalityCode extension."
Usage: #example
* id = "patient-of-municipality"
* identifier[PIC]
  * type = #NNFIN
  * use = #official
  * system = #urn:oid:1.2.246.21
  * value = "010190-999Y"
* gender = #male
* birthDate = "1990-01-01"
* name
  * given = "Testi"
  * family = "Henkilö"
* telecom.system = #phone
* telecom.value = "+358401234657"
* address.use = #home
* address.line[0] = "Testikatu 1"
* address.line[+] = "37910 Akaa"
* communication.language.coding.system = #urn:oid:2.16.840.1.113883.4.642.3.20
* communication.language.coding.code = #fi
* active = true
* extension[MunicipalityCode].valueCoding.system = #urn:oid:1.2.246.537.6.21.2003
* extension[MunicipalityCode].valueCoding.code = #020
* extension[MunicipalityCode].valueCoding.display = "Akaa"
