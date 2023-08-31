Instance: ProvenanceExample
InstanceOf: FiBaseProvenance
Title: "Custodian of information (rekisterinpitäjä)"
Description: "Example of Provenance that communicates custodian information for an episode of care."
Usage: #example
* id = "id-for-provenance-1"
* target = Reference(EpisodeOfCare/id-for-episode-1)
* recorded = "2015-02-07T13:28:17.239+02:00"
* agent[0].who.type = #Organization
* agent[0].who.identifier.value = "1.2.246.10.32213043.19.0"
* agent[0].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* agent[0].type.coding[0].code = #custodian

* extension[RegisterTypeCode].valueCoding.system = #urn:oid:1.2.246.537.5.40150.2009
* extension[RegisterTypeCode].valueCoding.code = #2
* extension[RegisterTypeCode].valueCoding.display = "Julkinen terveydenhuolto"