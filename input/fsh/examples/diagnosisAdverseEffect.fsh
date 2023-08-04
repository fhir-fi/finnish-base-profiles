Instance: DiagnosisAdverseEffect
InstanceOf: FiBaseReasonForCare
Title: "Condition - an example diagnosis with an adverse effect."
Description: "An example of a diagnosis using the FiBaseReasonForCare profile. This diagnosis demonstrates a case that has an adverse effect."
Usage: #example
* id = "id-for-diagnosis-3"
* category[0].coding.system = #http://terminology.hl7.org/CodeSystem/condition-category
* category[0].coding.code = #encounter-diagnosis

* subject = Reference(PatientOfMunicipality)
* code.coding.system = #urn:oid:1.2.246.537.6.1.1999
* code.coding.code = #T81.9
* code.coding.display = "Määrittämätön toimenpidekomplikaatio"
* code.text = "Määrittämätön toimenpidekomplikaatio"

* onsetDateTime = "2023-01-05T02:06:24+03:00"

* clinicalStatus.coding.code = #active
* clinicalStatus.coding.system = #http://terminology.hl7.org/CodeSystem/condition-clinical

* extension[PrimaryCondition].valueCoding.system = #urn:oid:1.2.246.537.5.40005.2003
* extension[PrimaryCondition].valueCoding.code = #SIVU
* extension[PrimaryCondition].valueCoding.display = "Sivudiagnoosi tai toissijainen toimenpide"

* extension[Permanence].valueCoding.system = #urn:oid:1.2.246.537.5.40003.2003
* extension[Permanence].valueCoding.code = #KER
* extension[Permanence].valueCoding.display = "Kertaluonteinen"

* extension[ConditionExternalCause].valueCoding.system = #urn:oid:1.2.246.537.6.1.1999
* extension[ConditionExternalCause].valueCoding.code = #Y60.0
* extension[ConditionExternalCause].valueCoding.display = "Leikkauksen yhteydessä vahingossa syntynyt haava, punktio, perforaatio tai verenvuoto"

* extension[CauseOfAdverseEffect].valueCoding.system = #urn:oid:1.2.246.537.6.2.2007
* extension[CauseOfAdverseEffect].valueCoding.code = #JAB10
* extension[CauseOfAdverseEffect].valueCoding.display = "Nivustyrän korjaus"
