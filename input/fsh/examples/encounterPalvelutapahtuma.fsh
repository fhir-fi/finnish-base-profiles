Instance: EncounterPalvelutapahtuma
InstanceOf: FiBaseEncounter
Title: "Encounter that is a palvelutapahtuma in Kanta registry"
Description: "An example of a FI Base encounter which corresponds 1-1 to palvelutapahtuma in Kanta. Identifier with use=official marks the OID of palvelutapahtuma. Has sub-encounters."
Usage: #example
* id = "id-for-palvelutapahtuma"
* identifier.use = #official
* identifier.value = "urn:oid:1.2.246.10.6794809.14011.2023.200035"
* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject.reference = "Patient/patient-of-municipality"
* period.start = "2022-02-27T01:03:00+02:00"
* serviceProvider.reference = "Organization/1.2.246.10.8286189.10.100012"

Instance: EncounterPartOfPalvelutapahtuma
InstanceOf: FiBaseEncounter
Title: "Encounter that is part of palvelutapahtuma"
Description: "An example of a FI Base encounter which is part of another encounter that corresponds palvelutapahtuma in Kanta."
Usage: #example
* id = "id-for-child-encounter"
* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* partOf = Reference(EncounterPalvelutapahtuma) 
* subject.reference = "Patient/patient-of-municipality"
* period.start = "2022-02-27T01:03:00+02:00"
* serviceProvider.type = #Organization
* serviceProvider.identifier.value = "1.2.246.10.8286189.10.100013"
* location[0].status = #active
* location[0].period.start = "2022-02-27T01:03:00+02:00"
* location[0].location.reference = "Location/id-for-bed-3"

Instance: EncounterPartOfPalvelutapahtuma2
InstanceOf: FiBaseEncounter
Title: "Another Encounter that is part of palvelutapahtuma"
Description: "An example of a FI Base encounter which is part of another encounter that corresponds to palvelutapahtuma in Kanta."
Usage: #example
* id = "id-for-child-encounter-2"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#OBSENC "observation encounter"
* partOf = Reference(EncounterPalvelutapahtuma) 
* subject.reference = "Patient/patient-of-municipality"
* period.start = "2022-02-28T12:03:00+02:00"
* period.end = "2022-02-28T12:18:00+02:00"
* serviceProvider.type = #Organization
* serviceProvider.identifier.value = "1.2.246.10.8286189.10.100014"
