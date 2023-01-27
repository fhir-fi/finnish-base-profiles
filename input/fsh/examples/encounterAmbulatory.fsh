Instance: EncounterAmbulatory
InstanceOf: FiBaseEncounter
Title: "Encounter - patient primary care visit"
Description: "An example of a FI Base encounter where a patient has completed a visit in primary care."
Usage: #example
* id = "id-for-visit"
* identifier.use = #usual
* identifier.value = "id-for-visit"
* status = #finished
* class.system = "http://terminology.hl7.org/ValueSet/v3-ActEncounterCode"
* class.code = #AMB
* class.display = "ambulatory"
* subject.reference = "Patient/id-for-patient"
* period.start = "2022-02-28T15:03:00+02:00"
* period.end = "2022-02-28T15:33:00+02:00"
* serviceProvider.reference = "Organization/1.2.246.10.2085212.10.1314"
* extension[ServiceEvent].valueOid = "urn:oid:1.2.3.4.5"