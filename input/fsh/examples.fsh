Instance: PatientExample
InstanceOf: FinnishCorePatient
Description: "An example of a finnish core patient."
* id = "01234"
* identifier.value = "010190-999Y"
* identifier.system = #urn:oid:1.2.246.21
* identifier.use = #official
* gender = #male
* birthDate = "1990-01-01"
* name
  * given[0] = "Testi"
  * family = "Henkilö"
* telecom[0].system = #phone
* telecom[0].value = "+358401234657"
* address[0].use = #home
* address[0].line = "testikatu 1"
* communication.language = #fi
* extension[MunicipalityCode].valueCoding.code = #020
* extension[MunicipalityCode].valueCoding.display = "Akaa"
* extension[MunicipalityCode].valueCoding.system = #urn:oid:1.2.246.537.6.21.2003