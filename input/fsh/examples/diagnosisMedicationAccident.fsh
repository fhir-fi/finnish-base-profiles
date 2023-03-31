Instance: DiagnosisMedicationAccident
InstanceOf: FiBaseCondition
Title: "Condition - an example diagnosis with external cause, accident and medication information."
Description: "An example of a diagnosis using the FiBaseCondition pofile. This diagnosis demonstrates a case that has external cause, accident and medication information."
Usage: #example
* id = "id-for-diagnosis-2"
* category[0].coding.system = #https://hl7.fi/fhir/finnish-base-profiles/CodeSystem/fi-base-condition-category
* category[0].coding.code = #reason-for-visit

* category[1].coding.system = #http://terminology.hl7.org/CodeSystem/condition-category
* category[1].coding.code = #encounter-diagnosis

* subject = Reference(PatientOfMunicipality)
* code.coding.system = #1.2.246.537.6.1.1999
* code.coding.code = #T88.7
* code.coding.display = "Määrittämätön lääkeaineen epäedullinen vaikutus"
* code.text = "Määrittämätön lääkeaineen epäedullinen vaikutus"

* onsetDateTime = "2023-01-05T02:06:24+03:00"
* clinicalStatus = #active

* extension[PrimaryCondition].valueCoding.system = #urn:oid:1.2.246.537.5.40005.2003
* extension[PrimaryCondition].valueCoding.code = #PAA
* extension[PrimaryCondition].valueCoding.display = "Päädiagnoosi tai päätoimenpide"

* extension[Permanence].valueCoding.system = #urn:oid:1.2.246.537.5.40003.2003
* extension[Permanence].valueCoding.code = #KER
* extension[Permanence].valueCoding.display = "Kertaluonteinen"

* extension[ConditionExternalCause].valueCoding.system = #1.2.246.537.6.1.1999
* extension[ConditionExternalCause].valueCoding.code = #X44
* extension[ConditionExternalCause].valueCoding.display = "Lääkkeiden tai lääkkeenomaisten aineiden aiheuttama myrkytystapaturma tai muu altistuminen"

* extension[ConditionCategorizationOfAccident].valueCoding.system = #1.2.246.537.6.1.1999
* extension[ConditionCategorizationOfAccident].valueCoding.code = #Y95.0
* extension[ConditionCategorizationOfAccident].valueCoding.display = "Tapaturma sairaalassa tai sairaalaoloihin liittyvä ulkoinen tekijä"

* extension[ConditionCausedByMedication].valueCoding.system = #1.2.246.537.6.32.2007
* extension[ConditionCausedByMedication].valueCoding.code = #M01AE01
* extension[ConditionCausedByMedication].valueCoding.display = "BURANA 200 mg tabletti, kalvopäällysteinen"
