Instance: ProcedureColotomy
InstanceOf: FiBaseProcedure
Title: "Procedure Colotomy example"
Description: "This example describes main procedure, colotomy, with reference to sub-procedure."
Usage: #example
* identifier.value = "3456"
* status = #completed
* category.coding[0]
  * .system = #urn:oid:1.2.246.537.6.601
  * .code = #TOI
* code.coding[0].system = #urn:oid:1.2.246.537.6.2
* code.coding[0].code = #JFA16
* code.coding[1].system = "http://snomed.info/sct"
* code.coding[1].code = #9215005
* code.text = "Colotomy"
* performedDateTime = "2022-06-08T09:00:00.000Z"
* subject = Reference(PatientOfMunicipality)
* performer.actor = Reference(PractitionerLicensedPhysician)
* location = Reference(LocationExample)