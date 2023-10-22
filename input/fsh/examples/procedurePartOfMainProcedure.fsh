Instance: ColonBiopsy
InstanceOf: FiBaseProcedure
Title: "Biopsy of Colon procedure example"
Description: "Sub-procedure for Colotomy procedure."
Usage: #example
* identifier.value = "12345"
* partOf = Reference(ProcedureColotomy)
* status = #completed
* category.coding = urn:oid:1.2.246.537.6.601#PIENTOI
* code.coding = http://snomed.info/sct#76164006
* code.text = "Biopsy of colon"
* subject = Reference(PatientOfMunicipality)
* performer.actor = Reference(PractitionerLicensedPhysician)
* location = Reference(LocationExample)