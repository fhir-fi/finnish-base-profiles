Instance: MedicationStatementInsulin
InstanceOf: FiBaseMedicationStatement
Title: "Simple medication statement example"
Description: "Patient states they are taking long acting insulin (Lantus), but not the amount."
Usage: #example
* id = "medication-statement-insulin"
* medicationCodeableConcept
  * coding[0] = http://snomed.info/sct#411529005 "Insulin glargine"
  * coding[+] = http://www.whocc.no/atc#A10AE04 "insulin glargine"
  * text = "Insulin glargine (Lantus)"
* status = #active
* subject = Reference(PatientOfMunicipality)
* effectiveDateTime = "2023-07-22"
* informationSource = Reference(PatientOfMunicipality)
