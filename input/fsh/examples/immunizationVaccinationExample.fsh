Instance: ImmunizationVaccinationExample
InstanceOf: FiBaseImmunization
Description: "Vaccination for TBE."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:1.3.6.1.4.1.21367.2005.3.7.1234"
* status = #completed
* vaccineCode = urn:oid:1.2.246.537.6.32.2007#J07BA01
* vaccineCode.text = "Inaktivoitu puutiaisaivotulehdusrokote (koko virus)"
* patient = Reference(PatientOfMunicipality)
* encounter = Reference(EncounterPalvelutapahtuma)
* occurrenceDateTime = "2023-01-10"
* primarySource = false
* location = Reference(LocationExample)
* manufacturer = Reference(Organization/hl7)
* expirationDate = "2025-02-15"
* site.coding[Vaccination-site]
  * system = #urn:oid:1.2.246.537.6.110.2007
  * code = #OO
* route.coding[Vaccination-route]
  * system = #urn:oid:1.2.246.537.6.111.2007
  * code = #IM
* doseQuantity = 5 'mg'
* protocolApplied.targetDisease.coding
  * system = #urn:oid:1.2.246.537.6.609.201501
  * code = #TBE
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 3
* performer[+].function = http://terminology.hl7.org/CodeSystem/v2-0443#AP
* performer[=].actor = Reference(PractitionerLicensedPhysician)
* reasonCode = http://snomed.info/sct#429060002
* extension[vaccinationRecorder].valueReference = Reference(Practitioner/1)