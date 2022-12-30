Instance: PatientExample
InstanceOf: FinnishBasePatient
Description: "An example of a Finnish Base patient."
Usage: #example
* id = "01234"
* identifier.system = #urn:oid:1.2.246.21
* identifier.use = #official
* identifier.value = "010190-999Y"
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
* extension[MunicipalityCode].valueCoding.system = #urn:oid:1.2.246.537.6.21.2003
* extension[MunicipalityCode].valueCoding.code = #020
* extension[MunicipalityCode].valueCoding.display = "Akaa"
