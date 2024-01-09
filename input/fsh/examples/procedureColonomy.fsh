Instance: ProcedureColotomy
InstanceOf: FiBaseProcedure
Title: "Procedure Colotomy example"
Description: "This example describes main procedure, colotomy, with reference to sub-procedure."
Usage: #example
* identifier.value = "3456"
* status = #completed
* category.coding[0] = urn:oid:1.2.246.537.6.601|2013#TOI
* code.coding[0] = urn:oid:1.2.246.537.6.2|2007#JFA16
* code.coding[+] = http://snomed.info/sct#9215005
* code.text = "Colotomy"
* performedDateTime = "2022-06-08T09:00:00.000Z"
* subject = Reference(PatientOfMunicipality)
* performer.actor = Reference(PractitionerLicensedPhysician)
* location = Reference(LocationExample)