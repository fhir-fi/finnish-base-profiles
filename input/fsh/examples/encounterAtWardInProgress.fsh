Instance: EncounterAtWardInProgress
InstanceOf: FiBaseEncounter
Title: "Encounter - patient is currently receiving care at a ward treating surgical patients"
Description: "An example of a FI Base encounter where a patient is currently receiving care at a ward."
Usage: #example
* id = "id-for-ward-encounter"
* identifier.use = #usual
* identifier.value = "id-for-ward-encounter"
* status = #in-progress
* class.system = "http://terminology.hl7.org/ValueSet/v3-ActEncounterCode"
* class.code = #IMP
* class.display = "inpatient encounter"
* subject.reference = "Patient/id-for-patient"
* period.start = "2022-02-27T01:03:00+02:00"
* serviceProvider.reference = "Organization/1.2.246.10.8286189.10.100012"
* location[0].status = #active
* location[0].period.start = "2022-02-27T01:03:00+02:00"
* location[0].location.reference = "Location/id-for-bed-3"
* extension[ServiceEvent].valueOid = "urn:oid:1.2.3.4.6"