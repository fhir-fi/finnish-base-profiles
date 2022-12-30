Instance: PatientExample
InstanceOf: FinnishBasePatient
Description: "An example of a Finnish Base patient."
Usage: #example
* id = "01234"
* identifier.value = "010190-999Y"
* identifier.system = #urn:oid:1.2.246.21
* identifier.use = #official
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
* communication.language = #fi
* extension[MunicipalityCode].valueCoding.code = #020
* extension[MunicipalityCode].valueCoding.display = "Akaa"
* extension[MunicipalityCode].valueCoding.system = #urn:oid:1.2.246.537.6.21.2003