Instance: DiagnosisSimple
InstanceOf: FiBaseReasonForCare
Title: "Condition - an example diagnosis"
Description: "An example of a diagnosis using the FiBaseReasonForCare profile. This diagnosis is asserted by a clinician."
Usage: #example
* id = "id-for-diagnosis-1"
* category.coding = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis

* subject = Reference(PatientOfMunicipality)
* code.coding = urn:oid:1.2.246.537.6.1|1999#H36.03 "Proliferatiivinen diabeettinen retinopatia"
* code.text = "Proliferatiivinen diabeettinen retinopatia, vasen, laserhoidettu"

* evidence.code.coding = urn:oid:1.2.246.537.6.1|1999#E11.3 "Aikuistyypin diabetes diabeteksen silmäkomplikaatiot"
* onsetDateTime = "2023-01-05T02:06:24+03:00"

* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#active

* extension[PrimaryCondition].valueCoding = urn:oid:1.2.246.537.5.40005|2003#PAA "Päädiagnoosi tai päätoimenpide"

* extension[Permanence].valueCoding = urn:oid:1.2.246.537.5.40003|2003#PYS "Pysyväisluonteinen"