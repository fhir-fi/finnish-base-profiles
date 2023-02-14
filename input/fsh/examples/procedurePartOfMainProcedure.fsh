Instance: ColonBiopsy
InstanceOf: FiBaseProcedure
Usage: #example
Title: "Biopsy of Colon procedure example"
Description: "Sub-procedure for Colotomy procedure."
* identifier.value = "12345"
* partOf = Reference(ProcedureColotomy)
* status = #completed
* category.coding[0]
  * system = #urn:oid:1.2.246.537.6.601
  * code = #PIENTOI
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #76164006
* code.text = "Biopsy of colon"
* subject = Reference(PatientOfMunicipality)
* performer.actor = Reference(Practitioner/example)
* location = Reference(Location/1)