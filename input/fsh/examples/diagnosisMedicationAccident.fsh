Instance: DiagnosisMedicationAccident
InstanceOf: FiBaseReasonForCare
Title: "Condition - an example diagnosis with external cause, accident and medication information."
Description: "An example of a diagnosis using the FiBaseReasonForCare profile. This diagnosis demonstrates a case that has external cause, accident and medication information."
Usage: #example
* id = "id-for-diagnosis-2"
* category[0].coding.system = #http://terminology.hl7.org/CodeSystem/condition-category
* category[0].coding.code = #encounter-diagnosis

* subject = Reference(PatientOfMunicipality)
* code.coding.system = #urn:oid:1.2.246.537.6.1.1999
* code.coding.code = #T88.7
* code.coding.display = "Määrittämätön lääkeaineen epäedullinen vaikutus"
* code.text = "Määrittämätön lääkeaineen epäedullinen vaikutus"

* onsetDateTime = "2023-01-05T02:06:24+03:00"

* clinicalStatus.coding.code = #active
* clinicalStatus.coding.system = #http://terminology.hl7.org/CodeSystem/condition-clinical

* extension[PrimaryCondition].valueCoding.system = #urn:oid:1.2.246.537.5.40005.2003
* extension[PrimaryCondition].valueCoding.code = #PAA
* extension[PrimaryCondition].valueCoding.display = "Päädiagnoosi tai päätoimenpide"

* extension[Permanence].valueCoding.system = #urn:oid:1.2.246.537.5.40003.2003
* extension[Permanence].valueCoding.code = #KER
* extension[Permanence].valueCoding.display = "Kertaluonteinen"

* extension[ConditionExternalCause].valueCoding.system = #urn:oid:1.2.246.537.6.1.1999
* extension[ConditionExternalCause].valueCoding.code = #X44
* extension[ConditionExternalCause].valueCoding.display = "Lääkkeiden tai lääkkeenomaisten aineiden aiheuttama myrkytystapaturma tai muu altistuminen"

* extension[ConditionCategorizationOfAccident].valueCoding.system = #urn:oid:1.2.246.537.6.1.1999
* extension[ConditionCategorizationOfAccident].valueCoding.code = #Y95.0
* extension[ConditionCategorizationOfAccident].valueCoding.display = "Tapaturma sairaalassa tai sairaalaoloihin liittyvä ulkoinen tekijä"

* extension[ConditionCausedByMedication].valueCoding.system = #urn:oid:1.2.246.537.6.32.2007
* extension[ConditionCausedByMedication].valueCoding.code = #M01AE01
* extension[ConditionCausedByMedication].valueCoding.display = "BURANA 200 mg tabletti, kalvopäällysteinen"
