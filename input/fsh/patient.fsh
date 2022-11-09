Profile: FinnishCorePatient
Parent: Patient
Description: "A finnish core profile of the Patient resource."
* id 1..1
* identifier 1..1
  * system = #urn:oid:1.2.246.21
* name 1..* MS
* gender 1..1
* birthDate 1..1
* address 0..1
* active 0..0
* maritalStatus 0..0
* multipleBirth[x] 0..0
* photo 0..0
* contact 0..0
* managingOrganization 0..0
* link 0..0
* text 0..0
* language 0..0
* extension contains MunicipalityCode named municipality 0..1

Extension: MunicipalityCode
Id: municipality-code
Title: "MunicipalityCode"
Description: "Extension for home municipality"
* value[x] only Coding
* valueCoding 1..1
  * system = #urn:oid:1.2.246.537.6.21.2003