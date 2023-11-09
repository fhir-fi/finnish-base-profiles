Instance: DiagnosisAdverseEffect
InstanceOf: FiBaseReasonForCare
Title: "Condition - an example diagnosis with an adverse effect."
Description: "An example of a diagnosis using the FiBaseReasonForCare profile. This diagnosis demonstrates a case that has an adverse effect."
Usage: #example
* id = "id-for-diagnosis-3"
* category.coding = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis

* subject = Reference(PatientOfMunicipality)
* code.coding = urn:oid:1.2.246.537.6.1|1999#T81.9 "Määrittämätön toimenpidekomplikaatio"
* code.text = "Määrittämätön toimenpidekomplikaatio"

* onsetDateTime = "2023-01-05T02:06:24+03:00"

* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#active

* extension[PrimaryCondition].valueCoding = urn:oid:1.2.246.537.5.40005|2003#SIVU "Sivudiagnoosi tai toissijainen toimenpide"

* extension[Permanence].valueCoding = urn:oid:1.2.246.537.5.40003|2003#KER "Kertaluonteinen"

* extension[ConditionExternalCause].valueCoding = urn:oid:1.2.246.537.6.1|1999#Y60.0 "Leikkauksen yhteydessä vahingossa syntynyt haava, punktio, perforaatio tai verenvuoto"

* extension[CauseOfAdverseEffect].valueCoding = urn:oid:1.2.246.537.6.2|2007#JAB10 "Nivustyrän korjaus"
