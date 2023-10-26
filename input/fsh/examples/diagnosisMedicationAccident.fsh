Instance: DiagnosisMedicationAccident
InstanceOf: FiBaseReasonForCare
Title: "Condition - an example diagnosis with external cause, accident and medication information."
Description: "An example of a diagnosis using the FiBaseReasonForCare profile. This diagnosis demonstrates a case that has external cause, accident and medication information."
Usage: #example
* id = "id-for-diagnosis-2"
* category.coding = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis

* subject = Reference(PatientOfMunicipality)
* code.coding = urn:oid:1.2.246.537.6.1|1999#T88.7 "Määrittämätön lääkeaineen epäedullinen vaikutus"
* code.text = "Määrittämätön lääkeaineen epäedullinen vaikutus"

* onsetDateTime = "2023-01-05T02:06:24+03:00"

* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#active

* extension[PrimaryCondition].valueCoding = urn:oid:1.2.246.537.5.40005|2003#PAA "Päädiagnoosi tai päätoimenpide"

* extension[Permanence].valueCoding = urn:oid:1.2.246.537.5.40003|2003#KER "Kertaluonteinen"

* extension[ConditionExternalCause].valueCoding = urn:oid:1.2.246.537.6.1|1999#X44 "Lääkkeiden tai lääkkeenomaisten aineiden aiheuttama myrkytystapaturma tai muu altistuminen"

* extension[ConditionCategorizationOfAccident].valueCoding = urn:oid:1.2.246.537.6.1|1999#Y95.0 "Tapaturma sairaalassa tai sairaalaoloihin liittyvä ulkoinen tekijä"

* extension[ConditionCausedByMedication].valueCoding = urn:oid:1.2.246.537.6.32|2007#M01AE01 "BURANA 200 mg tabletti, kalvopäällysteinen"
